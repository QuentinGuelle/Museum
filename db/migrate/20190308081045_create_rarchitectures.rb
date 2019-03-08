class CreateRarchitectures < ActiveRecord::Migration[5.2]
  def change
    create_table :rarchitectures do |t|
      t.text :description
      t.string :link
      t.string :location

      t.timestamps
    end
  end
end
