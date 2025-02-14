# frozen_string_literal: true

module JCW
  class Config
    attr_writer :enabled,
                :service_name,
                :subscribe_to,
                :connection,
                :flush_interval,
                :tags

    def enabled
      @enabled ||= false
    end

    alias enabled? enabled

    def service_name
      @service_name ||= "JCW service"
    end

    def subscribe_to
      @subscribe_to ||= []
    end

    def connection
      @connection ||= { protocol: :udp, host: "127.0.0.1", port: 6831 }
    end

    def flush_interval
      @flush_interval ||= 10
    end

    def tags
      @tags ||= {}
    end
  end
end
