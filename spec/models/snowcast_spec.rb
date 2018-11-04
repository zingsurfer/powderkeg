require 'rails_helper'

RSpec.describe Snowcast, type: :model do
  describe 'relationships' do
    it {should belong_to(:resort)}
  end
end
