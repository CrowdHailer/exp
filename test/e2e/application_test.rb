require_relative '../test_config'
require_relative '../../lib/web.rb'

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
  end
end
