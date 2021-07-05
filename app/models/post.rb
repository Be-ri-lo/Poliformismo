class Post < ApplicationRecord
    has_many :comments, as: :commentable

    enum state: %i[draft published]
end
