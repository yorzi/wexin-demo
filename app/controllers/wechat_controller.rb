class WechatController < ApplicationController

  def create
    puts "******************************"
    puts params
    puts "******************************"
    render text: "ok"
  end
end
