input = 'Будете у нас на #Колыме? Нет, уж лучше #вы_к_нам!
#text #текст #illustration #девиз #dark #imagine #глуховскийдмитрий
#томск #add #blackwork #books #theatre #пелевин #artist #author 
#moderntheatre #write #стоматологияспб #art #drama #philosophy 
#дмитрийрогацкин #форма #likes #xray #стих #tattoo #stories 
#instalike #tomografia-conebeam'

#reg = '#[[:word:]-]+'
reg = /#[[:word:]-]+/

#out = input.scan(/#{reg}/)
out = input.scan(reg)

puts "Найдено: #{out.size} совпадения."
puts out.join(', ')