# == Schema Information
#
# Table name: group_leaders
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GroupLeader < ActiveRecord::Base

end
