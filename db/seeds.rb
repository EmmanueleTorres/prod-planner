require "faker"

puts "borrando base de datos"

Lot.destroy_all
RawMaterial.destroy_all
Category.destroy_all

puts "creando materias primas"

aji_verde = RawMaterial.create!(name: "Aji verde")
aji_rojo = RawMaterial.create!(name: "Aji rojo")
tomate = RawMaterial.create!(name: "Tomate")
pepino = RawMaterial.create!(name: "Pepino")
pimiento = RawMaterial.create!(name: "Pimiento")

puts "creando categorias"

aderezo = Category.create!(name: "Aderezo")
conserva = Category.create!(name: "Conserva")

puts "creando lotes"

lot_id = 0

if Lot.all.empty?
  lot_id = 1001
else
  lot_id = Lot.all.last.id + 1001
end

10.times do
  puts "creando lote #{lot_id}"
  Lot.create!(
    lot: lot_id, 
    raw_material_id: RawMaterial.all.sample.id, 
    category_id: Category.all.sample.id, 
    weight: Faker::Number.between(from: 1, to: 10), 
    measure_unit: "Kg", 
    yield: Faker::Number.between(from: 1, to: 10)
    )
    lot_id += 1
end