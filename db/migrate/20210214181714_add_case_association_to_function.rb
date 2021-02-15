class AddCaseAssociationToFunction < ActiveRecord::Migration[6.1]
  def change
    add_reference(:watch_functions, :watch_cases)
  end
end
