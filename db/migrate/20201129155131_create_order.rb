class CreateOrder < ActiveRecord::Migration[6.0]
  def change

    create_table :buyers do |t|
      t.string :name, null: false
      t.string :phone, null: false
      t.string :mail, null: false
    end

    create_table :orders do |t|
      t.references :product
      t.references :buyer
      t.integer :quantity, null: false
      t.string :comment
      t.string :payment, null: false
    end
  end
end
