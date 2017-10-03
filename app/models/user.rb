# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :offers
  has_many :requests
end
