# encoding: utf-8
require_relative "event_site"

module Event4r
  class EventAtnd < EventSite
    def initialize
      create_client("api.atnd.org")
    end

    def search_event(params = {})
      path = "/eventatnd/event/"
      return search_event_impl(path, params)
    end
  end
end
