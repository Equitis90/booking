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
      comment = comment_parameters[:comments_attributes]
      comment[:placement_id] = placement.id
      Comment.create!(comment)
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
    params.require(:placement).permit(:comments_attributes => [:text, {images: []}])
  end
end
