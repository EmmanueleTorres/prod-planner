class Lot < ApplicationRecord
  belongs_to :raw_material
  belongs_to :category
end
