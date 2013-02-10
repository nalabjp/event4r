# coding: utf-8
require_relative '../spec_helper'
require_relative '../../lib/event4r/atnd_beta'

describe Event4r::AtndBeta do
  context "when search event" do
    describe "search_event" do
      context "no params" do
        it "results_returned > 0" do
          atnd_beta = Event4r::AtndBeta.new
          resp = atnd_beta.search_event
          resp["results_returned"].should > 0
        end
      end
    end
  end
end