class CommentSerializer < ActiveModel::Serializer
  attributes :body, :id

  has_one :post, except: [:user]
  has_one :user, except: [:posts, :comments]
end
