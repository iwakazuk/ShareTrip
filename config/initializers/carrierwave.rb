CarrierWave.configure do |config|  
  config.fog_credentials = {  
    provider: 'AWS',
    aws_access_key_id: 'AKIAQDN4SWGDG25OWBWD',
    aws_secret_access_key: '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',
    region: 'ap-northeast-1'
  }  
  config.fog_directory  = 'iwakazuk-sharetrip'
  config.asset_host = 'https://iwakazuk-sharetrip.s3.amazonaws.com'
  config.cache_storage = :fog
  config.fog_provider = 'fog/aws'
end