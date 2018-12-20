class Article < ApplicationRecord
	validates :title, presence:true,length: { minimum: 5 }
  validates :title,presence:true
  validates :category,presence:true
  validates :description,presence:true, length:{minimum:10}
  validates :author,presence:true
  validates :nopages,presence:true
  validates :title, :presence => true, format: { with: /\A[a-zA-Z _]+\z/,
    message: "Only alphabets allowed" }

  has_attached_file :image, styles: {
       thumb: '100x100>',
       square: '200x200#',
       medium: '350x350>',
       pdf_preview: '600x600>'}, processors: [:thumbnail]
 validates_attachment :image, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)},
 attachment_size: { less_than: 5.megabytes }


  has_attached_file :file
  validates_attachment_content_type :file,   content_type: [
    "application/pdf", "application/msword", 
    "application/vnd.openxmlformats-officedocument.wordprocessingml.document", 
    "application/vnd.oasis.opendocument.text",
    "application/vnd.ms-excel",
    "application/vnd.ms-office",
    "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
    "application/vnd.oasis.opendocument.spreadsheet"
   ]

  belongs_to :author
	belongs_to :category
  has_and_belongs_to_many :readers

  scope :published, ->{where(checkbox:true)}

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
	