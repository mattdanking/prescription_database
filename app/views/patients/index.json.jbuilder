json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :dob, :address, :insurance
  json.url patient_url(patient, format: :json)
end
