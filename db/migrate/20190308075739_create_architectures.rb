class CreateArchitectures < ActiveRecord::Migration[5.2]
  def change
    create_table :architectures do |t|

      t.timestamps
    end
  end
end
