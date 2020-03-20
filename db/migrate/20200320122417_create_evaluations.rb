class CreateEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluations do |t|
      t.string :name
      t.string :content
      t.float :result
      t.integer :alumn_id

      t.timestamps
    end
  end
end
