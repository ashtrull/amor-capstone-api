# frozen_string_literal: true

class Request < ApplicationRecord
  belongs_to :user
  has_one :match, dependent: :destroy
end
