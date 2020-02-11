class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @location = Location.all
    @notebook = Notebook.all
    @note = Note.new
  end

  def create
    @note = Note.create(note_params)
    if @note.valid?
      redirect_to note_path(@note)
    else
      flash[:errors] = @note.errors.full_messages
      redirect_to new_note_path
    end
  end

  def edit
    @location = Location.all
    @notebook = Notebook.all
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    @note.update(note_params)

    if @note.valid?
      redirect_to note_path(@note)
    else
      flash[:errors] = @note.errors.full_messages
      redirect_to edit_note_path
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to notes_path
  end

  private

  def note_params
    params.require(:note).permit(:title, :content, :location_id, :notebook_id)
  end
end
