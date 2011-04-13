class EstabelecimentosController < ApplicationController
  # GET /estabelecimentos
  # GET /estabelecimentos.xml
  def index
    @estabelecimentos = Estabelecimento.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @estabelecimentos }
    end
  end

  # GET /estabelecimentos/1
  # GET /estabelecimentos/1.xml
  def show
    @estabelecimento = Estabelecimento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @estabelecimento }
    end
  end

  # GET /estabelecimentos/new
  # GET /estabelecimentos/new.xml
  def new
    @estabelecimento = Estabelecimento.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @estabelecimento }
    end
  end

  # GET /estabelecimentos/1/edit
  def edit
    @estabelecimento = Estabelecimento.find(params[:id])
  end

  # POST /estabelecimentos
  # POST /estabelecimentos.xml
  def create
    @estabelecimento = Estabelecimento.new(params[:estabelecimento])

    respond_to do |format|
      if @estabelecimento.save
        format.html { redirect_to(@estabelecimento, :notice => 'Estabelecimento was successfully created.') }
        format.xml  { render :xml => @estabelecimento, :status => :created, :location => @estabelecimento }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @estabelecimento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /estabelecimentos/1
  # PUT /estabelecimentos/1.xml
  def update
    @estabelecimento = Estabelecimento.find(params[:id])

    respond_to do |format|
      if @estabelecimento.update_attributes(params[:estabelecimento])
        format.html { redirect_to(@estabelecimento, :notice => 'Estabelecimento was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @estabelecimento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /estabelecimentos/1
  # DELETE /estabelecimentos/1.xml
  def destroy
    @estabelecimento = Estabelecimento.find(params[:id])
    @estabelecimento.destroy

    respond_to do |format|
      format.html { redirect_to(estabelecimentos_url) }
      format.xml  { head :ok }
    end
  end
end
