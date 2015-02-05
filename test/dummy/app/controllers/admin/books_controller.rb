class Admin::BooksController < AdminController
  before_action :set_admin_book, only: [:show, :edit, :update, :destroy]

  # GET /admin/books
  def index
    @admin_books = Admin::Book.all
  end

  # GET /admin/books/1
  def show
  end

  # GET /admin/books/new
  def new
    @admin_book = Admin::Book.new
  end

  # GET /admin/books/1/edit
  def edit
  end

  # POST /admin/books
  def create
    @admin_book = Admin::Book.new(admin_book_params)

    if @admin_book.save
      redirect_to @admin_book, notice: 'Book was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/books/1
  def update
    if @admin_book.update(admin_book_params)
      redirect_to @admin_book, notice: 'Book was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/books/1
  def destroy
    @admin_book.destroy
    redirect_to admin_books_url, notice: 'Book was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_book
      @admin_book = Admin::Book.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_book_params
      params.require(:admin_book).permit(:name, :desc, :publish_at)
    end
end
