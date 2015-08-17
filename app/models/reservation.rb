# == Schema Information
#
# Table name: reservations
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  spa_id         :integer
#  arrival_date   :date
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  first_name     :string(255)
#  email          :string(255)
#  nights         :integer
#  date_range     :string(255)
#  status         :string(255)      default("pending")
#  guests         :integer
#  departure_date :date
#  booked_date    :date             not null
#

class Reservation < ActiveRecord::Base
	belongs_to :spa
	belongs_to :user
	has_many :reservation_dates
	# validates_presence_of :arrival_date
	scope :pending, -> { where(status: 'pending') }
	scope :confirmed, -> { where(status: 'confirmed') }
	scope :deposit_paid, -> { where(status: 'deposit_paid') }

	# before_save :calculate_departure_date

	private

	# def calculate_departure_date
	# 	self.departure_date = self.arrival_date + nights
	# end
end
