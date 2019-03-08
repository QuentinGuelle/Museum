class CreateBlackandwhites < ActiveRecord::Migration[5.2]
  def change
    create_table :blackandwhites do |t|

      t.timestamps
    end
  end
end
