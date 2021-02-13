class CreateWatches < ActiveRecord::Migration[6.1]
  def change
    create_table :watches do |t|
      t.string :manufacturer
      t.string :reference
      t.date :purchase_date
      t.float :price

      t.timestamps
    end
  end
end
