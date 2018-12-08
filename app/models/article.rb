class Article < ApplicationRecord
	belongs_to :author
	
	belongs_to :category
	
	validates :title, presence:true,length: { minimum: 6 }

	validates :title,presence:true,uniqueness: { model: Article}

	validates :category,presence:true

	validates :description,presence:true, length:{minimum:10}

	validates :author,presence:true

	validates :title, format: { with: /\A[a-zA-Z _]+\z/,
    message: "Only letters allowed" }

    after_destroy :log_destroy_action

    def log_destroy_action

    	puts 'Article is deleted'
    end
	after_create :log_created_action

	def log_created_action
		puts 'Article created'
    	self.status ='success'
    	self.save!
    end

	after_update :log_updated_action

	def log_updated_action

    	puts  'Article is updated'
    	self.status ='updated'
			
    end
end
	