class ListingsController < ApplicationController
  def create
    @listing = Listing.create(listing_params)
    ListingMailer.deliver_new_listing(@listing)
  end

  private

  def listing_params
    params.require(:listing).permit(:post_id, :price, :description, :content, :url)
  end
end