class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email,      null: false, default: ""
      t.string :password,   null: false, default: ""
      t.string :username,   null: false, default: ""
      t.string :first_name, null: false, default: ""
      t.string :last_name,  null: false, default: ""

      t.boolean :admin,     null: false, default: false

      t.timestamps
    end
  end
end
