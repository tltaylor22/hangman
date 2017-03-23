require 'sinatra'

class HangmanApp < Sinatra::Base

	get '/' do
		erb :intro
	end

	post '/intro' do
		erb :name
	end

	post '/name' do
		backend_p1name = params[:p1_name_input]
		backend_p2name = params[:p2_name_input]
		erb :word, :locals => [player1: backend_p1name, player2: backend_p2name]
	end

	post '/word' do
		backend_p1name = params[:p1_name_input]
		backend_p2name = params[:p2_name_input]
		backend_word = params[:word_input]
	erb :word, :locals => {player1: backend_p1name, player2: backend_p2name, word: backend_word}
	end

	post '/play_game' do
		backend_p1name = params[:p1_name_input]
		backend_p2name = params[:p2_name_input]
		backend_word = params[:word_input]
		backend_guess = param[:guess_input]
	erb :word, :locals => {player1: backend_p1name, player2: backend_p2name, word: backend_word}
	end
end

# 	post '/intro' do
# 		yes = params[:yes_select]
# 		redirect '/name?'
# 	end

# 	get '/name' do
# 		intro = params[:intro]
# 		p1name = params[:p1_name_input]
# 		p2name = params[:p2_name_input]
# 		erb :name, locals: {intro: intro}
# 	end

# 	post '/name' do
# 		intro = params[:intro]
# 		p1name = params[:p1_name_input]
# 		p2name = params[:p2_name_input]
# 		redirect '/word?name=' + p1name + p2name
# 	end

# 	get '/word' do
#    		intro = params[:intro]
# 		p1name = params[:p1_name_input]
# 		p2name = params[:p2_name_input]
# 		erb :name, locals: {intro: intro}
#   	end

#   	post


# end
