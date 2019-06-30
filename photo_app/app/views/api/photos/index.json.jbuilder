json.array! @photos.each do |photo|
  json.id photo.id
  json.name photo.name
  json.width photo.width
  json.height photo.height
end
