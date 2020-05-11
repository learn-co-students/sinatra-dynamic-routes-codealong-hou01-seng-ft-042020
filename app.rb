require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:

  get '/multiply/:number1/:number2' do 
    # accepts two params (num1 and num2) and returns the product of the two numbers.
    @num1 = params[:number1]
    @num2 = params[:number2]
    "#{@num1.to_i}*#{@num2.to_i}= #{(@num1.to_i)*(@num2.to_i)}"
    end 
   
  get '/goodbye/:name' do 
    @name = params[:name]
    "Goodbye, #{@name}."
  end 


end