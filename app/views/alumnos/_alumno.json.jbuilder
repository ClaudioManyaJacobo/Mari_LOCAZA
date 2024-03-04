json.extract! alumno, :id, :codigo, :nombre, :edad, :facultad_id, :created_at, :updated_at
json.url alumno_url(alumno, format: :json)
