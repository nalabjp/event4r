# coding: utf-8
require_relative '../spec_helper'
require_relative '../../lib/event4r/event_site'

describe Event4r::EventSite do
  context "when initialize" do
    describe "initialize" do
      it "raise NotImplementedError" do
        lambda{Event4r::EventSite.new}.should raise_error(NotImplementedError)
      end
    end
  end
end