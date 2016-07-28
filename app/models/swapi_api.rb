class SwapiApi


    def get_driver
      driver_holder = []
      all_drivers = Swapi.get_all "people"
      all_drivers = JSON.parse(all_drivers)
      all_drivers = all_drivers["results"]
      all_drivers.each_with_index {|d, i| driver_holder << all_drivers[i]["name"]}
      driver_holder.sample
    end

    def get_vehicle
      vehicle_holder = []
      all_vehicles = Swapi.get_all "vehicles"
      all_vehicles = JSON.parse(all_vehicles)
      all_vehicles = all_vehicles["results"]
      all_vehicles.each_with_index {|v, i| vehicle_holder << all_vehicles[i]["name"]}
      vehicle_holder.sample
    end
    
    def planet
      all_planets = Swapi.get_all "planets"
      all_planets = JSON.parse(all_planets)
      all_planets = all_planets["results"]
      all_planets.map {|planet| planet["name"]}
    end


    def get_starship
      starship_holder = []
      all_starships = Swapi.get_all "starships"
      all_starships = JSON.parse(all_starships)
      all_starships = all_starships["results"]
      all_starships.each_with_index {|v, i| starship_holder << all_starships[i]["name"]}
      starship_holder.sample
    end

   



  end