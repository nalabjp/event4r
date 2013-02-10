# encoding: utf-8
require_relative "http_client"

module Event4r
  class AtndBeta
    def initialize
      @client = HTTPClient.new("api.atnd.org")
    end

    def search_event(params = {})
      path = "/events/"
      resp = @client.request_json(path, make_query(params))
      return resp
    end

    def make_query(params)
      params[:format] = "json"
      params.map { |k, v| "#{k}=#{v}" }.join("&")
    end
  end
end
