json.extract! student, :id, :roll_number, :name, :email, :phone_number, :created_at, :updated_at
json.url student_url(student, format: :json)
