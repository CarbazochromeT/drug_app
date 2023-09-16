Csb.configure do |config|
  config.utf8_bom = true # default: false

  config.after_streaming_error = ->(error) do # default: nil
    Rails.logger.error(error)
    Bugsnag.notify(error)
  end
end

