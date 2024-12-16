class Facility
  attr_reader :name, 
              :address, 
              :phone, 
              :services, 
              :info,
              :collected_fees,
              :registration_date


  def initialize(info)
    @info = info
    @name = @info[:name]
    @address = @info[:address]
    @phone = @info[:phone]
    @services = []
    @registration_date = ()
    @collected_fees = 0
  end

  def add_service(service)
    @services << service
  end

  def register_vehicle(car)
    @collected_fees += 100
  end
end
