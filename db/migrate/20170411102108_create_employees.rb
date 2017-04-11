class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :address
      t.integer :contact
      t.string :email
      t.string :username

      t.timestamps
    end
  end
end
