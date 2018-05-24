print "How old are you?:"
  user_input = gets.chomp.to_i
  product_earth = user_input*365.26*24*60*60
  product_mercury = user_input*87.97*24*60*60
  product_venus = user_input*224.7*24*60*60
  product_mars  = user_input*1.88*365*24*60*60
  product_jupiter = user_input*11.86*365*24*60*60
  product_saturn = user_input*29.46*365*24*60*60
  product_uranus = user_input*84.01*365*24*60*60
  product_neptune = user_input*164.79*365*24*60*60
  product_pluto = user_input*248.59*365*24*60*60

  puts print "Mercury: #{product_mercury.round(2)}"
  puts print "Venus: #{product_venus.round(2)}"
  puts print "Earth: #{product_earth.round(2)}"
  puts print "Mars: #{product_mars.round(2)}"
  puts print "Jupiter: #{product_jupiter.round(2)}"
  puts print "Saturn: #{product_saturn.round(2)}"
  puts print "Uranus: #{product_uranus.round(2)}"
  puts print "Neptune: #{product_neptune.round(2)}"
  puts print "Pluto: #{product_pluto.round(2)}"
