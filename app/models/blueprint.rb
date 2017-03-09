class Blueprint < ApplicationRecord
  belongs_to :user
  has_many :stories
  has_many :projects
  has_many :users, through: :projects
end