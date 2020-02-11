class NotebooksController < ApplicationController

  def index
    @notebooks = Notebook.all
  end

  def show
    @notebook = Notebook.find(params[:id])
    @notes = Note.where(notebook_id: @notebook.id)
  end

end
