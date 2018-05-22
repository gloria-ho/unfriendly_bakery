require 'sinatra'
require 'mailgun'
require './cookies'
require './cakes'
require './muffins'

sugar = @cookie_sugar
chocolate = @cookie_chocolate
caramel = @cookie_caramel
chocolate_cake = @cake_chocolate
iced = @cake_iced
pie = @cake_pie
almond = @cupcake_almond
pretzel = @cupcake_pretzel
red_velvet = @cupcake_red_velvet

get ('/') do
  erb(:index)
end

get ('/about') do
  erb(:about)
end

get('/cookies') do
  @sugar = sugar
  @chocolate = chocolate
  @caramel = caramel
  erb(:cookies)
end

get('/cakes') do
  @chocolate = chocolate_cake
  @iced = iced
  @pie = pie
  erb(:cakes)
end

get('/muffins') do
  @almond = almond
  @pretzel = pretzel
  @red_velvet = red_velvet
  erb(:muffins)
end

get('/subscribe') do
  erb(:subscribe)
end

post('/signup') do
  @email = params[:email]
  mg_client = Mailgun::Client.new (ENV['MAILGUN_API_KEY'])
  message_params =  { from: ENV['WDEMAIL'],
                      to:   @email,
                      subject: 'Welcome to the Unfriendly Bakery!',
                      html:  erb(:mail_template, layout: false)
                    }    
  mg_client.send_message ENV['MAILGUN_API_DOMAIN'], message_params
  redirect 'subscribed'
end

get('/subscribed') do
  @email = params[:email]
  erb(:subscribed)
end

get('/visit') do
  erb(:visit)
end