class Article < ApplicationRecord

	validates :title, presence:true,length: { minimum: 6 }

	validates :title,presence:true,uniqueness: { model: Article}

	validates :category,presence:true

	validates :description,presence:true, length:{minimum:10}

	validates :author,presence:true

	validates :title, format: { with: /\A[a-zA-Z _]+\z/,
    message: "Only letters allowed" }




    belongs_to :author

end
	