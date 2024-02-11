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
# Имеет номер (произвольная строка)
# и тип (грузовой, пассажирский) и количество вагонов,
# эти данные указываются при создании экземпляра класса
# Может набирать скорость
# Может возвращать текущую скорость
# Может тормозить (сбрасывать скорость до нуля)
# Может возвращать количество вагонов
# Может прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов). Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
# Может принимать маршрут следования (объект класса Route).
# При назначении маршрута поезду, поезд автоматически помещается на первую станцию в маршруте.
# Может перемещаться между станциями, указанными в маршруте. Перемещение возможно вперед и назад, но только на 1 станцию за раз.
# Возвращать предыдущую станцию, текущую, следующую, на основе маршрута
class Train

  def initialize(serial, type)
    @serial = serial
    @type = type
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