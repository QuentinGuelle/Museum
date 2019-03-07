class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.text :description
      t.string :settings
      t.string :season
      t.string :location

      t.timestamps
    end
  end
end
