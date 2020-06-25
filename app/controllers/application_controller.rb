require 'pry'
class ApplicationController < Sinatra::Base
  set :views, "app/views"

  get('/tenantlist') do
    @tenants = Tenant.all
    erb :tenantlist
  end

  get "/apartments/new" do 
    @apartment = Apartment.new
    erb :new_apartments
  end

  get "/tenant/new" do 
    @tenant = Tenant.new
    erb :new_tenant
  end

  get('/edit_tenant/:id') do
    @tenant = Tenant.find(params[:id])
    @apartments = Apartment.all
    erb :edit_tenant
  end


  post('/edit_tenant/:id') do
    @tenant = Tenant.find(params[:id])
    if params[:tenant_name] != "" || params[:tenant_name] == nil
      @tenant.name = params[:tenant_name]
    end
    if params[:tenant_address] != ""
      @tenant.apartment_id = params[:apartment_address]
    end
    @tenant.save()
    redirect to "/tenantlist"

  end

  get'/apartment-list' do
    @apartments = Apartment.all
    erb :apartment_list
  end

  get'/apartment-details/:id' do
    @tenants = Tenant.all
    @apartment= Apartment.find(params[:id])
    @apartments = Apartment.all
    erb :apartment_details
  end

  post "/apartment-list" do
    @apartment = Apartment.create(params)
    redirect to "/apartment-details/#{@apartment.id}"
  end

  post "/tenantlist" do
    @tenant = Tenant.create(params)
    redirect to "/tenantlist"
  end

  delete '/edit_tenant/:id' do
    @tenant = Tenant.find(params[:id])
    @tenant.destroy
    redirect to "/tenantlist"
  end

  delete '/apartment-details/:id' do
    @apartment = Apartment.find(params[:id])
    @apartment.destroy
    redirect to "/apartment-list"
  end



end
