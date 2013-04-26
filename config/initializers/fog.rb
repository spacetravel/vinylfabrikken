CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAI2J75VJLDQRV5EHQ',       # required
    :aws_secret_access_key  => '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',       # required
    :region                 => 'eu-west-1'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'vinylfabrikken'                     # required
  # config.fog_host       = 'https://assets.example.com'            # optional, defaults to nil
  config.fog_public     = true                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end