class Station
  def initialize(station_name)
    @station_name = station_name
    @station_trains = []
  end

  def station_trains=(train)
    if train.is_a?(Hash)
      @station_trains << train
    else
      puts "Train should be an object with a name and a type"
    end
  end

  def station_trains
    if @station_trains.length > 0
      @station_trains
    else
      puts "No trains on the station"
    end
  end

  def station_trains_by_type(type)
    @station_trains.select do |train|
      train.type === type
    end
  end

  def dispatch_train
    if @station_trains.length > 0
      @station_trains.pop
    end
  end
end

class Route
  def initialize(start_station, end_station)
    @start_station = start_station
    @end_station = end_station
    @route_stations = []
  end

  def route_stations=(station)
    @route_stations << station
  end

  def remove_route_station
    if @station_trains.length > 0
      @route_stations.pop
    end
  end

  def route
    [@start_station, *@route_stations, @end_station]
  end
end

class Train
  def initialize(serial, type)
    @serial = serial
    @type = type || 'passenger'
    @speed = 0
    @wagons_number = 0
    @train_route = nil
    @current_station = 0
  end

  def accelerate
    @speed += 10
  end

  def brake
    @speed = 0
  end

  def speed
    @speed
  end

  def attach_wagon
    if @speed != 0
      puts 'Train is moving. Are you insane?'
    else
      @wagons_number += 1
    end
  end

  def detach_wagon
    if @speed != 0
      puts 'Train is moving. Are you insane?'
    else
      if @wagons_number > 0
        @wagons_number -= 1
      end
    end
  end

  def wagons_number
    @wagons_number
  end

  def route(train_route)
    if train_route.instance_of?(Route)
      @train_route = train_route
      puts @train_route
    else
      puts "You can assign only Route instance as a route for a train."
    end
  end

  def move_to_next_station
    last_route_number = @train_route.route.length

    if @current_station < last_route_number
      @current_station += 1
    end
  end

  def move_to_previous_station
    if @current_station > 0
      @current_station -= 1
    end
  end

  def current_station
    @train_route.route[@current_station]
  end

  def previous_station
    if @current_station > 0
      @train_route.route[@current_station - 1]
    else
      puts "This is a first station."
    end
  end

  def next_station
    next_station_number = @current_station + 1
    max_stations_number = @train_route.route.length

    if next_station_number < max_stations_number
      @train_route.route[@current_station + 1]
    else
      puts "This is a last station."
    end
  end
end
