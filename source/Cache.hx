#if sys
package;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.transition.FlxTransitionSprite.GraphicTransTileDiamond;
import flixel.addons.transition.FlxTransitionableState;
import flixel.addons.transition.TransitionData;
import flixel.graphics.FlxGraphic;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.math.FlxPoint;
import flixel.util.FlxTimer;
import flixel.text.FlxText;
import flixel.system.FlxSound;
import lime.app.Application;
#if windows
import Discord.DiscordClient;
#end
import openfl.display.BitmapData;
import openfl.utils.Assets;
import haxe.Exception;
import flixel.tweens.FlxEase;
import flixel.util.FlxColor;
import flixel.tweens.FlxTween;
#if cpp
import sys.FileSystem;
import sys.io.File;
#end

using StringTools;

class Cache extends MusicBeatState{

    var music = [];
    var image = [];
    var sounds = [];

    var load:FlxText;

    bitmapData = new Map<String,FlxGraphic>();
	bitmapData2 = new Map<String,FlxGraphic>();


    override function create(){

        var menuBG:FlxSprite = new FlxSprite().loadGraphic(Paths.image('funkay'));
		menuBG.screenCenter();
		add(menuBG);

		shitz = new FlxText(12, 12, 0, "Loading...", 12);
		shitz.scrollFactor.set();
		shitz.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(shitz);

        #if cpp
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/shared/images/characters")))
		{
			if (!i.endsWith(".png"))
				continue;
			characters.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/songs")))
		{
			music.push(i);
		}

        for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets")))

		#end

		sys.thread.Thread.create(() -> {
			cache();
		});

		super.create();

    }

    override function update(elapsed:Float){
        super.update(elapsed);
    }

    function cache(){

        #if !linux

            	

        #end

    }


} 