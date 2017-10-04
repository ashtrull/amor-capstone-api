# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :offers, dependent: :destroy
  has_many :requests, dependent: :destroy
end
