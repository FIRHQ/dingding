require "dingding/version"
require 'dingding/server/server'
require 'dingding/server/user'
require 'dingding/server/jsapi'
module Dingding
  INTERFACE_URL = 'https://oapi.dingtalk.com'
  class << self
    attr_accessor :corpid, :corpsecret
  end
end
