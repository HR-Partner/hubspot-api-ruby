=begin
#CRM Pipelines

#Pipelines represent distinct stages in a workflow, like closing a deal or servicing a support ticket. These endpoints provide access to read and modify pipelines in HubSpot. Pipelines support `deals` and `tickets` object types.  ## Pipeline ID validation  When calling endpoints that take pipelineId as a parameter, that ID must correspond to an existing, un-archived pipeline. Otherwise the request will fail with a `404 Not Found` response.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'date'

module Hubspot
  module Crm
    module Pipelines
      # A pipeline stage definition.
      class PipelineStage
        # The date the pipeline stage was created. The stages on default pipelines will have createdAt = 0.
        attr_accessor :created_at

        # The date the pipeline was archived. `archivedAt` will only be present if the pipeline is archived.
        attr_accessor :archived_at

        # The date the pipeline stage was last updated.
        attr_accessor :updated_at

        # Whether the pipeline is archived.
        attr_accessor :archived

        # A label used to organize pipeline stages in HubSpot's UI. Each pipeline stage's label must be unique within that pipeline.
        attr_accessor :label

        # The order for displaying this pipeline stage. If two pipeline stages have a matching `displayOrder`, they will be sorted alphabetically by label.
        attr_accessor :display_order

        # A JSON object containing properties that are not present on all object pipelines.  For `deals` pipelines, the `probability` field is required (`{ \"probability\": 0.5 }`), and represents the likelihood a deal will close. Possible values are between 0.0 and 1.0 in increments of 0.1.  For `tickets` pipelines, the `ticketState` field is optional (`{ \"ticketState\": \"OPEN\" }`), and represents whether the ticket remains open or has been closed by a member of your Support team. Possible values are `OPEN` or `CLOSED`.
        attr_accessor :metadata

        # A unique identifier generated by HubSpot that can be used to retrieve and update the pipeline stage.
        attr_accessor :id

        # Attribute mapping from ruby-style variable name to JSON key.
        def self.attribute_map
          {
            :'created_at' => :'createdAt',
            :'archived_at' => :'archivedAt',
            :'updated_at' => :'updatedAt',
            :'archived' => :'archived',
            :'label' => :'label',
            :'display_order' => :'displayOrder',
            :'metadata' => :'metadata',
            :'id' => :'id'
          }
        end

        # Attribute type mapping.
        def self.openapi_types
          {
            :'created_at' => :'DateTime',
            :'archived_at' => :'DateTime',
            :'updated_at' => :'DateTime',
            :'archived' => :'Boolean',
            :'label' => :'String',
            :'display_order' => :'Integer',
            :'metadata' => :'Hash<String, String>',
            :'id' => :'String'
          }
        end

        # List of attributes with nullable: true
        def self.openapi_nullable
          Set.new([
          ])
        end

        # Initializes the object
        # @param [Hash] attributes Model attributes in the form of hash
        def initialize(attributes = {})
          if (!attributes.is_a?(Hash))
            fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Crm::Pipelines::PipelineStage` initialize method"
          end

          # check to see if the attribute exists and convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h|
            if (!self.class.attribute_map.key?(k.to_sym))
              fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Crm::Pipelines::PipelineStage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
            end
            h[k.to_sym] = v
          }

          if attributes.key?(:'created_at')
            self.created_at = attributes[:'created_at']
          end

          if attributes.key?(:'archived_at')
            self.archived_at = attributes[:'archived_at']
          end

          if attributes.key?(:'updated_at')
            self.updated_at = attributes[:'updated_at']
          end

          if attributes.key?(:'archived')
            self.archived = attributes[:'archived']
          end

          if attributes.key?(:'label')
            self.label = attributes[:'label']
          end

          if attributes.key?(:'display_order')
            self.display_order = attributes[:'display_order']
          end

          if attributes.key?(:'metadata')
            if (value = attributes[:'metadata']).is_a?(Hash)
              self.metadata = value
            end
          end

          if attributes.key?(:'id')
            self.id = attributes[:'id']
          end
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          invalid_properties = Array.new
          if @created_at.nil?
            invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
          end

          if @updated_at.nil?
            invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
          end

          if @archived.nil?
            invalid_properties.push('invalid value for "archived", archived cannot be nil.')
          end

          if @label.nil?
            invalid_properties.push('invalid value for "label", label cannot be nil.')
          end

          if @display_order.nil?
            invalid_properties.push('invalid value for "display_order", display_order cannot be nil.')
          end

          if @metadata.nil?
            invalid_properties.push('invalid value for "metadata", metadata cannot be nil.')
          end

          if @id.nil?
            invalid_properties.push('invalid value for "id", id cannot be nil.')
          end

          invalid_properties
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          return false if @created_at.nil?
          return false if @updated_at.nil?
          return false if @archived.nil?
          return false if @label.nil?
          return false if @display_order.nil?
          return false if @metadata.nil?
          return false if @id.nil?
          true
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(o)
          return true if self.equal?(o)
          self.class == o.class &&
              created_at == o.created_at &&
              archived_at == o.archived_at &&
              updated_at == o.updated_at &&
              archived == o.archived &&
              label == o.label &&
              display_order == o.display_order &&
              metadata == o.metadata &&
              id == o.id
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(o)
          self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Integer] Hash code
        def hash
          [created_at, archived_at, updated_at, archived, label, display_order, metadata, id].hash
        end

        # Builds the object from hash
        # @param [Hash] attributes Model attributes in the form of hash
        # @return [Object] Returns the model itself
        def self.build_from_hash(attributes)
          new.build_from_hash(attributes)
        end

        # Builds the object from hash
        # @param [Hash] attributes Model attributes in the form of hash
        # @return [Object] Returns the model itself
        def build_from_hash(attributes)
          return nil unless attributes.is_a?(Hash)
          self.class.openapi_types.each_pair do |key, type|
            if type =~ /\AArray<(.*)>/i
              # check to ensure the input is an array given that the attribute
              # is documented as an array but the input is not
              if attributes[self.class.attribute_map[key]].is_a?(Array)
                self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
              end
            elsif !attributes[self.class.attribute_map[key]].nil?
              self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
            end # or else data not found in attributes(hash), not an issue as the data can be optional
          end

          self
        end

        # Deserializes the data based on type
        # @param string type Data type
        # @param string value Value to be deserialized
        # @return [Object] Deserialized data
        def _deserialize(type, value)
          case type.to_sym
          when :DateTime
            DateTime.parse(value)
          when :Date
            Date.parse(value)
          when :String
            value.to_s
          when :Integer
            value.to_i
          when :Float
            value.to_f
          when :Boolean
            if value.to_s =~ /\A(true|t|yes|y|1)\z/i
              true
            else
              false
            end
          when :Object
            # generic object (usually a Hash), return directly
            value
          when /\AArray<(?<inner_type>.+)>\z/
            inner_type = Regexp.last_match[:inner_type]
            value.map { |v| _deserialize(inner_type, v) }
          when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
            k_type = Regexp.last_match[:k_type]
            v_type = Regexp.last_match[:v_type]
            {}.tap do |hash|
              value.each do |k, v|
                hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
              end
            end
          else # model
            Hubspot::Crm::Pipelines.const_get(type).build_from_hash(value)
          end
        end

        # Returns the string representation of the object
        # @return [String] String presentation of the object
        def to_s
          to_hash.to_s
        end

        # to_body is an alias to to_hash (backward compatibility)
        # @return [Hash] Returns the object in the form of hash
        def to_body
          to_hash
        end

        # Returns the object in the form of hash
        # @return [Hash] Returns the object in the form of hash
        def to_hash
          hash = {}
          self.class.attribute_map.each_pair do |attr, param|
            value = self.send(attr)
            if value.nil?
              is_nullable = self.class.openapi_nullable.include?(attr)
              next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
            end
            
            hash[param] = _to_hash(value)
          end
          hash
        end

        # Outputs non-array value in the form of hash
        # For object, use to_hash. Otherwise, just return the value
        # @param [Object] value Any valid value
        # @return [Hash] Returns the value in the form of hash
        def _to_hash(value)
          if value.is_a?(Array)
            value.compact.map { |v| _to_hash(v) }
          elsif value.is_a?(Hash)
            {}.tap do |hash|
              value.each { |k, v| hash[k] = _to_hash(v) }
            end
          elsif value.respond_to? :to_hash
            value.to_hash
          else
            value
          end
        end
      end
    end
  end
end