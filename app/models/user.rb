# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
	has_many :registrations
	has_many :group_trips, through: :confirmations
	
	has_many :confirmations
	has_many :group_trips, through: :registrations

end
