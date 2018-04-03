require 'rails_helper'

RSpec.describe Blog, type: :model do

	describe '#hoge' do
	  it 'バリデーションが通ること' do
      blog = FactoryBot.create(:blog)

      expect(blog).to be_valid
	  end
	end
end
