class DropDetails < ActiveRecord::Migration[6.1]
  def change
    drop_table(:watch_details)
  end
end
