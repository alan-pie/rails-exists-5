class AddDefaultBarToFoo < ActiveRecord::Migration[5.2]
  def change
    create_table :bars_foos do |t|
      t.timestamps
    end

    add_column :bars_foos, :bar_id, :uuid, null: false
    add_column :bars_foos, :foo_id, :uuid, null: false
    add_index :bars_foos, [:foo_id,:bar_id], name: 'foo_bars_index'
    add_index :bars_foos, [:bar_id, :foo_id], name: 'bar_foos_index'

    add_column :bars, :default_foo_id, :uuid
    add_index :bars, [:default_foo_id], name: 'foos_index_default_bar'

  end
end
