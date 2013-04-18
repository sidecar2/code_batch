CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAIXF4TRR7MSRLDEZA',                        # required
    :aws_secret_access_key  => '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',                        # required
    :region                 => 'us-west-2',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'codebatch'                     # required
end