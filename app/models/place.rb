class Place < ApplicationRecord
	belongs_to :user
	has_many :comments
	has_many :captions
	has_many :photos
	
	geocoded_by :address
	after_validation :geocode
	
	validates :name, presence: true, length: { maximum: 140, minimum: 3 }
	validates :address, presence: true,  length: { maximum: 250, minimum: 3 }
	validates :description, presence: true, length: { maximum: 300, minimum: 3 }

	validates :name, presence: true
end
