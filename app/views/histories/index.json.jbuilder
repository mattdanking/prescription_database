json.array!(@histories) do |history|
  json.extract! history, :id, :prescription, :quantity, :fill_date, :provider, :npi, :pharmacy_id, :phone, :patient_id
  json.url history_url(history, format: :json)
end
