require 'date'

class Weather

CLOUDINESS = %w(ясно малооблачно облачно пасмурно).freeze
TIME_OF_DAY = %w(ночь утро день вечер).freeze
  
  def initialize(params)
    @date = params[:date]
    @time_of_day = params[:time_of_day]
    @min_temp = params[:min_temp]
    @max_temp = params[:max_temp]
    @max_wind = params[:max_wind]
    @clouds = params[:clouds]
  end
  
  def self.parse(scope)
    #puts scope
    day = scope.attributes['day']
    month = scope.attributes['month']
    year = scope.attributes['year']

    new(
      date: Date.parse("#{day}.#{month}.#{year}"),
      time_of_day: TIME_OF_DAY[scope.attributes['tod'].to_i],
      min_temp: scope.elements['TEMPERATURE'].attributes['min'].to_i,
      max_temp: scope.elements['TEMPERATURE'].attributes['max'].to_i,
      max_wind: scope.elements['WIND'].attributes['max'].to_i,
      cloud_index: scope.elements['PHENOMENA'].attributes['cloudiness'].to_i
    )
  end

  def to_s
    result = today? ? 'Сегодня' : @date.strftime('%d.%m.%Y')

    result << ", #{@time_of_day}\n" \
    "Температура #{temperature_range_string}\n" \
    "Ветер #{@max_wind} м/с"

    result
  end

  def temperature_range_string
    result = ''
    result << '+' if @min_temp > 0
    result << "#{@min_temp}.."
    result << '+' if @max_temp > 0
    result << @max_temp.to_s
    result

  end

  def today?
    @date == Date.today
  end

end