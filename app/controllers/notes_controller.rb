class NotesController < ApplicationController
  def create
    @application = Application.find(params[:application_id])
    @note = @application.notes.create(note_params)
    redirect_to application_path(@application)
  end
  
  def destroy
    @application = Application.find(params[:application_id])
    @note = @application.notes.find(params[:id])
    @note.destroy
    redirect_to application_path(@application)
  end
 
  private
    def note_params
      params.require(:note).permit(:body)
    end
end
