=begin
#CRM Objects

#CRM objects such as companies, contacts, deals, line items, products, tickets, and quotes are standard objects in HubSpot’s CRM. These core building blocks support custom properties, store critical information, and play a central role in the HubSpot application.  ## Supported Object Types  This API provides access to collections of CRM objects, which return a map of property names to values. Each object type has its own set of default properties, which can be found by exploring the [CRM Object Properties API](https://developers.hubspot.com/docs/methods/crm-properties/crm-properties-overview).  |Object Type |Properties returned by default | |--|--| | `companies` | `name`, `domain` | | `contacts` | `firstname`, `lastname`, `email` | | `deals` | `dealname`, `amount`, `closedate`, `pipeline`, `dealstage` | | `products` | `name`, `description`, `price` | | `tickets` | `content`, `hs_pipeline`, `hs_pipeline_stage`, `hs_ticket_category`, `hs_ticket_priority`, `subject` |  Find a list of all properties for an object type using the [CRM Object Properties](https://developers.hubspot.com/docs/methods/crm-properties/get-properties) API. e.g. `GET https://api.hubapi.com/properties/v2/companies/properties`. Change the properties returned in the response using the `properties` array in the request body.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Crm::Objects::AssociationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AssociationsApi' do
  before do
    # run before each test
    @api_instance = Hubspot::Crm::Objects::AssociationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AssociationsApi' do
    it 'should create an instance of AssociationsApi' do
      expect(@api_instance).to be_instance_of(Hubspot::Crm::Objects::AssociationsApi)
    end
  end

  # unit tests for archive
  # Remove an association between two objects
  # @param object_type 
  # @param object_id 
  # @param to_object_type 
  # @param to_object_id 
  # @param association_type 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'archive test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create
  # Associate an object with another object
  # @param object_type 
  # @param object_id 
  # @param to_object_type 
  # @param to_object_id 
  # @param association_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :paginate_associations 
  # @return [SimplePublicObject]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all
  # List associations of an object by type
  # @param object_type 
  # @param object_id 
  # @param to_object_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :paginate_associations 
  # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
  # @option opts [Integer] :limit The maximum number of results to display per page.
  # @return [CollectionResponseAssociatedId]
  describe 'get_all test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
