json.array!(@hall_details) do |hall_detail|
  json.extract! hall_detail, :id, :Hall_Name, :Hall_ID, :Hall_Type, :Phone_Number, :Contact_Email, :Address, :City, :State
  json.url hall_detail_url(hall_detail, format: :json)
end
