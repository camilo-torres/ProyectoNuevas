json.extract! gamer, :id, :nickname, :password, :email, :country, :created_at, :updated_at
json.url gamer_url(gamer, format: :json)
