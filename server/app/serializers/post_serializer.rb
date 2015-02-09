class PostSerializer < ActiveModel::Serializer
  attributes :title, :body, :id

  has_many :comments, except: [:post]
  has_one :user, except: [:posts, :comments]
end
