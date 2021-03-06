class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy # a ordem importa aqui
  has_many :movies, through: :bookmarks

  validates :name, presence: true, uniqueness: true
end
