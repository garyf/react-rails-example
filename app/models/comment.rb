class Comment < ActiveRecord::Base

  def self.author_text_id_by_created_at
    order('created_at').select(:id, :author, :text)
  end
end
