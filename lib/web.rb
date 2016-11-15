require "sinatra"
require "octokit"

# For smallish resource lists, Octokit provides auto pagination. When this is enabled, calls for paginated resources will fetch and concatenate the results from every page into a single array:
Octokit.auto_paginate = true

module GithubFavourites
  class Web < Sinatra::Base

    get "/" do
      erb :home
    end

    get "/favourite" do
      username = params.fetch "username"
      repositories = Octokit.repositories(username)
      # Just count how many times each language is a main repository language.

      languages = repositories.map do |repository|
        repository.language
      end
      occurances =  languages.each_with_object(Hash.new(0)) { |language,counts| counts[language] += 1 }
      @occurances = occurances.sort_by { |k, v| v}.reverse
      @username = username
      erb :results
    end
  end
end
