package sphis.line_script;

import lime.app.Application;

class LineReader
{
	public static function read(line:String, script:LineScript)
    {
        var split:Array<String> = line.split(' : ');

        switch(split[0])
        {
            default:
                Application.current.window.alert('ULB: ' + split[0], 'Unknown Line Bit');
        }
    }
}
