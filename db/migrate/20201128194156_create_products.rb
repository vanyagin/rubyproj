class CreateProducts < ActiveRecord::Migration[6.0]
  def change

    create_table :categories do |t|
      t.string :name, null: false
    end

    create_table :producers do |t|
      t.string :name, null: false
      t.string :country
    end

    create_table :products do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.string :description
      t.integer :quantity, null: false
      t.references :category
      t.references :producer
      t.timestamps
    end
  end
end
