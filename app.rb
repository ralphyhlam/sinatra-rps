require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:index)
end

get("/rock") do 
  moves= ["rock", "paper", "scissors"]
  @computer= moves.sample
  @outcome= ""

  if @computer=="rock"
    puts @outcome= "We tied!"
  elsif @computer=="paper"
    puts @outcome= "We lost!"
  elsif @computer=="scissors"
    puts @outcome= "We won!"
  end

  erb(:rock)
end

get ("/paper") do
  moves= ["rock", "paper", "scissors"]
  @computer= moves.sample
  @outcome= ""

  if @computer=="rock"
    puts @outcome= "We won!"
  elsif @computer=="paper"
    puts @outcome= "We tied!"
  elsif @computer=="scissors"
    puts @outcome= "We lost!"
  end

  erb(:paper)

end

get ("/scissors") do
  moves= ["rock", "paper", "scissors"]
  @computer= moves.sample
  @outcome= ""

  if @computer=="rock"
    puts @outcome= "We lost!"
  elsif @computer=="paper"
    puts @outcome= "We won!"
  elsif @computer=="scissors"
    puts @outcome= "We tied!"
  end

  erb(:paper)

end
