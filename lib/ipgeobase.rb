# frozen_string_literal: true

require_relative "ipgeobase/version"
require 'addressable'
require 'nokogiri-happymapper'
require 'open-uri'

module Ipgeobase
  class Error < StandardError; end

  def self.lookup(ip)
    url = "http://ip-api.com/xml/#{ip}"
    xmlData = URI.open(url).read
    result = HappyMapper.parse(xmlData)

    result
  end
end