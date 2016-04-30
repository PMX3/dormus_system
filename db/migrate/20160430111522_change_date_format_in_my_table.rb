class ChangeDateFormatInMyTable < ActiveRecord::Migration
  def change
  end
   def up
    change_column :my_table, :my_column, :datetime
  end

  def down
    change_column :my_table, :my_column, :date
  end
end
