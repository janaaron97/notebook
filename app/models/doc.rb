class Doc < ActiveRecord::Base
	belongs_to :user
	belongs_to :welcome
	has_many :comments
end
