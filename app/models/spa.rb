# == Schema Information
#
# Table name: spas
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  city       :string(255)
#  state      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Spa < ActiveRecord::Base
	has_many :group_trips

	has_many :reservations

	has_many :registrations, :dependent => :destroy
	has_many :confirmations, :dependent => :destroy

	def name_with_city
    "#{name}:  #{city} - #{state}"
  end

end
