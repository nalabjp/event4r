# coding: utf-8
# require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require_relative '../spec_helper'
require_relative '../../lib/event4r/http_client'

describe Event4r::HTTPClient do
  context 'when simple http get request' do
    describe 'request' do
      context 'host = www.google.co.jp ' do
        it 'http status code 200' do
          host = "www.google.co.jp"
          client = Event4r::HTTPClient.new(host)
          resp = client.request("/")
          resp.code.should eq "200"
        end
      end
    end
  end
end