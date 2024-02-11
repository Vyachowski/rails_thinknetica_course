class Station
  def initialize(station_name)
    @station_name = station_name
    @station_trains = []
  end

  def station_train=(train)
    @station_trains << train
  end

  def station_trains
    @station_trains
  end

  def station_trains_by_type(type)
    @station_trains.select do |train|
      train.type === type
    end
  end

  def dispatch_train
    @station_trains.pop
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

  def route
    [@start_station, *@route_stations, @end_station]
  end

  def remove_route_station
    @route_stations.pop
  end
end

# Класс Train (Поезд):
# Может перемещаться между станциями, указанными в маршруте. Перемещение возможно вперед и назад,
# но только на 1 станцию за раз.
# Возвращать предыдущую станцию, текущую, следующую, на основе маршрута
class Train

  def initialize(serial, type)
    @serial = serial
    @type = type
    @speed = 0
    @wagons_number = 0
    @train_route = nil
    @current_station = 0
  end

  def accelerate=
    @speed += 10
  end

  def brake=
    @speed = 0
  end

  def speed
    @speed
  end

  def attach_wagon=
    if @speed != 0
      puts 'Train is moving. Are you insane?'
    else
      @wagons_number += 1
    end
  end

  def detach_wagon=
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

  def route=(route)
    @route = route
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
    @train_route.route[@current_station - 1] || nil
  end

  def next_station
    @train_route.route[@current_station + 1] || nil
  end
end