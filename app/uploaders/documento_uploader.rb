# encoding: utf-8

class DocumentoUploader < CarrierWave::Uploader::Base

  storage :file
  # storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(doc zip docx pdf odp odt xls xlsx ppt pptx)
  end

end
