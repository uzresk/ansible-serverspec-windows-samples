require 'spec_helper'

describe user('test') do
  it { should exist }
  it { should belong_to_group 'test-group' }
end

