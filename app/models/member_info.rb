# == Schema Information
# Schema version: 20110412060544
#
# Table name: member_infos
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  password   :string(255)
#  street_id  :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class MemberInfo < ActiveRecord::Base
end
