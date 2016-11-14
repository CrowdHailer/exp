require "sinatra"

module GithubFavourites
  class Web < Sinatra::Base
    get "/" do
      "Hello"
    end
  end
end
