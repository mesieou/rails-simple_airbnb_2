class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update]
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    save('created')
  end

  def show; end
  def edit; end

  def update
    @flat.update(flat_params)
    save('updated')
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end

  private

  def save(word)
    if @flat.save
      flash[:success] = "Flat was succesfully #{word}."
      redirect_to flat_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def flat_params
    params.require(:flat).permit(:name, :price_per_night, :address, :number_of_guests, :description)
  end
end
