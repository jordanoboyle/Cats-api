class Cat < ApplicationRecord

  def metric_wt
    met_wt = weight * 0.45
    return met_wt
  end 

  def tax
    tax_rate = 0.11
    tax_total = price * tax_rate
    return tax_total
  end
end
