# encoding: utf-8
require_relative "event_site"

module Event4r
  class Zusaar < EventSite
    def initialize
      @name = File.basename(__FILE__, '.rb')
      create_client("www.zusaar.com")
    end

    def search_event(params = {})
      path = "/api/event/"
      return search_event_impl(path, params)
    end
  end
end
