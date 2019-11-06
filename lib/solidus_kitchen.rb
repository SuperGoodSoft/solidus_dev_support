# frozen_string_literal: true

require "solidus_support"
require "solidus_kitchen/version"

module SolidusKitchen
  class Error < StandardError; end

  class << self
    def reset_spree_preferences_deprecated?
      first_version_without_reset = Gem::Requirement.new('>= 2.9')
      first_version_without_reset.satisfied_by?(SolidusSupport.solidus_gem_version)
    end
  end
end
