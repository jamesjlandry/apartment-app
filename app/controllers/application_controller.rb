require 'pry'
class ApplicationController < Sinatra::Base
  set :views, "app/views"

  get('/tenantlist') do
    @tenants = Tenant.all
    erb :tenantlist
  end

  get('/edit_tenant/:id') do
    @tenant = Tenant.find(params[:id])
    @apartments = Apartment.all
    erb :edit_tenant
  end

  post('/edit_tenant/:id') do
    @tenant = Tenant.find(params[:id])
    if params[:tenant_name] != ""
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
    erb :apartment-list
  end





end
