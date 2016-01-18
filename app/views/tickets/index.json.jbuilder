json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :adult, :child, :student, :elder, :date, :code
  json.url ticket_url(ticket, format: :json)
end
