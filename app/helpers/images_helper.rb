# frozen_string_literal: true

module ImagesHelper
  def image_tag(source, options = {})
    super(source, options) if source.present?
  end

  def svg(name, classes: "", style: "")
    file_path = if name.split(".").include?("svg")
                  Rails.root.join("app/assets/images/#{name}")
                else
                  Rails.root.join("app/assets/images/#{name}.svg")
                end
    return unless File.exist?(file_path)

    File.read(file_path)
      .then { |text| text.insert(5, "class='#{classes}' style='#{style}'") }
      .then { |text| text.tr!("'", '"') }
      .then(&:html_safe)
  end

  def image_attached(active_storage_asset, fallback: nil, **attrs)
    return unless (path = active_storage_asset&.attached? ? active_storage_asset : fallback)

    image_tag(path, **attrs)
  end
end
