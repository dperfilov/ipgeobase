# frozen_string_literal: true

require_relative "test_helper"
require_relative '../lib/ipgeobase'

class IpgeobaseTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def test_it_returns_correct_results
    ip_meta = Ipgeobase.lookup('8.8.8.8')

    assert ip_meta.city == 'Ashburn'
    assert ip_meta.country == 'United States'
    assert ip_meta.lat == '39.03'
    assert ip_meta.lon == '-77.5'
  end
end
