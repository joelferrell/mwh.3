json.array!(@parts) do |part|
  json.extract! part, :id, :wo_number, :part_number, :part_description, :unit_price, :unit_quantity, :parts_total, :equipment_id
  json.url part_url(part, format: :json)
end
