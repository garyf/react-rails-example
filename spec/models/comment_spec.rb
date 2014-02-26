require 'spec_helper'

describe Comment do
  describe '::author_text_id_by_created_at' do
    before do
      @c0 = cr(created_at: Time.now - 1)
      @c1 = cr(
        author: 'J. K. Rowling',
        text: 'Harry Potter')
    end
    subject { Comment.author_text_id_by_created_at }
    it do
      expect(subject.length).to eql 2
      expect(subject[0].id).to eql @c0.id
      c1 = subject[1]
      expect(c1.id).to eql @c1.id
      expect(c1.author).to eql 'J. K. Rowling'
      expect(c1.text).to eql 'Harry Potter'
    end
  end

  private

  def cr(options = {})
    FactoryGirl.create(:comment, options)
  end
end
