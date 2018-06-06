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
      
      tx = @instance.create('testnet3', 'mzYVx2FgY35SFkRNCSUxCGqd4UhXZ7eXmE', '036f3972643ab052f9f77cbaf67f0e517180ac488453bde8cb27e9e3e1d6847d49', 100000)
      
      puts tx
      
    end
  end
  
  describe 'sign and send a transaction' do
    it "should create a transaction" do
      
      s = SwaggerClient::Signature.new({
        :hash_to_sign => '68f5a24c8c74ca647c16c9d93b2c91932c5447084d01b8bbf583f9539fcd2938',
        :input_index => 0,
        :signature => '3044022054fb8c202c4a6ace52a3629f1c237d397473d069db93a682616cf44000303f670220132ea795d496f7eda7f765b475d63fe43ce54dbe3939212c9001c181ee027980',
        :public_key => '036f3972643ab052f9f77cbaf67f0e517180ac488453bde8cb27e9e3e1d6847d49'
      })
      
      tx = '0100000001c9d5426dcdec405cf28c166ccb0cf83ce8ca18bf003e5388246b717a479586f6010000001976a914569b3f1e217a8741f8ae8309b5dbd9d91f200d4688acffffffff03a0860100000000001976a914d0b53ad490c2074460a42be67276f013cf8e773d88ac801a0600000000001976a914e229651d1ea66dbdfc4ec59f1eb9394559c284c988ace0040700000000001976a914569b3f1e217a8741f8ae8309b5dbd9d91f200d4688ac00000000'
      
      result = @instance.sign_and_send('testnet3', tx, [s.public_key], 
        [s.signature], [s.hash_to_sign], [s.input_index])
      
      puts result
      
    end
  end
  
  describe 'another sign and send' do
    it "should create a transaction" do
      
      pub_keys = ["03ab4284e59a1724f1f0f58114abfc4f34a98478972d5b8c67608a67a10e188b9a",
        "03ab4284e59a1724f1f0f58114abfc4f34a98478972d5b8c67608a67a10e188b9a",
        "03ab4284e59a1724f1f0f58114abfc4f34a98478972d5b8c67608a67a10e188b9a"]
        
      sigs = ["304402203fb4b91b66af4433d5411d7eb572e3f46385770796d6ffd417742c9ea1ecde14022009dd1866ea7de1bb2e7011dc0d64545f4a71a4946bfa5148acfe432dff860f62",
        "304402204508018eb595ca5fdfb758043deb52f83ddbbf4bb6583f1abfd9a2f586890be5022061bda152936d30fa122002e31f17edc5eca30e12b5a3a6faa2c2a2ebe5ea6ed9",
        "304502210094f15262a2bb93deaa01390ea22e3b59b325e94a547393f961f570f9f4a0583702204886bca3213c4b2b334c991b2bb712a2954c3f85d1f751e310ed36c4f6fdf865"]
      hashes = ["8ab0dc780c62047aeb761a45b147af51e3df8ffb21cd374fe0d6d9d66e79ee9f",
        "da09520cbfa1a872a7f62bc85bec8939f64e8a5cd41fafc639952f6c91c1f48c",
        "9e9cf6de6ebd2fddfa195f1ceabbadbded51fe93a7b61b405ba9c8e4f16d411d"]
      inputs = [0,1,2]
      
      tx = '0100000003073609f2c753c8d4aa11a4728dabdcf8190038589753b2d8b40752dad6d4ed42000000001976a91463bf46a9d042006ac36b368133d01026a3d18e7888acffffffff963000ec05aaaa4fc50b250e03bc9c108ad3a7a8f432b992ed0de151ce895a7c000000001976a91463bf46a9d042006ac36b368133d01026a3d18e7888acffffffff0e207532d1cb905d46b9d37af678527267fda02efe8fad91721a5a435702834e020000001976a91463bf46a9d042006ac36b368133d01026a3d18e7888acffffffff03a0860100000000001976a91468e1bf1e60bb214c167c9d9fa43a10fc6f0f1c2988ac801a0600000000001976a914e229651d1ea66dbdfc4ec59f1eb9394559c284c988ac84053b00000000001976a91463bf46a9d042006ac36b368133d01026a3d18e7888ac00000000'
      
      result = @instance.sign_and_send('testnet3', tx, pub_keys, 
        sigs, hashes, inputs)
      
      puts result
      
    end
  end
  
  describe 'create transaction test' do
    it "should create a transaction" do
      
      tx = @instance.send_raw('testnet3', '000000')
      
      puts tx
      
    end
  end

end
