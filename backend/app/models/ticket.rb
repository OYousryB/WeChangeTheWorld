class Ticket < ApplicationRecord
  # Scope & Enum
  enum type: %i[story task sub_task bug]
  enum state: %i[open in_progress closed in_review done]
  enum status: %i[published unpublished]
  enum priority: %i[lowest low medium high highest]

  # Validation
  validates :name, :type, :state, :status, :priority, presence: true

  # Actions

  # Dependencies
  has_many :sub_tickets

  # Methods
end
