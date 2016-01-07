json.array!(@properties) do |property|
  json.extract! property, :id, :address, :rent, :footprint
  json.url property_url(property, format: :json)
end
