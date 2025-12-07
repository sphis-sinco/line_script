package;

import sphis.line_script.TextLineScript;
import flixel.FlxState;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();

		new TextLineScript('assets/test_script.txt').parse();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
