class CreateProducts < ActiveRecord::Migration[6.0]
  def change

    create_table :categories do |t|
      t.string :name
    end

    create_table :producers do |t|
      t.string :name
      t.string :country
    end

    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.references :categories
      t.references :producers
      t.timestamps
    end
  end
end
