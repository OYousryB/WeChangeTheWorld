class SubTicket < ApplicationRecord
  # Scope & Enum
  enum type: %i[blocker duplicate related child]

  # Validation
  validates :type, presence: true

  # Actions

  # Dependencies
  belongs_to :ticket

  # Methods
end
