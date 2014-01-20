class WechatController < ApplicationController
  before_action :check_wechat_signature

  def index
    render :text => params[:echostr]
  end

  def create
    puts "Create: ******************************"
    puts params
    puts "Create: ******************************"
    if params[:xml][:MsgType] == "text"
      render "text_resp", :formats => :xml
    elsif params[:xml][:MsgType] == "image"
      render "image_resp", :formats => :xml
    elsif params[:xml][:MsgType] == "location"
      render "location_resp", :formats => :xml
    elsif params[:xml][:MsgType] == "link"
      render "link_resp", :formats => :xml
    elsif params[:xml][:MsgType] == "event"
      render "event_resp", :formats => :xml
    elsif params[:xml][:MsgType] == "voice"
      render "voice_resp", :formats => :xml
    elsif params[:xml][:MsgType] == "video"
      render "video_resp", :formats => :xml
    else
      raise ArgumentError, 'Unknown Message'
    end
  end

  private
  def check_wechat_signature
    array = ["this-is-my-private-token", params[:timestamp], params[:nonce]].sort
    render :text => "Forbidden", :status => 403 if params[:signature] != Digest::SHA1.hexdigest(array.join)
  end
end
