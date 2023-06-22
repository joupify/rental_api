class ListingsController < ApplicationController
  before_action: :set_listing, only:[:show, :update, :destroy]

  def index
    @listings = Listing.all
    render json {listings: listings}
  end

  def show
    render json: { listing: @listing }
  end

  def create
    listing = Listing.create(listing_params)
    if listing.save
      render json: { listing: listing }, status: created
    else
      render json: { error: listing.errors.full.messages}, status: :entity_unprocessable
    end

  end

  def update
    if @listing.update(listing_params
      render json: { listing: @listing }, status: updated
    else
      render json: { error: @listing.errors.full.messages}, status: :entity_unprocessable
    end
  end

  def destroy
    @listing.destroy
  end


  private

    def set_listing
      @listing = Listing.find(params[:id])
    end

    def listing_params
      params.require(:listing).permit(:num_rooms)
    end

end
