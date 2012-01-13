class NodeCommentsController < ApplicationController
  # GET /node_comments
  # GET /node_comments.json
  def index
    @node_comments = NodeComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @node_comments }
    end
  end

  # GET /node_comments/1
  # GET /node_comments/1.json
  def show
    @node_comment = NodeComment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @node_comment }
    end
  end

  # GET /node_comments/new
  # GET /node_comments/new.json
  def new
    @node_comment = NodeComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @node_comment }
    end
  end

  # GET /node_comments/1/edit
  def edit
    @node_comment = NodeComment.find(params[:id])
  end

  # POST /node_comments
  # POST /node_comments.json
  def create
    @node_comment = NodeComment.new(params[:node_comment])

    respond_to do |format|
      if @node_comment.save
        format.html { redirect_to @node_comment, notice: 'Node comment was successfully created.' }
        format.json { render json: @node_comment, status: :created, location: @node_comment }
      else
        format.html { render action: "new" }
        format.json { render json: @node_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /node_comments/1
  # PUT /node_comments/1.json
  def update
    @node_comment = NodeComment.find(params[:id])

    respond_to do |format|
      if @node_comment.update_attributes(params[:node_comment])
        format.html { redirect_to @node_comment, notice: 'Node comment was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @node_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /node_comments/1
  # DELETE /node_comments/1.json
  def destroy
    @node_comment = NodeComment.find(params[:id])
    @node_comment.destroy

    respond_to do |format|
      format.html { redirect_to node_comments_url }
      format.json { head :ok }
    end
  end
end
