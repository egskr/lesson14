class web_app (
        ) inherits web_app::params

{
        include ::web_app::java_install
        include ::web_app::jboss_install        
        include ::web_app::jboss_configure       
        include ::web_app::deploy

        notify { "###### MISSION COMPLETE ######" :}
}
