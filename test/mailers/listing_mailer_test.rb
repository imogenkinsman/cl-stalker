require 'test_helper'

class ListingMailerTest < ActionMailer::TestCase
  tests ListingMailer

  def test_listing_email
    listing = Listing.find_by post_id: 1
    ListingMailer.new_listing(listing)
    assert_equal false, ActionMailer::Base.deliveries.empty?
  end
end