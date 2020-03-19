class CreateAlumns < ActiveRecord::Migration[5.2]
  def change
    create_table :alumns do |t|
      t.string :name
      t.string :surname
      t.date :birth_date
      t.string :address
      t.string :email
      t.string :phone
      t.integer :identification_number

      t.timestamps
    end
  end
end
