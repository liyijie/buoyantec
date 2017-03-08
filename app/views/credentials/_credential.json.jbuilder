json.extract! credential, :id, :name, :cer_number, :score, :cer_type, :start_date, :end_date, :identity_number, :created_at, :updated_at
json.url credential_url(credential, format: :json)