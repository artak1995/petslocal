class PetsController < ApplicationController
  before_action :set_pet, only: [:show]

  def create
    @pet = Pet.create!(pets_params)
    json_response(@pet, :created)
  end

  def show
    json_response(@pet)
  end

  def destroy
    @pet.destroy
    head :no_content
  end

  private

  def pets_params
    params.permit(:name, :available_from, :age, :species, :breed)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end

end
