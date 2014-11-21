class Bus
  include DataMapper::Resource

  belongs_to :route, :child_key => [ :route_id ]

  property :bus_number, String, :key => true
  property :created_at, DateTime
  property :updated_at, DateTime

  # Position info
  property :lat, Float
  property :lng, Float
  property :speed, Float    # in m/s
  property :odometer, Float # in metres
  property :bearing, Float  # 0 = North, 90 = East, etc

  # Trip info
  property :route_id, String
  property :trip_id, String
end