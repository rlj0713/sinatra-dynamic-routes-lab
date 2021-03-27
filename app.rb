require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get "/say/:number/:phrase" do
    i = 0
    string = []
    while i < params[:number].to_i
      string << "#{params[:phrase]}"
      i += 1
    end
    string.join(' ')
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params.values.join(' ')}."
  end

  get "/:operation/:number1/:number2" do
    op = params[:operation]
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    if op == "add"
      result = (n1 + n2).to_s
    elsif op == "subtract"
      result = (n1 - n2).to_s
    elsif op == "multiply"
      result = (n1 * n2).to_s
    else
      result = (n1 / n2).to_s
    end
  end

end