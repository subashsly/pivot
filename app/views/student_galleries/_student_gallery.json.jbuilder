json.extract! student_gallery, :id, :faculty, :postion, :college, :working_in, :created_at, :updated_at
json.url student_gallery_url(student_gallery, format: :json)
