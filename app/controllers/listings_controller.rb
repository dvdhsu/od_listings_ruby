class ListingsController < ApplicationController
  before_action :set_listing, only: [:show]

  def index
    @listings = Listing.all
    render json: {
      type: "FeatureCollection",
      features: ActiveModel::ArraySerializer.new(@listings, each_serializer: ListingSerializer),
    }
  end

  def show
    render json: @listing, serializer: ListingSerializer, root: false
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params["id"])
    end
end
