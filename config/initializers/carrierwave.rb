CarrierWave.configure do |config|

  if Rails.env.test? || Rails.env.development?
    config.storage = :file
    config.enable_processing = false
    config.root = "#{Rails.root}/tmp"
  else
    config.storage = :fog
    config.fog_credentials = {
      :provider => 'AWS',
      :aws_access_key_id => ENV['S3_KEY'],
      :aws_secret_access_key => ENV['S3_SECRET'],
      :region => ENV['S3_REGION']
    }
    config.fog_directory = ENV['S3_DIR_NAME']
    config.fog_public = :true # Not sure
  end

end
