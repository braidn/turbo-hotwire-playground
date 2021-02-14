class AddCaseAssociationToExterior < ActiveRecord::Migration[6.1]
  def change
    add_reference(:watch_exteriors, :watch_cases)
  end
end
