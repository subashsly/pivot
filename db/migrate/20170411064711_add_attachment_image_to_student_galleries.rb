class AddAttachmentImageToStudentGalleries < ActiveRecord::Migration
  def self.up
    change_table :student_galleries do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :student_galleries, :image
  end
end
