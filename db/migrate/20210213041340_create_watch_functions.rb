class CreateWatchFunctions < ActiveRecord::Migration[6.1]
  def change
    create_table :watch_functions do |t|
      t.string :water_resist
      t.string :magnetic_resist

      t.timestamps
    end
  end
end
