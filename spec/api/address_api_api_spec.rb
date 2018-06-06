=begin
#ONCHAIN.IO API overview

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::AddressAPIApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AddressAPIApi' do
  before do
    # run before each test
    @instance = SwaggerClient::AddressAPIApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AddressAPIApi' do
    it 'should create an instance of AddressAPIApi' do
      expect(@instance).to be_instance_of(SwaggerClient::AddressAPIApi)
    end
  end
  
  describe 'get_balance ethereum test' do
    it "should work" do
      address_api = SwaggerClient::AddressAPIApi.new
      bal =  address_api.get_balance('ethereum', '0x46FC2341DC457BA023cF6d60Cb0729E5928A81E6')
      puts bal
      puts bal.class
    end
  end
  
  describe 'get_all_balances ethereum test' do
    it "should work" do
      address_api = SwaggerClient::AddressAPIApi.new
      bal =  address_api.get_balances('ethereum', '0x46FC2341DC457BA023cF6d60Cb0729E5928A81E6,0x46FC2341DC457BA023cF6d60Cb0729E5928A81E6')
      puts bal
      puts bal.class
    end
  end

  # unit tests for get_balance
  # Get Balance
  # Returns the satoshi balance, usd balance and user viewable balance for an address
  # @param coin The name of the coin i.e. bitcoin
  # @param address The public address to lookup
  # @param [Hash] opts the optional parameters
  # @return [Balance]
  describe 'get_balance test' do
    it "should work" do
      address_api = SwaggerClient::AddressAPIApi.new
      bal =  address_api.get_balance('bitcoin', '1STRonGxnFTeJiA7pgyneKknR29AwBM77')
      puts bal
      puts bal.class
    end
  end

  # unit tests for get_balances
  # Get Balances
  # Returns the satoshi balance, usd balance and user viewable balance for a set of addresses
  # @param coin The name of the coin i.e. bitcoin
  # @param addresses A comma seperated list of public addresses
  # @param [Hash] opts the optional parameters
  # @return [Balances]
  describe 'get_balances test' do
    it "should work" do
      address_api = SwaggerClient::AddressAPIApi.new
      bals = address_api.get_balances(SwaggerClient::Coin::BITCOIN, '1STRonGxnFTeJiA7pgyneKknR29AwBM77,1HT7xU2Ngenf7D4yocz2SAcnNLW7rK8d4E')
      puts bals
      puts bals.class
    end
  end

  # unit tests for get_history
  # Get History
  # Returns the transaction history for an address or addresses.
  # @param coin The name of the coin i.e. bitcoin
  # @param addresses A comma seperated list of public addresses
  # @param [Hash] opts the optional parameters
  # @return [Array<History>]
  describe 'get_history test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_unspent
  # Get Unspent Outs
  # Returns the unspent outputs for an address or addresses.
  # @param coin The name of the coin i.e. bitcoin
  # @param addresses A comma seperated list of public addresses
  # @param [Hash] opts the optional parameters
  # @return [Array<Utxo>]
  describe 'get_unspent test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
