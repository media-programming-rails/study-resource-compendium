class Resource < ActiveRecord::Base
	belongs_to :category
	belongs_to :user
	
	has_attached_file :file
	
	validates_attachment_content_type :file, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']
end
