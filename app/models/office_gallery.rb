class OfficeGallery < ApplicationRecord
# has_attached_file :image, styles: { medium: "250x250>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
#   	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	mount_uploader :image, OfficeImageUploader
end
