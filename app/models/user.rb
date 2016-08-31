class User < ActiveRecord::Base
  validates :username, uniqueness: true, on: :create
  validates_numericality_of :age
  has_many :challenges, dependent: :destroy, foreign_key: "author_id"
end
