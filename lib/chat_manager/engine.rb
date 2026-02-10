module ChatManager
  class Engine < ::Rails::Engine
    isolate_namespace ChatManager

    initializer "chat_manager.controllers" do
      ActiveSupport.on_load(:action_controller) do
        include ChatManager::ChatManageable
      end
    end
  end
end
