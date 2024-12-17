require './spec/spec_helper'

RSpec.describe StoreFacilities do
  before(:each) do
    @store_facilities = StoreFacilities.new
    @co_location = DmvDataService.new.co_dmv_office_locations
    @ny_location = DmvDataService.new.ny_dmv_office_locations
    @mo_location = DmvDataService.new.mo_dmv_office_locations
  end

  it 'creates a facility with the correct info Co' do
    @store_facilities.create_facility(@co_location)
    facility = @store_facilities.facility.first

    expect(facility.name).to eq("DMV Tremont Branch")
    expect(facility.address).to eq("2855 Tremont Place, Suite 118, Denver, CO, 80205")
    expect(facility.phone).to eq("(720) 865-4600")
  end

  it 'creates a facility with the correct info NY' do
    @store_facilities.create_facility(@ny_location)
    facility = @store_facilities.facility.first

    expect(facility.name).to eq("LAKE PLACID")
    expect(facility.address).to eq("2693 MAIN STREET, LAKE PLACID, NY, 12946")
    expect(facility.phone).to eq("430-275-2084")
  end

  it 'creates a facility with the correct info Mo' do
    @store_facilities.create_facility(@mo_location)
    facility = @store_facilities.facility.first

    expect(facility.name).to eq("Harrisonville")
    expect(facility.address).to eq("2009 Plaza Dr., Harrisonville, MO, 64701")
    expect(facility.phone).to eq("(816) 884-4133")
  end
end
