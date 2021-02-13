class CreateWatchExteriors < ActiveRecord::Migration[6.1]
  def change
    create_table :watch_exteriors do |t|
      t.string :material
      t.string :glass
      t.string :glass_coating
      t.string :size
      t.string :clasp_type

      t.timestamps
    end
  end
end
