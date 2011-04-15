# == Schema Information
# Schema version: 20110412060544
#
# Table name: products
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Product < ActiveRecord::Base
end
