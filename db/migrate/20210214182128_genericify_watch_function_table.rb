class GenericifyWatchFunctionTable < ActiveRecord::Migration[6.1]
  def change
    rename_column(:watch_functions, :water_resist, :name) 
    rename_column(:watch_functions, :magnetic_resist, :description)
    add_column(:watch_functions, :measurement, :string)
    add_column(:watch_functions, :amount, :decimal)
  end
end
