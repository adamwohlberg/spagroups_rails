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
#

require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
