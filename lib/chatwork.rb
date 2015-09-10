require "chatwork/version"

module ChatWork
  autoload(:Client, 'chatwork/client')
  autoload(:Operations, 'chatwork/operations')
  autoload(:ChatWorkError, 'chatwork/chatwork_error')
  autoload(:APIConnectionError, 'chatwork/chatwork_error')
  autoload(:APIError, 'chatwork/chatwork_error')
  autoload(:Room, 'chatwork/room')
  autoload(:Entity, 'chatwork/entity')
  autoload(:Message, 'chatwork/message')
  autoload(:Me, 'chatwork/me')
  autoload(:MyTask, 'chatwork/my_task')
  autoload(:Task, 'chatwork/task')
  autoload(:Member, 'chatwork/member')

  @api_base = 'https://api.chatwork.com/'
  @api_version = '/v1'
  @api_key = nil
  @timeout = nil

  class << self
    def client
      @client ||= Client.new(@api_key, @api_base, @api_version, @timeout)
    end

    def api_base=(new_value)
      @api_base = new_value
      @client = nil
    end

    def api_key=(new_value)
      @api_key = new_value
      @client = nil
    end

    def timeout=(new_value)
      @timeout = new_value
      @client = nil
    end

    def api_base
      @api_base
    end

    def api_key
      @api_key
    end

    def timeout
      @timeout
    end
  end
end
