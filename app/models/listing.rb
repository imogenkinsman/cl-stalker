
# == Schema Information
#
# Table name: listings
#
#  id          :integer          not null, primary key
#  post_id     :integer
#  price       :integer
#  description :text
#  datetime    :datetime
#  created_at  :datetime
#  updated_at  :datetime
#

class Listing < ActiveRecord::Base
end