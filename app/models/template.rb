class Template < ApplicationRecord
  has_many :form_step, dependent: :destroy
  validates :name, presence: true
end
