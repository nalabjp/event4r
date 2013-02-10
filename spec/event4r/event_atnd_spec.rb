# coding: utf-8
require_relative '../spec_helper'
require_relative '../../lib/event4r/event_atnd'

describe Event4r::EventAtnd do
  context "when search event" do
    describe "search_event" do
      context "no params" do
        it "results_returned > 0" do
          event_atnd = Event4r::EventAtnd.new
          resp = event_atnd.search_event
          resp["results_returned"].should > 0
        end
      end
    end
  end
end