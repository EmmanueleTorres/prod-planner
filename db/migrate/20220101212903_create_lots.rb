class CreateLots < ActiveRecord::Migration[6.1]
  def change
    create_table :lots do |t|
      t.integer :lot_number
      t.float :initial_weight
      t.string :measure_unit
      t.float :final_weight
      t.references :raw_material, null: false, foreign_key: true

      t.timestamps
    end
  end
end
