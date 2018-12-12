class Author < ApplicationRecord
	has_many :articles
	has_one :profile
	accepts_nested_attributes_for :profile
	validates :name, presence:true
	
end
