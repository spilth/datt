class Document < ApplicationRecord
  has_many :sections, dependent: :destroy
  has_many :variants, dependent: :destroy
  has_many :contents, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
end
