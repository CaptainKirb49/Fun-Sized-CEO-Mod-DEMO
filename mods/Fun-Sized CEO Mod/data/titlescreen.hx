var logoBl:FlxSprite = null;

function create() {
    logoBl = new FlxSprite(0, 0);
    logoBl.screenCenter();
    logoBl.frames = Paths.getSparrowAtlas('titlescreen/logobumpin');
    logoBl.antialiasing = true;
    logoBl.animation.addByPrefix('bump', 'logo bumpin', 24);
    logoBl.animation.play('bump');
    logoBl.updateHitbox();
    logoBl.x -= 700;
    logoBl.y -= 375;

    titleCEO = new FlxSprite(0, 0);
    titleCEO.screenCenter();
    titleCEO.frames = Paths.getSparrowAtlas('titlescreen/CEO_Title_Screen_Bopping');
    titleCEO.antialiasing = true;
    titleCEO.animation.addByPrefix('bump', 'idle_ceo_dance instance', 24);
    titleCEO.animation.play('bump');
    titleCEO.updateHitbox();
    titleCEO.y -= 325;
    titleCEO.x += 100;

    bg = new FlxSprite(0, 0).loadGraphic(Paths.image('Space'));
    bg.updateHitbox();
    bg.screenCenter();
    
    add(bg);
    add(logoBl);
    add(titleCEO);
}