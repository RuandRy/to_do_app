class CreateToDos < ActiveRecord::Migration
  def change
    create_table :to_dos do |t|
      t.string :task_name
      t.date :due_on
      t.integer :row_order

      t.timestamps null: false
    end
  end
end
