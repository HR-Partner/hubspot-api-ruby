require 'spec_helper'

describe 'Hubspot::Cms::Hubdb::RowsBatchApi' do
  subject(:rows_batch_api) { Hubspot::Cms::Hubdb::RowsBatchApi.new }
  
  it { is_expected.to respond_to(:batch_clone_draft_table_rows) }
  it { is_expected.to respond_to(:batch_create_draft_table_rows) }
  it { is_expected.to respond_to(:batch_purge_draft_table_rows) }
  it { is_expected.to respond_to(:batch_read_draft_table_rows) }
  it { is_expected.to respond_to(:batch_read_table_rows) }
  it { is_expected.to respond_to(:batch_replace_draft_table_rows) }
  it { is_expected.to respond_to(:batch_update_draft_table_rows) }
end
