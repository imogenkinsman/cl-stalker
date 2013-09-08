class ListingMailer < ActionMailer::Base
  default from: ENV['DEFAULT']

  def new_listing(listing)
    @listing = listing
    mail(to: ENV['RECIPIENT'], subject: "New CL Post: #{@listing.description}")
  end
end