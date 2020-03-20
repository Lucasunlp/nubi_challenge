require 'representable/json'

class AlumnRepresenter < Representable::Decorator
  include Representable::JSON

  property :id
  property :name
  property :surname
  property :birth_date
  property :address
  property :email
  property :phone
  property :identification_number
  collection :evaluations
end
