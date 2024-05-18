class Cat < ApplicationRecord

  def metric_wt
    met_wt = weight * .45
    return met_wt
  end 
end
