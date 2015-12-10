class ListingSerializer < ActiveModel::Serializer
  attributes :type, :properties, :geometry

  def geometry
    {
      "type": "Point",
      "coordinates": [
        object.lng,
        object.lat
      ]
    }
  end

  def type
    "Feature"
  end

  def properties
    {
      "street": object.street,
      "sq_ft": object.sq_ft,
      "price": object.price,
      "id": object.od_id,
      "bedrooms": object.bedrooms,
      "bathrooms": object.bathrooms
    }
  end

end
