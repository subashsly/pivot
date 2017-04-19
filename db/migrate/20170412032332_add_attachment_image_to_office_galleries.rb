class AddAttachmentImageToOfficeGalleries < ActiveRecord::Migration
  def self.up
    change_table :office_galleries do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :office_galleries, :image
  end
end
