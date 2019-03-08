class CreateRblackandwhites < ActiveRecord::Migration[5.2]
  def change
    create_table :rblackandwhites do |t|
      t.text :description
      t.string :link
      t.string :location

      t.timestamps
    end
  end
end
