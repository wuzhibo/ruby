# == Schema Information
# Schema version: 20110412060544
#
# Table name: shipments
#
#  id         :integer(4)      not null, primary key
#  address    :string(255)
#  city_id    :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class Shipment < ActiveRecord::Base
end
