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
describe 'TransactionAPIApi' do
  before do
    # run before each test
    @instance = SwaggerClient::TransactionAPIApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionAPIApi' do
    it 'should create an instance of TransactionAPIApi' do
      expect(@instance).to be_instance_of(SwaggerClient::TransactionAPIApi)
    end
  end

  describe 'create transaction test' do
    it "should create a transaction" do
      
      tx = @instance.create('testnet3', 'mzYVx2FgY35SFkRNCSUxCGqd4UhXZ7eXmE', 'moQtPGgAPnMpN1jRoNsETEqfu1iP7VP3mV', 100000)
      
      puts tx
      
    end
  end
  
  describe 'create transaction test' do
    it "should create a transaction" do
      
      tx = @instance.send_raw('testnet3', '000000')
      
      puts tx
      
    end
  end

end
