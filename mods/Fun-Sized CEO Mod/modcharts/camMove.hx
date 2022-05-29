function postUpdate(elapsed:Float) {
    var animName = "";
    if (PlayState.section.mustHitSection)
        animName = PlayState.boyfriend.animation.curAnim.name;
    else
        animName = PlayState.dad.animation.curAnim.name;
    if (animName == 'singLEFT') {
      PlayState.camFollow.x -= 50;
    }
    if (animName == 'singRIGHT') {
      PlayState.camFollow.x += 50;
    }
    if (animName == 'singUP') {
      PlayState.camFollow.y -= 50;
    }
    if (animName == 'singDOWN') {
      PlayState.camFollow.y += 50;
    }
  }