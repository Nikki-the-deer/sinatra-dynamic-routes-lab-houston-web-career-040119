require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    erb :reversename
  end

  get '/square/:number' do
    # i = params[:number].to_i
    # a = i * i
    # "#{a}"
    erb :square
  end

  get '/say/:number/:phrase' do
    # erb :numbertimes
  answer = []
  i = params[:number].to_i
  i.times do 
    answer << "#{params[:phrase]}"
    end
  answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  
  
  get '/:operation/:number1/:number2' do
    answer = 0
    i = params[:number1].to_i
    k = params[:number2].to_i
    if params[:operation] == "add"
      answer = "#{i+k}"
    elsif params[:operation] == "subtract"
      answer = "#{i-k}"
    elsif params[:operation] == "multiply"
      answer = "#{i*k}"
    else params[:operation] == "divide"
      answer = "#{i/k}"
    end
    answer
    # # binding.pry
    # answer
  end

    # if params[:operation] == "add" 
    #   i + k
    # end




end