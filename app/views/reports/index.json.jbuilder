json.array!(@reports) do |report|
  json.extract! report, :id, :title, :content
  json.url report_url(report, format: :json)
end
