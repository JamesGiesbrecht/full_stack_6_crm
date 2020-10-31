class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.text :notes

      t.timestamps
    end
  end
end
