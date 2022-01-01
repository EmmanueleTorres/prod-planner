class Lot < ApplicationRecord
  belongs_to :raw_material

  def lot_yield
    rend = self.final_weight / self.initial_weight
    return "#{rend.round(2)} %"
  end
end
