class Image < ActiveRecord::Base
	belongs_to :section

	has_attached_file :photo, :styles => { :medium => "300x300", :large => "600x600"},
		:path => ":rails_root/public/assets/images/:id/:filename",
		:url => "/assets/images/:id/:filename"

	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end