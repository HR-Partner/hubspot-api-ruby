require 'spec_helper'

describe 'Hubspot::Crm::Timeline::TemplatesApi' do
  subject(:templates_api) { Hubspot::Crm::Timeline::TemplatesApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_all) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:update) }
end
