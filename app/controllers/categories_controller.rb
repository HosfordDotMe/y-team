class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.name = params[:category][:name]
    @category.cat_type = params[:category][:cat_type]
    @category.description = params[:category][:description]
    @category.save

    flash[:success] = @category.name + " has been updated"
    redirect_to action: "index"
  end

  def edit
    @category = Category.find(params[:id])
    puts @category.cat_type
  end

  def create
    @category = Category.new(user_params)
    @category.enabled = 1
    @category.save

    flash[:success] = @category.name + " has been added"
    redirect_to action: "index"
  end

  def new
    @category = Category.new
  end  

  private
  def user_params
    params.require(:category).permit(:name, :cat_type, :description)
  end

end
