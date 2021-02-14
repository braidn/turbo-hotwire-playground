class CreateWatchCases < ActiveRecord::Migration[6.1]
  def change
    create_table :watch_cases do |t|
      t.string :manufacturer
      t.string :reference
      t.date :purchase_date
      t.float :price

      t.timestamps
    end
  end
end
