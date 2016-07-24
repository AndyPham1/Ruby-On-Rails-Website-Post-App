class Pin < ActiveRecord::Base
	validates :title,:description, presence: true
	validates :title, length: {minimum: 2, maximum: 100}
	belongs_to :user
	mount_uploader :pix, PixUploader
	acts_as_votable
end
