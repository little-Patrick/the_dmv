require './spec/spec_helper'


RSpec.describe VehicleFactory do
  before(:each) do
    @factory = VehicleFactory.new
    @wa_ev_registrations = DmvDataService.new.wa_ev_registrations
    @vehicles = @factory.create_vehicles(@wa_ev_registrations)
  end
  it 'creates Vehicle objects with correct attributes' do
    @first_vehicle = @vehicles.first

    expect(@first_vehicle.vin).to eq("WBY8P8C51K")
    expect(@first_vehicle.year).to eq("2019")
    expect(@first_vehicle.make).to eq("BMW")
    expect(@first_vehicle.model).to eq("i3")
    expect(@first_vehicle.engine).to eq(:ev)
  end

end