class Profile < ApplicationRecord
	belongs_to :author
	validates :phone, presence:true
	validates :email, presence:true,uniqueness:true
end
