class CatsController < ApplicationController

  def create
    @cat = Cat.create(
      name: params[:name],
      color: params[:color],
      weight: params{:weight},
      price: params[:price],
    )
    render template: "cats/show"
  end

  def index
    @cats = Cat.all 
    render template: "cats/index"
  end

  def show
    @cat = Cat.find_by(id: params[:id]) 
    render template: "cats/show"
  end

  def update
    @cat = Cat.update(
      name: params[:name] || @cat.name,
      color: params[:color] || @cat.color,
      weight: params[:weight] || @cat.weight,
      price: params[:price] || @cat.price,
    )
    render template: "cats/show"
  end
end
