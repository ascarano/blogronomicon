class UserSerializer < ActiveModel::Serializer
  attributes :name, :id

  has_many :comments, except: [:post, :user]
  has_many :posts, only: [:title, :id]

end
