class HasAndBelongsToJoinsForMovementsAndFunctons < ActiveRecord::Migration[6.1]
  def change
    create_join_table :watch_cases, :watch_movements
    create_join_table :watch_cases, :watch_functions
  end
end
