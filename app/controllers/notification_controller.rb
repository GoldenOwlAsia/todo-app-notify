class NotificationController < ApplicationController
  def notify
    Notification.find_by_uid(params[:id]).update(notification_params)
    render json: { success: true }, status: 200
  end

  def notify_all
    Notification.push_nofitications(notification_params)
    render json: { success: true }, status: 200
  end

  def create
    param! :uid, String, required: true
    @user = Notification.find_by_uid(params[:uid]) || Notification.new(uid: params[:uid], title: 'Do Next?', message: 'You\'re subscribe successfully!!')
    @user.save if @user.id.nil?

    render json: @user, status: 201
  end

  def destroy
    param! :id, String, required: true
    @user = Notification.find_by_uid(params[:id])
    @user.destroy
    head status: 204
  end

  def fetch
    registration = Notification.find_by_uid(params[:id]) || {}
    render json: registration, status: 200
  end

  private

  def notification_params
    {
      title: params[:title] || 'Do Next?',
      message: params[:message]
    }
  end
end
