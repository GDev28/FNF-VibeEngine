package;

#if desktop
import Discord.DiscordClient;
#end
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxCamera;
import flixel.addons.transition.FlxTransitionableState;
import flixel.effects.FlxFlicker;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.math.FlxMath;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import lime.app.Application;
import Achievements;
import editors.MasterEditorMenu;
import flixel.input.keyboard.FlxKey;
import Controls;

using StringTools;


class TestZoneState extends MusicBeatState
{
    var test:FlxText;
    var testSprite:FlxSprite;
	
    override function create()
    {
        test = new FlxText(500, 500, 0, "", 32);
                test.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, RIGHT);
                test.alpha = 0.1;

        test.text = "Hello World! This is a test zone!";
        
        testSprite = new FlxSprite(500,2500);
        testSprite.frames = Paths.getSparrowAtlas('images/fullcard');
        add(test);
        add(testSprite);
     
    }
        override function update(elapsed:Float)
        {    
            if(controls.UI_UP_P){
                trace("Event Triggered");
                FlxTween.tween(testSprite, {y: 100}, 2.5);
            }


        }
}
