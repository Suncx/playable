class Report < ActiveRecord::Base
  belongs_to :user, :counter_cache => true
end
# == Schema Information
#
# Table name: reports
#
#  id           :integer         not null, primary key
#  user_id      :integer
#  plan         :text
#  goal         :text
#  content      :text
#  score        :integer
#  created_at   :datetime
#  updated_at   :datetime
#  current_date :datetime
#

