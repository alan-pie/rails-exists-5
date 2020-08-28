class CreateFoos < ActiveRecord::Migration[5.2]
  def change
    create_table :foos, id: :uuid, default: 'gen_random_uuid()' do |t|

      t.timestamps
    end
  end
end
