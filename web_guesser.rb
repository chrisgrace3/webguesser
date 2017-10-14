require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand(100)
CORRECT_ANSWER = "You got it! Are you a wizard or somethin??" + "\n" +
    "The secret number is #{SECRET_NUMBER}"

get '/' do
  guess = params[:guess].to_i
  number =  SECRET_NUMBER
  message = check_guess(guess)
  erb :index, :locals => {:number => number, :guess => guess, :message => message}
end

def check_guess(guess)
  if (guess - SECRET_NUMBER) > 5
   "WAAAYYY to high buddy"
  elsif (guess < SECRET_NUMBER) && (SECRET_NUMBER - guess > 5) && (guess != 0)
   "Way too low.."
  elsif (guess < SECRET_NUMBER) && (guess != 0)
      guess < SECRET_NUMBER
     "Too low!"
  elsif guess == SECRET_NUMBER
      CORRECT_ANSWER
  elsif (guess > SECRET_NUMBER) && (SECRET_NUMBER - guess < 5)
   "Too high!"
  end
end
