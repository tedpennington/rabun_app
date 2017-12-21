CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAI6NPR7T7W3APLECA',                        # required
    aws_secret_access_key: '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',                        # required

  }
  config.fog_directory  = 'rabun-app'                          # required
  
end