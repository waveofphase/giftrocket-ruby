require 'minitest/autorun'
require 'webmock/minitest'
require 'giftrocket'

class UserTest < Minitest::Test
  def test_initialization
    data = {
      "email": "james@sales.com",
      "name": "James Fields"
    }.with_indifferent_access

    user = Giftrocket::User.new(data)

    assert_equal data[:email], user.email
    assert_equal data[:name], user.name
  end
end
