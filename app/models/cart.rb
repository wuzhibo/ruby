# == Schema Information
# Schema version: 20110412060544
#
# Table name: carts
#
#  id         :integer(4)      not null, primary key
#  cart_no    :string(255)
#  cart_date  :datetime
#  created_at :datetime
#  updated_at :datetime
#

class Cart < ActiveRecord::Base
end
