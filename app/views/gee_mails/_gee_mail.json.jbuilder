json.extract! gee_mail, :id, :to, :subject, :text, :date, :created_at, :updated_at
json.url gee_mail_url(gee_mail, format: :json)
