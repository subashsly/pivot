class CreateOfficeGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :office_galleries do |t|
      t.string :title

      t.timestamps
    end
  end
end
