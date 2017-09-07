=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  | 

OpenAPI spec version: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module SendinblueApiv3
  class EmailCampaignsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create an email campaign
    # 
    # @param email_campaigns Values to create a campaign
    # @param [Hash] opts the optional parameters
    # @return [CreateModel]
    def create_email_campaign(email_campaigns, opts = {})
      data, _status_code, _headers = create_email_campaign_with_http_info(email_campaigns, opts)
      return data
    end

    # Create an email campaign
    # 
    # @param email_campaigns Values to create a campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateModel, Fixnum, Hash)>] CreateModel data, response status code and response headers
    def create_email_campaign_with_http_info(email_campaigns, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailCampaignsApi.create_email_campaign ..."
      end
      # verify the required parameter 'email_campaigns' is set
      if @api_client.config.client_side_validation && email_campaigns.nil?
        fail ArgumentError, "Missing the required parameter 'email_campaigns' when calling EmailCampaignsApi.create_email_campaign"
      end
      # resource path
      local_var_path = "/emailCampaigns"

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
      post_body = @api_client.object_to_http_body(email_campaigns)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreateModel')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailCampaignsApi#create_email_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an email campaign
    # 
    # @param campaign_id id of the campaign
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_email_campaigns(campaign_id, opts = {})
      delete_email_campaigns_with_http_info(campaign_id, opts)
      return nil
    end

    # Delete an email campaign
    # 
    # @param campaign_id id of the campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_email_campaigns_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailCampaignsApi.delete_email_campaigns ..."
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling EmailCampaignsApi.delete_email_campaigns"
      end
      # resource path
      local_var_path = "/emailCampaigns/{campaignId}".sub('{' + 'campaignId' + '}', campaign_id.to_s)

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
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailCampaignsApi#delete_email_campaigns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export the recipients of a campaign
    # 
    # @param campaign_id Id of the campaign
    # @param [Hash] opts the optional parameters
    # @option opts [EmailExportRecipients] :recipient_export Values to send for a recipient export request
    # @return [CreatedProcessId]
    def email_export_recipients(campaign_id, opts = {})
      data, _status_code, _headers = email_export_recipients_with_http_info(campaign_id, opts)
      return data
    end

    # Export the recipients of a campaign
    # 
    # @param campaign_id Id of the campaign
    # @param [Hash] opts the optional parameters
    # @option opts [EmailExportRecipients] :recipient_export Values to send for a recipient export request
    # @return [Array<(CreatedProcessId, Fixnum, Hash)>] CreatedProcessId data, response status code and response headers
    def email_export_recipients_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailCampaignsApi.email_export_recipients ..."
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling EmailCampaignsApi.email_export_recipients"
      end
      # resource path
      local_var_path = "/emailCampaigns/{campaignId}/exportRecipients".sub('{' + 'campaignId' + '}', campaign_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'recipient_export'])
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreatedProcessId')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailCampaignsApi#email_export_recipients\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get campaign informations
    # 
    # @param campaign_id Id of the campaign
    # @param [Hash] opts the optional parameters
    # @return [GetEmailCampaign]
    def get_email_campaign(campaign_id, opts = {})
      data, _status_code, _headers = get_email_campaign_with_http_info(campaign_id, opts)
      return data
    end

    # Get campaign informations
    # 
    # @param campaign_id Id of the campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetEmailCampaign, Fixnum, Hash)>] GetEmailCampaign data, response status code and response headers
    def get_email_campaign_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailCampaignsApi.get_email_campaign ..."
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling EmailCampaignsApi.get_email_campaign"
      end
      # resource path
      local_var_path = "/emailCampaigns/{campaignId}".sub('{' + 'campaignId' + '}', campaign_id.to_s)

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
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetEmailCampaign')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailCampaignsApi#get_email_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return all your created campaigns
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Filter on the type of the campaigns
    # @option opts [String] :status Filter on the status of the campaign
    # @option opts [Integer] :limit Number of documents per page (default to 500)
    # @option opts [Integer] :offset Index of the first document in the page (default to 0)
    # @return [GetEmailCampaigns]
    def get_email_campaigns(opts = {})
      data, _status_code, _headers = get_email_campaigns_with_http_info(opts)
      return data
    end

    # Return all your created campaigns
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Filter on the type of the campaigns
    # @option opts [String] :status Filter on the status of the campaign
    # @option opts [Integer] :limit Number of documents per page
    # @option opts [Integer] :offset Index of the first document in the page
    # @return [Array<(GetEmailCampaigns, Fixnum, Hash)>] GetEmailCampaigns data, response status code and response headers
    def get_email_campaigns_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailCampaignsApi.get_email_campaigns ..."
      end
      if @api_client.config.client_side_validation && opts[:'type'] && !['classic', 'trigger'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of classic, trigger'
      end
      if @api_client.config.client_side_validation && opts[:'status'] && !['suspended', 'archive', 'darchive', 'sent', 'queued', 'replicate', 'draft', 'inProcess'].include?(opts[:'status'])
        fail ArgumentError, 'invalid value for "status", must be one of suspended, archive, darchive, sent, queued, replicate, draft, inProcess'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling EmailCampaignsApi.get_email_campaigns, must be smaller than or equal to 1000.'
      end

      # resource path
      local_var_path = "/emailCampaigns"

      # query parameters
      query_params = {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetEmailCampaigns')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailCampaignsApi#get_email_campaigns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send an email campaign id of the campaign immediately
    # 
    # @param campaign_id Id of the campaign
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def send_email_campaign_now(campaign_id, opts = {})
      send_email_campaign_now_with_http_info(campaign_id, opts)
      return nil
    end

    # Send an email campaign id of the campaign immediately
    # 
    # @param campaign_id Id of the campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def send_email_campaign_now_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailCampaignsApi.send_email_campaign_now ..."
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling EmailCampaignsApi.send_email_campaign_now"
      end
      # resource path
      local_var_path = "/emailCampaigns/{campaignId}/sendNow".sub('{' + 'campaignId' + '}', campaign_id.to_s)

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
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailCampaignsApi#send_email_campaign_now\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send the report of a campaigns
    # A PDF will be sent to the specified email addresses
    # @param campaign_id Id of the campaign
    # @param send_report Values for send a report
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def send_report(campaign_id, send_report, opts = {})
      send_report_with_http_info(campaign_id, send_report, opts)
      return nil
    end

    # Send the report of a campaigns
    # A PDF will be sent to the specified email addresses
    # @param campaign_id Id of the campaign
    # @param send_report Values for send a report
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def send_report_with_http_info(campaign_id, send_report, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailCampaignsApi.send_report ..."
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling EmailCampaignsApi.send_report"
      end
      # verify the required parameter 'send_report' is set
      if @api_client.config.client_side_validation && send_report.nil?
        fail ArgumentError, "Missing the required parameter 'send_report' when calling EmailCampaignsApi.send_report"
      end
      # resource path
      local_var_path = "/emailCampaigns/{campaignId}/sendReport".sub('{' + 'campaignId' + '}', campaign_id.to_s)

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
      post_body = @api_client.object_to_http_body(send_report)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailCampaignsApi#send_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send an email campaign to your test list
    # 
    # @param campaign_id Id of the campaign
    # @param email_to 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def send_test_email(campaign_id, email_to, opts = {})
      send_test_email_with_http_info(campaign_id, email_to, opts)
      return nil
    end

    # Send an email campaign to your test list
    # 
    # @param campaign_id Id of the campaign
    # @param email_to 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def send_test_email_with_http_info(campaign_id, email_to, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailCampaignsApi.send_test_email ..."
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling EmailCampaignsApi.send_test_email"
      end
      # verify the required parameter 'email_to' is set
      if @api_client.config.client_side_validation && email_to.nil?
        fail ArgumentError, "Missing the required parameter 'email_to' when calling EmailCampaignsApi.send_test_email"
      end
      # resource path
      local_var_path = "/emailCampaigns/{campaignId}/sendTest".sub('{' + 'campaignId' + '}', campaign_id.to_s)

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
      post_body = @api_client.object_to_http_body(email_to)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailCampaignsApi#send_test_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a campaign status
    # 
    # @param campaign_id Id of the campaign
    # @param status Status of the campaign
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_campaign_status(campaign_id, status, opts = {})
      update_campaign_status_with_http_info(campaign_id, status, opts)
      return nil
    end

    # Update a campaign status
    # 
    # @param campaign_id Id of the campaign
    # @param status Status of the campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_campaign_status_with_http_info(campaign_id, status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailCampaignsApi.update_campaign_status ..."
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling EmailCampaignsApi.update_campaign_status"
      end
      # verify the required parameter 'status' is set
      if @api_client.config.client_side_validation && status.nil?
        fail ArgumentError, "Missing the required parameter 'status' when calling EmailCampaignsApi.update_campaign_status"
      end
      # resource path
      local_var_path = "/emailCampaigns/{campaignId}/status".sub('{' + 'campaignId' + '}', campaign_id.to_s)

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
      post_body = @api_client.object_to_http_body(status)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailCampaignsApi#update_campaign_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a campaign
    # 
    # @param campaign_id Id of the campaign
    # @param email_campaign Values to update a campaign
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_email_campaigns(campaign_id, email_campaign, opts = {})
      update_email_campaigns_with_http_info(campaign_id, email_campaign, opts)
      return nil
    end

    # Update a campaign
    # 
    # @param campaign_id Id of the campaign
    # @param email_campaign Values to update a campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_email_campaigns_with_http_info(campaign_id, email_campaign, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailCampaignsApi.update_email_campaigns ..."
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling EmailCampaignsApi.update_email_campaigns"
      end
      # verify the required parameter 'email_campaign' is set
      if @api_client.config.client_side_validation && email_campaign.nil?
        fail ArgumentError, "Missing the required parameter 'email_campaign' when calling EmailCampaignsApi.update_email_campaigns"
      end
      # resource path
      local_var_path = "/emailCampaigns/{campaignId}".sub('{' + 'campaignId' + '}', campaign_id.to_s)

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
      post_body = @api_client.object_to_http_body(email_campaign)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailCampaignsApi#update_email_campaigns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end