class OrderListsController < ApplicationController
  # GET /order_lists
  # GET /order_lists.xml
  def index
    @order_lists = OrderList.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @order_lists }
    end
  end

  # GET /order_lists/1
  # GET /order_lists/1.xml
  def show
    @order_list = OrderList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @order_list }
    end
  end

  # GET /order_lists/new
  # GET /order_lists/new.xml
  def new
    @order_list = OrderList.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @order_list }
    end
  end

  # GET /order_lists/1/edit
  def edit
    @order_list = OrderList.find(params[:id])
  end

  # POST /order_lists
  # POST /order_lists.xml
  def create
    @order_list = OrderList.new(params[:order_list])

    respond_to do |format|
      if @order_list.save
        format.html { redirect_to(@order_list, :notice => 'OrderList was successfully created.') }
        format.xml  { render :xml => @order_list, :status => :created, :location => @order_list }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @order_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /order_lists/1
  # PUT /order_lists/1.xml
  def update
    @order_list = OrderList.find(params[:id])

    respond_to do |format|
      if @order_list.update_attributes(params[:order_list])
        format.html { redirect_to(@order_list, :notice => 'OrderList was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @order_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /order_lists/1
  # DELETE /order_lists/1.xml
  def destroy
    @order_list = OrderList.find(params[:id])
    @order_list.destroy

    respond_to do |format|
      format.html { redirect_to(order_lists_url) }
      format.xml  { head :ok }
    end
  end
end
