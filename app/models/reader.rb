class Reader < ApplicationRecord
	has_and_belongs_to_many :articles
end
