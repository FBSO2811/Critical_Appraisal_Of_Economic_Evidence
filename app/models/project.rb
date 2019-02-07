class Project < ApplicationRecord
  belongs_to :user
  has_many :papers, dependent: :destroy
  has_many :questions

  validates  :title, :body ,presence: true

end
