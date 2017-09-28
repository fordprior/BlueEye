class Team < ApplicationRecord
  has_many :apps

  def self.load_apps
    eager_load(:apps) if apps.count > 0
  end
end
