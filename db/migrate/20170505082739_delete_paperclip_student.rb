class DeletePaperclipStudent < ActiveRecord::Migration[5.0]
  def change
    remove_attachment :student_galleries, :image 
    remove_attachment :office_galleries, :image
  end

 
end

