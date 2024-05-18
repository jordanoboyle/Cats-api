class Cat < ApplicationRecord

  def metric_wt
    met_wt = (weight || 0) * 0.45  # always account for a nil class in your calculations
    return met_wt
  end 

  def tax
    tax_rate = 0.11
    tax_total = price * tax_rate
    return tax_total
  end

  def total_price
    total = price + tax
    return total
  end
end
