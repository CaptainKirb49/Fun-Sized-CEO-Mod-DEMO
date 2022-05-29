var scary:FlxSprite;

function create(){
    PlayState.dad.visible = false;
    PlayState.boyfriend.visible = false;
    PlayState.gf.visible = false;
    PlayState.iconP1.visible = false;
    PlayState.iconP2.visible = false;
    PlayState.healthBarBG.visible = false;
    PlayState.healthBar.visible = false;
}

function update(elapsed) {
    for (s in PlayState.cpuStrums.members) {
      s.visible = false;
      s.notes_alpha = 0;
    }

    var charMidpoint = PlayState.dad.getMidpoint();
    PlayState.camFollow.x = charMidpoint.x;
    PlayState.camFollow.y = charMidpoint.y;
    
    PlayState.boyfriend.visible = false;
    PlayState.gf.visible = false;
    PlayState.iconP1.visible = false;
    PlayState.iconP2.visible = false;
    PlayState.healthBarBG.visible = false;
    PlayState.healthBar.visible = false;
}

function onCountdown(val:Int) {
    // Hides the icons (again)
    switch(val) {
        case 0:
            PlayState.dad.visible = true;
            PlayState.dad.playAnim("open");
    }
}


function scare(){
    scary = new FlxSprite(-240, 0).loadGraphic(Paths.image("scary"));
    scary.scale.x = 0.8;
    scary.scale.y = 0.8;
    PlayState.add(scary);
    scary.visible = true;
    PlayState.dad.visible = false;
}

function no(){
    scary.visible = false;
    PlayState.dad.visible = true;
}

