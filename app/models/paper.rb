class Paper < ApplicationRecord
  belongs_to :project
  has_many :questions
  has_one_attached :paper_pdf

  # validates :title, :body, :paper_pdf, presence: true



end
