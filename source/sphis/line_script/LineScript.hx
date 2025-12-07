package sphis.line_script;

class LineScript
{
	public var file_name:String;
	public var file_path:String;

	public function new(file_name:String, file_path:String)
	{
		this.file_name = file_name;
		this.file_path = file_path;

		load();
	}

	public function save() {}

	public function load()
	{
		save();
	}

	public var lines:Array<String> = [];

	public function parse()
	{
		for (line in lines)
			parseLine(line);
	}

	public function parseLine(line:String)
	{
		LineReader.read(line, this);
	}
}
