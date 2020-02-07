class DishesController < ApplicationController
  def index
    @dishes = Dish.all
    @breakfasts = Dish.where(category: 'Breakfast')
    @lunches = Dish.where(category: 'Lunch')
    @dinners = Dish.where(category: 'Dinner')
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def new
  end

  def create
    @dish = Dish.new(dish_params)
    @dish.save
    redirect_to [:dishes]
  end

  def edit; end

  def update
    if @dish.update(dish_params)
      redirect_to  @dish, notice: 'Dish was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
   
    redirect_to dishes_path
  end

  private

  def dish_params
    params.require(:dish).permit(:title, :description, :category, :duration)
  end
end
