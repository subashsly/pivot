class AddImageToGallery < ActiveRecord::Migration[5.0]
  def change
  	add_column :student_galleries, :image, :string
  	add_column :office_galleries, :image, :string
  end
end
