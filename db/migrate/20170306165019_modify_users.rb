class ModifyUsers < ActiveRecord::Migration[5.0]
  def change
    add_index :users, :name, unique: true, name: 'name-index'
  end
end
