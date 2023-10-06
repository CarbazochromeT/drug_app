RakutenWebService.configure do |c|
  # (必須) アプリケーションID
  c.application_id = '1001747226999613896'

  # (任意) 楽天アフィリエイトID
  c.affiliate_id = '35c4cbba.69241d55.35c4cbbb.431cbf37'

  # (Optional) # of retries to send requests when the client receives
  # When the number of requests in some period overcomes the limit, the endpoints will return
  # too many requests error. Then the client tries to retry to send the same request after a
  # while.
    c.max_retries = 3 # default: 5
  # (Optional) Enable debug mode. When set true, the client streams out all HTTP requests and
  # responses to the standard error.
  c.debug = true # default: false
end