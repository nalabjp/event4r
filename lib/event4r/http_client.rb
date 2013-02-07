# encoding: utf-8
require 'net/http'
require 'json'

module Event4r
  class HTTPClient
    def initialize(host, port = 80)
      @host = host
      @port = port
    end

    def request(path, query = nil)
      resp = nil
      begin
        Net::HTTP.start(@host, @port) do |http|
          resp = http.get(query == nil ? path : path + "?" + query)
        end
      rescue Exception => e
        $stderr.puts e
      end
      return resp
    end

    def get_json(resp)
      return JSON.parse(resp.body)
    end

    def request_json(path, query)
      return get_json(request(path, query))
    end
  end
end