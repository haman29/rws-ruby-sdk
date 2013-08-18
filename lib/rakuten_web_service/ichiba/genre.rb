require 'rakuten_web_service/client'
require 'rakuten_web_service/resource'

module RakutenWebService
  module Ichiba
    class Genre < Resource
      endpoint 'https://app.rakuten.co.jp/services/api/IchibaGenre/Search/20120723'
      attribute :genreId, :genreName, :genreLevel

      class << self
        def search(params)
          Genre.new(client.get(params).body['current'])
        end
      end
    end
  end
end