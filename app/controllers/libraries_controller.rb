class LibrariesController < ApplicationController

    def new
        @library = Library.new
        @students = Student.all 
        @books = Book.all 
    end

    def create
        @library = Library.create(params.require(:library).permit(:student_id, :book_id))
        redirect_to student_path(@library.student_id)
    end

end
