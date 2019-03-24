class Contentquestion < ApplicationRecord
  belongs_to :user
  belongs_to :paper
  belongs_to :project
end
