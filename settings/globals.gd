class_name TEMPLATE

class COLLISION_LAYERS:
    const CAMERA : int = 2

class DEBUG:
    class DEFAULT_PROPERTIES:
        class GUI:
            const SCENE_PATH: String = "res://utils/debug/debug.tscn"

class SCENES:
    class MAIN_MENU:
        const  PATH : String = "res://scenes/menus/main/mainMenu.tscn"
    
    class GAME:
        const PATH : String = "res://scenes/game/game3d.tscn"

class CONFIGURATION_FILES:
    class USER: 
        class DEFAULT:
            const PATH : String = "res://settings/template_settings_runtime_default.json"

        class RUNTIME:
            const PATH : String = "user://template_userSettings.json"
