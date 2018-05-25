class NotesController < ApplicationController
  def index
    @note = Note.new
  end
  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to notes_path
    else
      render :index
    end
  end

  private

  def note_params
     # ストロングパラメータはフォームで入力した内容を受け取る
    params.require(:note).permit(:title, :body　：User_id)
  end

end
