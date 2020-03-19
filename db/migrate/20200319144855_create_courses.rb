class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.float :amount_hours
      t.float :price
      t.date :start_date
      t.date :end_date
      t.integer :teacher_id

      t.timestamps
    end
  end
end
