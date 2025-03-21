# A Game Jam Template for Godot 4.4
A simple Game Jam Template for Godot 4.4, containing many commonly needed features.

## Features
- Main and In-Game Menu
- Scene Transitions with Loading Screen
- Settings system including saving of User Settings to file
- A test scene with basic 3D World settings
- Prepared for integration of Debug Tools (currently included: fps display)
- Export fully configured for Windows, Linux and Web

# How to Use
In theory, it should be very simple:
1. Clone the GitHub repository,
2. Start developing right away!
   
The template is designed in such a way that there is normally no need to interact with it, as long as one does not want to e.g. change the project structure or add more scenes.

If you do need to interact, the most commonly required API members will be:
```gdscript
SettingsManager.get_user_settings()
TransitionManager.transition_to_scene(scenePath : String)
TransitionManager.exit_to_system()
```

# Recommended Setup Steps
- Rename `TEMPLATE` in `res://settings/global.gd` to `<MY_GAME_NAME>` and replace all occurences in the code
- Rename `res://settings/template_settings_runtime_default.json` to `res://settings/<my-game-name>_settings_runtime_default.json` and adjust the values in `res://settings/global.gd` accordingly.

# How to Modify
At the moment, the Template only works with Godot 4.4, as it uses the Jolt Physics Engine. However, with this option disabled, it should be usable with earlier versions of Godot 4.x, but no guarantees!

If you add new scenes, please make sure that all the scenes you would like to use directly as game scene due have to have a `CanvasLayer` Node named `debug` directly attached below the Scene Root Node. Otherwise, the game will crash if you try to toggle debug mode.

# Known Issues:
- When exporting for web, there is an error logged in the console:
```
  E 0:00:00:037   get_process_id: OS::get_process_id() is not available on the Web platform.
  <C++ Error>   Method/function failed. Returning: 0
  <C++ Source>  platform/web/os_web.cpp:132 @ get_process_id()
```
No idea where that comes from, as this behavior is known for several years now, but no clear indication to why that happens. So check whether your web export works as expected very often!
- By far not feature complete nor perfect.
- There is a lot of entanglement between the `AutoLoad`s.
