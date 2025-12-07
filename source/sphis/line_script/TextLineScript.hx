package sphis.line_script;

import lime.utils.Assets;

class TextLineScript extends LineScript
{
	override public function new(file_path:String)
	{
		super(file_path);
	}

	override function load()
	{
		var read:String->String = file -> {
			#if sys
			return sys.io.File.getContent(file);
			#else
			return Assets.getText(file);
			#end
		};

		lines = read(file_path).split('\n');

		super.load();
	}

	override function save()
	{
		super.save();

		#if sys
        var file_content:String = '';
        for (line in lines)
            file_content += line + '\n';

		sys.io.File.saveContent(file_path, file_content);
		#else
		trace('Cannot save');
		#end
	}
}
