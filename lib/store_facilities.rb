

class StoreFacilities
  attr_reader :facility

  def initialize
    @facility = []
  end

  def create_facility(store)
    @facility = store.map do |store_data|
      Facility.new({
        name: = 
        address: =
        phone: = 
      })

end