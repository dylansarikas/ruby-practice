class LocomotiveEngineer
    def self.generate_list_of_wagons(*wagons)= wagons
  
    def self.fix_list_of_wagons(original_wagons, missing_wagons)
      first, second, third, *rest = original_wagons
      fixed_wagons = []
      (fixed_wagons.push(third).push(missing_wagons).push(rest).push(first).push(second)).flatten!
    end
  
    def self.add_missing_stops(route, **stops)
      the_journey = {**route, :stops => stops.values}
    end
  
    def self.extend_route_information(route, more_info)
      the_journey = {**route, **more_info}
    end
  end
  