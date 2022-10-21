passengers = [
  {
    tiket_num: 'РМ2010398 050298',
    route: 'Moscow - SPB',
    passenger: 'Ivanov I.E.',
    passport: '4699 50242'
  },
  {
    tiket_num: 'РМ2010398 050299',
    route: 'Moscow - SPB',
    passenger: 'Petrov R.T.',
    passport: '4252 52442'
  },
  {
    tiket_num: 'РМ2010398 050300',
    route: 'Moscow - SPB',
    passenger: 'Sidorov E.Q.',
    passport: '8822 29532'
  }
]

passengers.each_with_index do |passenger, number|
  puts "* * * Место № #{number + 1} * * *"
  puts "Билет № #{passenger[:tiket_num]}"
  puts "Маршрут: #{passenger[:route]}"
  puts "Пассажир: #{passenger[:passenger]}"
  puts "Паспорт: #{passenger[:passport]}"
  puts
end
