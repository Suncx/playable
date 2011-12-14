class Category < ActiveRecord::Base
	has_many :posts
end
# == Schema Information
#
# Table name: categories
#
#  id         :integer         not null, primary key
#  code       :integer
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#
