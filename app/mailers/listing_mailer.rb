class ListingMailer < ActionMailer::Base
  default from: ENV['default']

  def new_listing(listing)
    @listing = listing
    mail(to: ENV['recipient'], subject: "New CL Post: #{@listing.description}")
  end
end