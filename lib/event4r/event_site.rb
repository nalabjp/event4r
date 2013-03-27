# encoding: utf-8
require_relative "http_client"

module Event4r
  class EventSite
    attr_reader :name
    def initialize
      @name = nil
      raise NotImplementedError, "need to call create_client"
    end

    def search_event(params = {})
      raise NotImplementedError, "need to call search_event_impl"
    end

    def create_client(host)
      @client = HTTPClient.new(host)
    end

    def search_event_impl(path, params = {})
      return @client.request_json(path, make_query(params))
    end

    def make_query(params)
      params[:format] = "json"
      params.map { |k, v| "#{k}=#{v}" }.join("&")
    end
    protected :create_client, :make_query, :search_event_impl
  end
end
