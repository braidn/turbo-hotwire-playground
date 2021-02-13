class CreateWatchMovements < ActiveRecord::Migration[6.1]
  def change
    create_table :watch_movements do |t|
      t.string :caliber
      t.string :movement
      t.decimal :power_reserve
      t.decimal :accuracy

      t.timestamps
    end
  end
end
