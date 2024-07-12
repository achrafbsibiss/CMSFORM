class FormStep < ApplicationRecord
  belongs_to :template
  has_many :fields, dependent: :destroy
end
