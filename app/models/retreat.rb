# == Schema Information
#
# Table name: retreats
#
#  id              :integer          not null, primary key
#  arrival_date    :date
#  spa_id          :integer
#  group_leader_id :integer
#  name            :string(255)
#  registered      :integer
#  confirmed       :integer
#  group_rates_at  :integer          default(8)
#  comp_stay_at    :integer          default(12)
#  facebook_url    :string(255)
#  image           :string(255)
#  facebook_image  :string(255)
#  description     :text(65535)
#  paypal          :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Retreat < ActiveRecord::Base
	belongs_to :spa
end
