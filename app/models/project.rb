class Project < ApplicationRecord

  def self.search(search)
    where("lower(title) LIKE ?", "%#{search}%")
  end


  belongs_to :user
  has_many :papers, dependent: :destroy
  has_many :questions
  has_many :contentquestions

  validates  :title, :body ,presence: true



end
