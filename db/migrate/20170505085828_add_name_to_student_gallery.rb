class AddNameToStudentGallery < ActiveRecord::Migration[5.0]
  def change
  	add_column :student_galleries, :name, :string
  end
end
