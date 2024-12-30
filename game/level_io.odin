#+build !freestanding
package game

import "core:os"
import "core:encoding/json"
import "core:log"

load_level_data :: proc(level_name: string) -> (Level, bool) {
	data, data_ok := os.read_entire_file(level_name, context.temp_allocator)

	if !data_ok {
		return {}, false
	}

	level: Level

	json_unmarshal_err := json.unmarshal(data, &level, .SJSON, context.temp_allocator)

	if json_unmarshal_err != nil {
		return {}, false
	}

	return level, true
}

save_level_data :: proc(level_name: string, level: Level) {
	marshal_options := json.Marshal_Options {
		pretty = true,
		spec = .SJSON,
	}
	
	json_data, json_marshal_err := json.marshal(level, marshal_options, context.temp_allocator)

	if json_marshal_err == nil {
		c := current_level_name()

		if c != "" {
			if !os.write_entire_file(level_name, json_data) {
				log.error("error writing level")
			}
		}
	}
}