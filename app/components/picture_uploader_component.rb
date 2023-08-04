# frozen_string_literal: true

class PictureUploaderComponent < ViewComponent::Base
  attr_accessor :form, :image, :fallback

  def initialize(form:, image:, fallback:)
    @form = form
    @image = image
    @fallback = fallback
  end
end
