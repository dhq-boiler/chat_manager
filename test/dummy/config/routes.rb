Rails.application.routes.draw do
  mount ChatManager::Engine => "/chat_manager"
end
