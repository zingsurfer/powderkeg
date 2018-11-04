require 'rails_helper'

RSpec.describe Snowcast do
  data = {"currently" => {"apparentTemperature" => 70}}
  subject { Snowcast.new(data) }
  describe 'it exists' do
    it {is_expected.to be_a Snowcast}
  end
end
