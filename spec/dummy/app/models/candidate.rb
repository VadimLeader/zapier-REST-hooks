# frozen_string_literal: true

class Candidate < ApplicationRecord
  # Relations
  belongs_to :organization

  # Callbacks
  after_create :trigger_hooks_with_owner, if: :organization
  after_create :trigger_hooks_without_owner, unless: :organization

  private

  def trigger_hooks_with_owner
    return unless ZapierRestHooks::Hook.hooks_exist?('new_candidate', organization)

    ZapierRestHooks::Hook.trigger('new_candidate', to_json, organization)
  end

  def trigger_hooks_without_owner
    return unless ZapierRestHooks::Hook.hooks_exist?('new_candidate')

    ZapierRestHooks::Hook.trigger('new_candidate', to_json)
  end
end
