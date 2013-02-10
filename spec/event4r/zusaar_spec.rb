# coding: utf-8
require_relative '../spec_helper'
require_relative '../../lib/event4r/zusaar'

describe Event4r::Zusaar do
  context "when search event" do
    describe "search_event" do
      context "no params" do
        it "results_returned > 0" do
          zusaar = Event4r::Zusaar.new
          resp = zusaar.search_event
          resp["results_returned"].should > 0
        end
      end
    end
  end
end