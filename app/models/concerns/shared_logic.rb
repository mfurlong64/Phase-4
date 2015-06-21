module UserInteractions
  extend ActiveSupport::Concern
  included do
    has_many :tags, as: :taggable
    has_many :comments, as: :commentable
    has_many :votes, as: :voteable
    has_many :groups, as: :groupable
    has_many :users, through: :groups
  end

  end