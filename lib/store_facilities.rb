

class StoreFacilities
  attr_reader :facility

  def initialize
    @facility = []
  end

  def create_facility(store)
    @facility = store.map do |store_data|
      if store_data.include?(:dmv_office) #Co
        Facility.new({
          name: store_data[:dmv_office],
          address: "#{store_data[:address_li]}, #{store_data[:address__1]}, #{store_data[:city]}, #{store_data[:state]}, #{store_data[:zip]}",
          phone: store_data[:phone]
        })
      elsif store_data.include?(:office_name) #NY
        Facility.new({
          name: store_data[:office_name],
          address: "#{store_data[:street_address_line_1]}, #{store_data[:city]}, #{store_data[:state]}, #{store_data[:zip_code]}",
          phone: "#{store_data[:":@computed_region_yamh_8v7k"]}-#{store_data[:":@computed_region_wbg7_3whc"]}-#{store_data[:":@computed_region_kjdx_g34t"]}"
        })
      elsif store_data.include?(:agent) #Mo
        Facility.new({
          name: store_data[:name],
          address: "#{store_data[:address1]}, #{store_data[:city]}, #{store_data[:state]}, #{store_data[:zipcode]}",
          phone: store_data[:phone]
        })
      else
        print "Unable to read data"
      end
    end
  end
end