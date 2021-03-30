class Project < ApplicationRecord
  validates :title, :content, presence: true
end
