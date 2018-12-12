class Profile < ApplicationRecord
	belongs_to :author
	validates :phone, presence:true,uniqueness:true
	validates :email, presence:true,uniqueness:true
end
