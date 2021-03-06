#!/usr/bin/env ruby

# System include
require 'savon'

# Custom include
require 'spec_helper'


module Clearbooks

  describe Clearbooks do

    describe :config do
      it 'has default WSDL url' do
        expect(Clearbooks.config.wsdl).to eq 'https://secure.clearbooks.co.uk/api/wsdl/'
      end

      it 'has API key' do
        expect(Clearbooks.config.api_key).not_to be_nil
      end
    end

  end # of describe Clearbooks

end # of module Clearbooks

