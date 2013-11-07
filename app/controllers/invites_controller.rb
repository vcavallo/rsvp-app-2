class InvitesController < ApplicationController

  def new
    @invite = Invite.new
  end

  def create
    @invite = Invite.create(:user_id => params[:invite][:user_id], :event_id => params[:invite][:event_id])

    respond_to do |format|
      if  @invite.is_unique? && @invite.save
        format.html { redirect_to events_path, notice: 'invite was successfully created.' }
        format.json { render action: 'show', status: :created, location: @invite }
      else
        format.html { redirect_to events_path }
        format.json { render json: @invite.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @invite = Invite.find(params[:id])
  end

  def update
    @invite = Invite.find(params[:id])

    respond_to do |format|
      if @invite.update(:rsvp => params[:invite][:rsvp])
        format.html { redirect_to invites_path, notice: 'Event was successfully updated.' }
        # format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

end
