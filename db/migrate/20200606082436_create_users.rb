class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|

      t.string :email, null: false, default: ""
      t.string :name, null: false, default: ""
      t.string :uid
      t.string :avatar_url
      t.string :type
      t.timestamps null: false
    end

    add_index :users, :email, unique: true
  end
end
