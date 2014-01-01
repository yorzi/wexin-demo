class WechatController < ApplicationController

  def auth
    puts "******************************"
    puts params
    puts "******************************"
    render text: "ok from auth"    
  end

  def create
    puts "******************************"
    puts params
    puts "******************************"
    render text: "ok"
  end
end
