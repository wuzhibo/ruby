class MemberInfosController < ApplicationController
  # GET /member_infos
  # GET /member_infos.xml
  def index
    @member_infos = MemberInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @member_infos }
    end
  end

  # GET /member_infos/1
  # GET /member_infos/1.xml
  def show
    @member_info = MemberInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @member_info }
    end
  end

  # GET /member_infos/new
  # GET /member_infos/new.xml
  def new
    @member_info = MemberInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @member_info }
    end
  end

  # GET /member_infos/1/edit
  def edit
    @member_info = MemberInfo.find(params[:id])
  end

  # POST /member_infos
  # POST /member_infos.xml
  def create
    @member_info = MemberInfo.new(params[:member_info])

    respond_to do |format|
      if @member_info.save
        format.html { redirect_to(@member_info, :notice => 'MemberInfo was successfully created.') }
        format.xml  { render :xml => @member_info, :status => :created, :location => @member_info }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @member_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /member_infos/1
  # PUT /member_infos/1.xml
  def update
    @member_info = MemberInfo.find(params[:id])

    respond_to do |format|
      if @member_info.update_attributes(params[:member_info])
        format.html { redirect_to(@member_info, :notice => 'MemberInfo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @member_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /member_infos/1
  # DELETE /member_infos/1.xml
  def destroy
    @member_info = MemberInfo.find(params[:id])
    @member_info.destroy

    respond_to do |format|
      format.html { redirect_to(member_infos_url) }
      format.xml  { head :ok }
    end
  end
end
