# frozen_string_literal: true

require 'irasutoya/irasuto'
require 'irasutoya/random_command'
require 'irasutoya/version'
require 'json'
require 'open-uri'
require 'net/http'
require 'nokogiri'

module Irasutoya
  class << self
    def random
      RandomCommand.new.run
    end
  end
end
