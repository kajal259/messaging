class Message < ApplicationRecord
  # after_create_message { SendMessageJob.perform_later(message) }
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
end
