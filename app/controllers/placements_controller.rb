class PlacementsController < ApplicationController
  before_action :authorize, except: [:index, :show]

  def index
    @placements = Placement.all
  end

  def new
    @placement = Placement.new
  end

  def create
    ActiveRecord::Base.transaction do
      placement = Placement.create!(placement_paramenters)
      placement.comments.create!(comment_parameters)
    end
    redirect_to placements_path
  rescue ActiveRecord::RecordInvalid => e
    flash[:danger] = e.to_s
    redirect_to new_placement_path
  end

  def show
    @placement = Placement.joins(:comments).find(params[:id])
  end

  private

  def placement_paramenters
    params.require(:placement).permit(:title, :price, :address)
  end

  def comment_parameters
    params.require(:placement).require(:comments_attributes).permit(:text, {images: []})
  end
end
