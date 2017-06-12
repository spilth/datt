class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  # GET /contents
  # GET /contents.json
  def index
    @contents = Content.all
  end

  # GET /contents/1
  # GET /contents/1.json
  def show
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true, fenced_code_blocks: true)
    @body_html = markdown.render(@content.body)
  end

  # GET /contents/new
  def new
    @document = Document.find(params['document'])
    @section = Section.find(params['section'])
    @variant = Variant.find(params['variant'])
    @content = Content.new(document: @document, section: @section, variant: @variant)
  end

  # GET /contents/1/edit
  def edit
    @document = @content.document
    @section = @content.section
    @variant = @content.variant
  end

  # POST /contents
  # POST /contents.json
  def create
    @content = Content.new(content_params)

    respond_to do |format|
      if @content.save
        format.html { redirect_to document_path(@content.document, variant: @content.variant), notice: 'Content was successfully created.' }
        format.json { render :show, status: :created, location: @content }
      else
        @document = @content.document
        @section = @content.section
        @variant = @content.variant

        format.html { render :new }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contents/1
  # PATCH/PUT /contents/1.json
  def update
    respond_to do |format|
      if @content.update(content_params)
        format.html { redirect_to document_path(@content.document, variant: @content.variant), notice: 'Content was successfully updated.' }
        format.json { render :show, status: :ok, location: @content }
      else
        @document = @content.document
        @section = @content.section
        @variant = @content.variant

        format.html { render :edit }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contents/1
  # DELETE /contents/1.json
  def destroy
    @content.destroy
    respond_to do |format|
      format.html { redirect_to contents_url, notice: 'Content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content
      @content = Content.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def content_params
      params.require(:content).permit(:document_id, :section_id, :variant_id, :body)
    end
end
