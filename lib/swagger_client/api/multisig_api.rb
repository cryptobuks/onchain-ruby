=begin
#ONCHAIN.IO API overview

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class MultisigApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create Unsigned Transaction
    # Create an unsigned transaction. OnChain returns the transaction for the specified coin in hex format along with a list of hashes that need to be signed.
    # @param coin 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [HashesToSign]
    def create(coin, body, opts = {})
      data, _status_code, _headers = create_with_http_info(coin, body, opts)
      return data
    end

    # Create Unsigned Transaction
    # Create an unsigned transaction. OnChain returns the transaction for the specified coin in hex format along with a list of hashes that need to be signed.
    # @param coin 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(HashesToSign, Fixnum, Hash)>] HashesToSign data, response status code and response headers
    def create_with_http_info(coin, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MultisigApi.create ..."
      end
      # verify the required parameter 'coin' is set
      if @api_client.config.client_side_validation && coin.nil?
        fail ArgumentError, "Missing the required parameter 'coin' when calling MultisigApi.create"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MultisigApi.create"
      end
      # resource path
      local_var_path = "/multi_sig/create/{coin}".sub('{' + 'coin' + '}', coin.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HashesToSign')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MultisigApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sign and Send a Transaction
    # Sign and send transaction onto the network.
    # @param coin The name of the coin i.e. bitcoin
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [SendStatus]
    def sign_and_send(coin, body, opts = {})
      data, _status_code, _headers = sign_and_send_with_http_info(coin, body, opts)
      return data
    end

    # Sign and Send a Transaction
    # Sign and send transaction onto the network.
    # @param coin The name of the coin i.e. bitcoin
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SendStatus, Fixnum, Hash)>] SendStatus data, response status code and response headers
    def sign_and_send_with_http_info(coin, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MultisigApi.sign_and_send ..."
      end
      # verify the required parameter 'coin' is set
      if @api_client.config.client_side_validation && coin.nil?
        fail ArgumentError, "Missing the required parameter 'coin' when calling MultisigApi.sign_and_send"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MultisigApi.sign_and_send"
      end
      # resource path
      local_var_path = "/multi_sig/sign_and_send/{coin}".sub('{' + 'coin' + '}', coin.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SendStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MultisigApi#sign_and_send\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
