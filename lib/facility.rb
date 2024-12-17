class Facility
  attr_reader :name, 
              :address, 
              :phone, 
              :services, 
              :info,
              :collected_fees,
              :plate_type,
              :registered_vehicles,
              :registration_date

  def initialize(info)
    @info = info
    @name = @info[:name]
    @address = @info[:address]
    @phone = @info[:phone]
    @services = []
    @registered_vehicles = []
    @collected_fees = 0
  end

  def add_service(service)
    @services << service
  end

  def register_vehicle(car)
    if @services.include?('Vehicle Registration')
      @registered_vehicles << car
      car.registration_date = Date.today
      if car.antique?
        car.plate_type = :antique 
        @collected_fees += 25
      elsif car.electric_vehicle? 
        car.plate_type = :ev
        @collected_fees += 200
      else 
        car.plate_type = :regular
        @collected_fees += 100
      end
      car
    else
      nil
    end
  end

  def administer_written_test(registrant)
    services.include?('Written Test') && registrant.age >= 16 ? registrant.license_data[:written] = true : false
  end

  def administer_road_test(registrant)
    services.include?('Road Test') && registrant.license_data[:written] == true ? registrant.license_data[:license] = true : false
  end

  def renew_drivers_license(registrant)
    services.include?('Renew License') && registrant.license_data[:license] == true ? registrant.license_data[:renewed] = true : false
  end
end
