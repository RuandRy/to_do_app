class AddPriorityToTasks < ActiveRecord::Migration
  def change
    add_column :to_dos, :priority, :integer
  end
end
