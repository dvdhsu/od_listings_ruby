module ListingHelper
  def parse_param(max, p)
    if p.nil?
      max ? Float::INFINITY : -Float::INFINITY
    else
      p.to_f
    end
  end

  def to_query(params)
    max_price = parse_param(true, params["max_price"])
    max_bath = parse_param(true, params["max_bath"])
    max_bed = parse_param(true, params["max_bed"])
    min_price = parse_param(false, params["min_price"])
    min_bath = parse_param(false, params["min_bath"])
    min_bed = parse_param(false, params["min_bed"])

    query = {
      price: (min_price .. max_price),
      bathrooms: (min_bath .. max_bath),
      bedrooms: (min_bed .. max_bed),
    }
  end
end
