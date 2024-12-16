class Facility
  attr_reader :name, :address, :phone, :services, :info

  def initialize(info)
    @info = info
    @name = @info[:name]
    @address = @info[:address]
    @phone = @info[:phone]
    @services = []
  end

  def add_service(service)
    @services << service
  end
end
