class CreateBars < ActiveRecord::Migration[5.2]
  def change
    create_table :bars, id: :uuid, default: 'gen_random_uuid()' do |t|

      t.timestamps
    end
  end
end
