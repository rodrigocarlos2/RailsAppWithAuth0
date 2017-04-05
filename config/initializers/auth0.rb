
Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    'JLnucCWtdXqoPWRAmRvQ5qEbnCGcH6dT',
    '-ba9B5YLl0s3wA3NPFTEuDSBdMH6MUrb1p8T4kEZhwGakuzr5Cw0JoAb_MKIhQm_',
    'rodrigo.au.auth0.com',
    callback_path: "/auth/oauth2/callback"
  )
end