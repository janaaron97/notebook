class Welcome < ActiveRecord::Base
  belongs_to :user
  has_many :docs
end
