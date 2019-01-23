class UnicornsController < ApplicationController
  before_action :set_unicorn, only: [:show, :edit, :update, :destroy]
  def index
    @unicorns = Unicorn.all
  end
  def show
  end
  def new
    @unicorn = Unicorn.new
  end
  def edit
  end
  def create
    @unicorn = Unicorn.new(unicorn_params)

    if @unicorn.save
      redirect_to @unicorn
    else
      redirect_to new_unicorn_path
    end
  end
  def update
    if @unicorn.update(unicorn_params)
      redirect_to @unicorn
    end
  end
  def destroy
    @unicorn.destroy
    redirect_to unicorns_url
  end

  private
    def set_unicorn
      @unicorn = Unicorn.find(params[:id])
    end

    def unicorn_params
      params.require(:unicorn).permit(:name, :color, :is_white)
    end
end
