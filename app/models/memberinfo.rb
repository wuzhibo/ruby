# == Schema Information
# Schema version: 20110412060544
#
# Table name: memberinfos
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  password   :string(255)
#  salt       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Memberinfo < ActiveRecord::Base
end
