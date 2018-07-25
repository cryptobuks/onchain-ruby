=begin
#ONCHAIN.IO API overview

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::TransactionAPIApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ExchangeApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ExchangeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ExchangeApi' do
    it 'should create an instance of ExchangeApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ExchangeApi)
    end
  end

  describe 'get rate' do
    it "should get the rates" do
      
      rates = @instance.get_rates('bitcoin,bitcoin_cash')
      
      puts rates
    end

    it "should verify a trade" do
      
      rates = @instance.verify_trade('bitcoin','bitcoin_cash', 1)
      
      puts rates
    end

    it "should create a trade" do
      
      rates = @instance.create_trade('bitcoin','bitcoin_cash', 1, 'id')
      
      puts rates
    end
  end

end