class MediaCategoriesController < ApplicationController
  # GET /media_categories
  # GET /media_categories.xml
  def index
    @media_categories = MediaCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @media_categories }
    end
  end

  # GET /media_categories/1
  # GET /media_categories/1.xml
  def show
    @media_category = MediaCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @media_category }
    end
  end

  # GET /media_categories/new
  # GET /media_categories/new.xml
  def new
    @media_category = MediaCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @media_category }
    end
  end

  # GET /media_categories/1/edit
  def edit
    @media_category = MediaCategory.find(params[:id])
  end

  # POST /media_categories
  # POST /media_categories.xml
  def create
    @media_category = MediaCategory.new(params[:media_category])

    respond_to do |format|
      if @media_category.save
        format.html { redirect_to(@media_category, :notice => 'Media category was successfully created.') }
        format.xml  { render :xml => @media_category, :status => :created, :location => @media_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @media_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /media_categories/1
  # PUT /media_categories/1.xml
  def update
    @media_category = MediaCategory.find(params[:id])

    respond_to do |format|
      if @media_category.update_attributes(params[:media_category])
        format.html { redirect_to(@media_category, :notice => 'Media category was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @media_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /media_categories/1
  # DELETE /media_categories/1.xml
  def destroy
    @media_category = MediaCategory.find(params[:id])
    @media_category.destroy

    respond_to do |format|
      format.html { redirect_to(media_categories_url) }
      format.xml  { head :ok }
    end
  end
end
