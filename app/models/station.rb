class Station
  attr_reader :name,
              :address,
              :access_times

  def initialize(name, address, fuel_types, distance, access_times)
    @name = name
    @address = address
    @fuel_types = fuel_types
    @distance = distance
    @access_times = access_times
  end

  def distance
    @distance.round(2)
  end

  def fuel_types
    case @fuel_types
    when 'ELEC'
      'Electric'
    when 'LPG'
      'Propane'
    else
      @fuel_types
    end
  end
end
