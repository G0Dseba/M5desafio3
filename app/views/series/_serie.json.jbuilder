json.extract! serie, :id, :name, :synopsis, :director, :created_at, :updated_at
json.url serie_url(serie, format: :json)
