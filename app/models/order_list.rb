# == Schema Information
# Schema version: 20110412060544
#
# Table name: order_lists
#
#  id         :integer(4)      not null, primary key
#  order_no   :string(255)
#  order_date :date
#  state      :integer(4)
#  user_id    :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class OrderList < ActiveRecord::Base
end
