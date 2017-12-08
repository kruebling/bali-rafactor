class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :price, :decimal
      t.column :description, :text

      t.timestamps
    end
  end
end
