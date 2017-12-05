require 'json'
module Dingding

  class Server
    # 初始化
    def initialize(corp_id, corp_secret)
      @corp_id = corp_id
      @corp_secret = corp_secret
    end

    # get token
    def fetch_access_token
      token = fetch_access_token_by_dingding
      token
    end

    private
    # 查询AccessToken，
    def fetch_access_token_by_dingding
      uri = URI(INTERFACE_URL + '/gettoken?' + 'corpid=' + @corp_id + '&corpsecret=' + @corp_secret)
      response = Net::HTTP.get(uri)
      result = JSON.parse(response)
      @token = result['access_token']
    end
  end
end