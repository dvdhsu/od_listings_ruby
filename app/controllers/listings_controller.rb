class ListingsController < ApplicationController
  include ListingHelper

  before_action :set_listing, only: [:show]
  after_action only: [:index] { set_pagination_header(:listings) }

  def index
    query = to_query params
    @listings = Listing.where(query).page params["page"]
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
