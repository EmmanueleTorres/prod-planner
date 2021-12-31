class CreateLots < ActiveRecord::Migration[6.1]
  def change
    create_table :lots do |t|
      t.integer :lot
      t.float :weight
      t.string :measure_unit
      t.float :yield
      t.references :raw_material, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
