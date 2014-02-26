require 'spec_helper'

describe CommentsController do
  describe 'GET index' do
    before do
      Comment.should_receive(:author_text_id_by_created_at) { comments }
      get :index
    end
    it do
      expect(response.content_type).to eql 'application/json'
      expect(response.body).to eql comments.to_json
    end
  end

  describe 'POST create' do
    before do
      Comment.should_receive(:create).with(valid_attributes)
      Comment.should_receive(:author_text_id_by_created_at) { comments }
      post :create, comment: valid_attributes.merge('some' => 'attribute')
    end
    it do
      expect(response.content_type).to eql 'application/json'
      expect(response.body).to eql comments.to_json
    end
  end

  private

  def comments() [{
    id: '1',
    author: 'Shakespeare',
    text: 'Hamlet'}, {
    id: '2',
    author: 'J. K. Rowling',
    text: 'Harry Potter'}]
  end

  def valid_attributes() {
    'author' => 'Shakespeare',
    'text' => 'Richard II' }
  end
end
