class Team
  attr_reader :name, :rank,

  def initialize(name, rank)
    @name = name
    @rank = rank
  end

  def name
    @name
  end

  def rank
    @rank
  end

  def pretty_print
    "(#{@rank}) #{@name}"
  end

teams_array = []

loop do
  puts "Welcome to My Tournament Generation. Enter a Selection:"
  puts "1. Enter teams"
  puts "2. List teams"
  puts "3. List matchups"
  puts "0. Exit program"

  menu_selection = gets[0]

  case menu_selection
  when '0' then break

  when '1'
    puts "Please enter the name of the team, to add to the tournament:"
    name = gets.chomp
    team = Team.new(name, teams_array.length + 1)
    teams_array.push(team)

  when '2' then teams_array.each { |Team| puts "#{team.rank}. #{team.name}"}

  when '3' then
    puts "Matchups"
    if teams_array.length.odd
      top_team = teams_array.shift
      puts "(#{top_team.rank}) #{top_team.name} has a bye."
    end

    until teams_array.empty?
      high_rank = teams_array.shift
      low_rank = teams_array.pop
    puts "(#{high_rank.rank}) #{high_rank.name} versus (#{low_rank.rank}) #{high_rank.name}"
  else
    puts "Invalid Selection"
  end
    end

puts "Goodbye"
end
