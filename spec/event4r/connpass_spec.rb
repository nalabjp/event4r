# coding: utf-8
require_relative '../spec_helper'
require_relative '../../lib/event4r/connpass'

describe Event4r::Connpass do
  context "when search event" do
    describe "search_event" do
      context "no params" do
        it "results_returned > 0" do
          connpass = Event4r::Connpass.new
          resp = connpass.search_event
          resp["results_returned"].should > 0
        end
      end
    end
  end
end