import("LoadingState");

var char:Int = 0;

function create(){
    state.options.remove("story mode");
    state.options.remove("credits");
    state.options.remove("toolbox");
    state.options.remove("donate");
    state.options.remove("mods");
}

function update(elapsed:Float) {
    var controls = FlxControls.justPressed;
    var pressed = false;
    if (char == 0) pressed = controls.D;
    if (char == 1) pressed = controls.E;
    if (char == 2) pressed = controls.D;
    if (pressed) {
        char++;
    } else {
        if (controls.ANY) {
            char = 0;
        }
    }
    if (char >= 3) {
        CoolUtil.loadSong("Fun-Sized CEO Mod", "monochrome", "Hard");
        LoadingState.loadAndSwitchState(new PlayState_());
    }
    
        
}