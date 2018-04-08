require 'rails_helper'

RSpec.describe Blog, type: :model do

	describe 'テストデータ作成' do
		xit 'テストデータが作成される' do
			pending('調査中')
		  blog = FactoryBot.create(:blog)

		  expect(blog.present?).to be true
	  end

	  it 'テストデータが上書きできる' do
		  blog = FactoryBot.create(:blog, writer:'asopasomaso')

		  expect(blog.writer).to eq 'asopasomaso'
	  end

	  it 'テストデータがnilで作成できる' do
		  blog = FactoryBot.build(:blog)

		  expect(blog.id).to eq nil
	  end

		it 'nilは追加できない' do
			s = "ABC"
			expect { s << nil }.to raise_error(TypeError)
		end

		context 'テストデータ作成' do
			let!(:blog_1) { Blog.create(title: 'aaa') }

			it 'let' do
				pending('調査中')
				expect(blog_1.title).to eq 'aaaa'
			end
		end
	end
end
