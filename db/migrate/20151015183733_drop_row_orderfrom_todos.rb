class DropRowOrderfromTodos < ActiveRecord::Migration
  def change
    remove_column :to_dos, :row_order, :integer
  end
end
