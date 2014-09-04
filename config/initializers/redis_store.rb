

redis_uri = ENV["REDIS_URI"] || "redis://localhost:6379/0/sandbox"
Rails.logger.info "Using redis connection string: #{redis_uri}"
Rails.application.config.cache_store = :redis_store, redis_uri, { expires_in: 90.minutes }
Rails.application.config.session_store :redis_store, redis_server: redis_uri
