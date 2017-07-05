class HomeController < ApplicationController

	def index
		if user_signed_in?
			redirect_to ofertas_url #modificar quando criar página de professor logado
		end
	end
	# def index
	# 	if user_signed_in?
	# 		redirect_to ofertas_path #modificar quando criar página de professor logado
	# 	else
	# 		redirect_to new_user_session_path
	# 	end
end
# Controller responsável pela página inicial
# TODO: diferentes inicializações dependendo do login aluno/professor
