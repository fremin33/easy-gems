# Redirige l'user sur la page d'authentification sauf si c'est un current_user (pas d'accès à la page admin) soit un admin (accès à la page)
def authenticate_admin!
  redirect_to new_user_session_path unless current_user && current_user.admin
end

ActiveAdmin.setup do |config|
# Titre de la page admin
  config.site_title = "Interface Active Admin"
# On utilise la méthode pour se connecter définit avant
  config.authentication_method = :authenticate_admin!
# On précise que l'utilisateur pour y avoir accès doit être un current user
  config.current_user_method = :current_user
# Permet d'indiquer la méthode pour se déconnecter
  config.logout_link_path = :destroy_user_session_path
# Permet d'indiquer la méthode à utiliser pour se déconnecter
  config.logout_link_method = :delete
end
