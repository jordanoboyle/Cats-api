class CatsController < ApplicationController

  def create
    @cat = Cat.create(
      name: "Quin",
      color: "tortoise",
      weight: 12,
      price: 8,
    )
    render template: "cats/show"
  end

  def index
    @cats = Cat.all 
    render template: "cats/index"
  end
end
