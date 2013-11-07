class InvitesController < ApplicationController

  def new
    @invite = Invite.new
  end

  def create
    @invite = Invite.create(:user_id => params[:invite][:user_id], :event_id => params[:invite][:event_id])

    respond_to do |format|
      if @invite.save
        format.html { redirect_to events_path, notice: 'invite was successfully created.' }
        format.json { render action: 'show', status: :created, location: @invite }
      else
        format.html { render action: 'new' }
        format.json { render json: @invite.errors, status: :unprocessable_entity }
      end
    end
  end

end
