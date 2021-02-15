class AddCaseAssociationToMovement < ActiveRecord::Migration[6.1]
  def change
    add_reference(:watch_movements, :watch_cases)
  end
end
