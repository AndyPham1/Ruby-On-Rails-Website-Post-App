class Pin < ActiveRecord::Base
	validates :title, presence: true
end
