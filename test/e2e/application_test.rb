require_relative '../test_config'
require_relative '../../lib/web.rb'

# Note these tests use the real github API.
# As there are no credentials required and these are meant to be end-to-end tests I am not currently concerned.
module E2E
  class ApplicationTest < Minitest::Test
    include Rack::Test::Methods

    def app
      GithubFavourites::Web
    end

    def test_that_the_home_page_is_available
      response = get '/'
      assert_equal response.status, 200
    end

    def test_that_the_a_favourite_language_is_shown
      response = get '/favourite', username: "crowdhailer"
      assert_equal response.status, 200
      assert_includes response.body, "Elixir"
    end
  end
end
