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

 get "/:operation/:number1/:number2" do
    @number1 = params[:number1]
    @number2 = params[:number2]
    @operation = params[:operation]

    @number1.send(@operation,@number2)
  end

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end
  
end