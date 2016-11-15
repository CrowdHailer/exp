require "sinatra"

module GithubFavourites
  class Web < Sinatra::Base
    get "/" do
      erb :index
    end
  end
end
