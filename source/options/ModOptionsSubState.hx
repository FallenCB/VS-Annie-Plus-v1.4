package options;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.FlxSubState;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxSave;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;

using StringTools;

class ModOptionsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Mod Options';
		rpcTitle = 'Mod Options Menu'; //for Discord Rich Presence

		var option:Option = new Option('Camera Movement on Note Hit',
			'If checked, the camera will move depending on the direction of the note you hit.',
			'camMove',
			'bool',
			true);
		addOption(option);

		/*var option:Option = new Option('Middlescroll Mechanic',
		'If checked, ',
		'middleMechanic',
		'bool',
		true);
	addOption(option);*/

		super();
	}
}