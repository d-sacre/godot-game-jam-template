extends Node

################################################################################
#### AUTOLOAD REMARKS ##########################################################
################################################################################
# This script is autoloaded as "FileIO".

################################################################################
#### PUBLIC MEMBERS ############################################################
################################################################################

# DESCRIPTION: Responsible for handling all the JSON related File I/O
class json:

	## Loads JSON File from file path specified by `fp` and returns the contents
	## of the file either as `Dictionary` or `Array` depending on the data type
	## of the input file
	static func load(fp : String):
		var json_as_text = FileAccess.get_file_as_string(fp)
		var json_as_dict = JSON.parse_string(json_as_text)
	
		return json_as_dict

	## Writes [code]data[/code] provided in JSON format to a JSON File 
	## at the location specified by `fp`[br]
	## **Remark:** JSON Data in both [code]Dictionary[/code] and 
	## [code]Array[/code] format is accepted
	static func save(fp : String, data) -> void:
		var _tmp_file = FileAccess.open(fp, FileAccess.WRITE)
		_tmp_file.store_line(JSON.stringify(data))
		_tmp_file.close()
