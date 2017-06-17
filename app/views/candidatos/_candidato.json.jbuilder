json.extract! candidato, :id, :matricula, :nome, :semestre, :ira, :email, :created_at, :updated_at
json.url candidato_url(candidato, format: :json)
