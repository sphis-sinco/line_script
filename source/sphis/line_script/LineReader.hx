package sphis.line_script;

import lime.app.Application;

class LineReader
{
	public static function read(line:String, script:LineScript)
	{
		var split:Array<String> = line.split(' : ');

		switch (split[0].toLowerCase())
		{
			case 'trace':
				split.remove(split[0]);

				var the_trace:String = '';
				for (bit in split)
					the_trace += bit + ' ';

				trace(script.file_path + ' : ' + the_trace, null);

			case '':
				// empty

			default:
				Application.current.window.alert('ULB: ' + split[0], 'Unknown Line Bit');
		}
	}
}
