class Facility
  attr_reader :name, 
              :address, 
              :phone, 
              :services, 
              :info,
              :registration_date


  def initialize(info)
    @info = info
    @name = @info[:name]
    @address = @info[:address]
    @phone = @info[:phone]
    @services = []
    @registration_date = ()
  end

  def add_service(service)
    @services << service
  end


end
