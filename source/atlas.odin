// This file is generated by running the atlas_builder.
package game

/*
Note: This file assumes the existence of a type Rect that defines a rectangle in the same package, it can defined as:

	Rect :: rl.Rectangle

or if you don't use raylib:

	Rect :: struct {
		x, y, width, height: f32,
	}

or if you want to use integers (or any other numeric type):

	Rect :: struct {
		x, y, width, height: int,
	}

Just make sure you have something along those lines the same package as this file.
*/

TEXTURE_ATLAS_FILENAME :: "assets/atlas.png"
ATLAS_FONT_SIZE :: 64
LETTERS_IN_FONT :: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890?!&.,_:[]-+|/"

// A generated square in the atlas you can use with rl.SetShapesTexture to make
// raylib shapes such as rl.DrawRectangleRec() use the atlas.
SHAPES_TEXTURE_RECT :: Rect {23, 92, 10, 10}

Texture_Name :: enum {
	None,
	Round_Cat,
	Long_Cat,
	Tuna,
}

Atlas_Texture :: struct {
	rect: Rect,
	// These offsets tell you how much space there is between the rect and the edge of the original document.
	// The atlas is tightly packed, so empty pixels are removed. This can be especially apparent in animations where
	// frames can have different offsets due to different amount of empty pixels around the frames.
	// In many cases you need to add {offset_left, offset_top} to your position. But if you are
	// flipping a texture, then you might need offset_bottom or offset_right.
	offset_top: f32,
	offset_right: f32,
	offset_bottom: f32,
	offset_left: f32,
	document_size: [2]f32,
	duration: f32,
}

atlas_textures: [Texture_Name]Atlas_Texture = {
	.None = {},
	.Round_Cat = { rect = {232, 67, 20, 24}, offset_top = 0, offset_right = 0, offset_bottom = 0, offset_left = 0, document_size = {20, 24}, duration = 0.100},
	.Long_Cat = { rect = {5, 0, 9, 46}, offset_top = 0, offset_right = 0, offset_bottom = 0, offset_left = 0, document_size = {9, 46}, duration = 0.100},
	.Tuna = { rect = {243, 92, 24, 20}, offset_top = 0, offset_right = 0, offset_bottom = 0, offset_left = 0, document_size = {24, 20}, duration = 0.100},
}

Animation_Name :: enum {
	None,
}

Tag_Loop_Dir :: enum {
	Forward,
	Reverse,
	Ping_Pong,
	Ping_Pong_Reverse,
}

// Any aseprite file with frames will create new animations. Also, any tags
// within the aseprite file will make that that into a separate animation.
Atlas_Animation :: struct {
	first_frame: Texture_Name,
	last_frame: Texture_Name,
	document_size: [2]f32,
	loop_direction: Tag_Loop_Dir,
	repeat: u16,
}

atlas_animations := [Animation_Name]Atlas_Animation {
	.None = {},
}

// All these are pre-generated so you can save tile IDs to data without
// worrying about their order changing later.
Tile_Id :: enum {
	T0Y0X0,
	T0Y0X1,
	T0Y0X2,
	T0Y0X3,
	T0Y0X4,
	T0Y0X5,
	T0Y0X6,
	T0Y0X7,
	T0Y0X8,
	T0Y0X9,
	T0Y1X0,
	T0Y1X1,
	T0Y1X2,
	T0Y1X3,
	T0Y1X4,
	T0Y1X5,
	T0Y1X6,
	T0Y1X7,
	T0Y1X8,
	T0Y1X9,
	T0Y2X0,
	T0Y2X1,
	T0Y2X2,
	T0Y2X3,
	T0Y2X4,
	T0Y2X5,
	T0Y2X6,
	T0Y2X7,
	T0Y2X8,
	T0Y2X9,
	T0Y3X0,
	T0Y3X1,
	T0Y3X2,
	T0Y3X3,
	T0Y3X4,
	T0Y3X5,
	T0Y3X6,
	T0Y3X7,
	T0Y3X8,
	T0Y3X9,
	T0Y4X0,
	T0Y4X1,
	T0Y4X2,
	T0Y4X3,
	T0Y4X4,
	T0Y4X5,
	T0Y4X6,
	T0Y4X7,
	T0Y4X8,
	T0Y4X9,
	T0Y5X0,
	T0Y5X1,
	T0Y5X2,
	T0Y5X3,
	T0Y5X4,
	T0Y5X5,
	T0Y5X6,
	T0Y5X7,
	T0Y5X8,
	T0Y5X9,
	T0Y6X0,
	T0Y6X1,
	T0Y6X2,
	T0Y6X3,
	T0Y6X4,
	T0Y6X5,
	T0Y6X6,
	T0Y6X7,
	T0Y6X8,
	T0Y6X9,
	T0Y7X0,
	T0Y7X1,
	T0Y7X2,
	T0Y7X3,
	T0Y7X4,
	T0Y7X5,
	T0Y7X6,
	T0Y7X7,
	T0Y7X8,
	T0Y7X9,
	T0Y8X0,
	T0Y8X1,
	T0Y8X2,
	T0Y8X3,
	T0Y8X4,
	T0Y8X5,
	T0Y8X6,
	T0Y8X7,
	T0Y8X8,
	T0Y8X9,
	T0Y9X0,
	T0Y9X1,
	T0Y9X2,
	T0Y9X3,
	T0Y9X4,
	T0Y9X5,
	T0Y9X6,
	T0Y9X7,
	T0Y9X8,
	T0Y9X9,
}

atlas_tiles := #partial [Tile_Id]Rect {
	.T0Y0X0 = {102, 69, 16, 16},
	.T0Y0X1 = {102, 87, 16, 16},
}

Atlas_Glyph :: struct {
	rect: Rect,
	value: rune,
	offset_x: int,
	offset_y: int,
	advance_x: int,
}

atlas_glyphs: []Atlas_Glyph = {
	{ rect = {358, 35, 25, 30}, value = 'A', offset_x = 0, offset_y = 16, advance_x = 24},
	{ rect = {70, 42, 21, 30}, value = 'B', offset_x = 4, offset_y = 16, advance_x = 26},
	{ rect = {289, 1, 23, 32}, value = 'C', offset_x = 2, offset_y = 15, advance_x = 25},
	{ rect = {46, 42, 22, 30}, value = 'D', offset_x = 4, offset_y = 16, advance_x = 27},
	{ rect = {361, 67, 18, 30}, value = 'E', offset_x = 4, offset_y = 16, advance_x = 23},
	{ rect = {381, 67, 18, 30}, value = 'F', offset_x = 4, offset_y = 16, advance_x = 22},
	{ rect = {314, 1, 23, 32}, value = 'G', offset_x = 2, offset_y = 15, advance_x = 27},
	{ rect = {192, 36, 22, 30}, value = 'H', offset_x = 4, offset_y = 16, advance_x = 29},
	{ rect = {506, 34, 4, 30}, value = 'I', offset_x = 4, offset_y = 16, advance_x = 11},
	{ rect = {276, 35, 17, 31}, value = 'J', offset_x = 1, offset_y = 16, advance_x = 21},
	{ rect = {144, 36, 22, 30}, value = 'K', offset_x = 4, offset_y = 16, advance_x = 26},
	{ rect = {401, 67, 17, 30}, value = 'L', offset_x = 4, offset_y = 16, advance_x = 21},
	{ rect = {331, 35, 25, 30}, value = 'M', offset_x = 4, offset_y = 16, advance_x = 32},
	{ rect = {120, 36, 22, 30}, value = 'N', offset_x = 4, offset_y = 16, advance_x = 29},
	{ rect = {233, 1, 26, 32}, value = 'O', offset_x = 2, offset_y = 15, advance_x = 29},
	{ rect = {295, 67, 20, 30}, value = 'P', offset_x = 4, offset_y = 16, advance_x = 25},
	{ rect = {46, 1, 27, 39}, value = 'Q', offset_x = 2, offset_y = 15, advance_x = 29},
	{ rect = {97, 37, 21, 30}, value = 'R', offset_x = 4, offset_y = 16, advance_x = 25},
	{ rect = {339, 1, 22, 32}, value = 'S', offset_x = 1, offset_y = 15, advance_x = 24},
	{ rect = {168, 36, 22, 30}, value = 'T', offset_x = 1, offset_y = 16, advance_x = 24},
	{ rect = {462, 1, 23, 31}, value = 'U', offset_x = 3, offset_y = 16, advance_x = 28},
	{ rect = {385, 35, 24, 30}, value = 'V', offset_x = 0, offset_y = 16, advance_x = 23},
	{ rect = {295, 35, 34, 30}, value = 'W', offset_x = 1, offset_y = 16, advance_x = 35},
	{ rect = {411, 35, 23, 30}, value = 'X', offset_x = 0, offset_y = 16, advance_x = 23},
	{ rect = {436, 35, 23, 30}, value = 'Y', offset_x = -1, offset_y = 16, advance_x = 21},
	{ rect = {16, 45, 21, 30}, value = 'Z', offset_x = 2, offset_y = 16, advance_x = 24},
	{ rect = {161, 68, 18, 24}, value = 'a', offset_x = 2, offset_y = 23, advance_x = 22},
	{ rect = {120, 1, 20, 33}, value = 'b', offset_x = 3, offset_y = 14, advance_x = 24},
	{ rect = {141, 68, 18, 24}, value = 'c', offset_x = 2, offset_y = 23, advance_x = 20},
	{ rect = {142, 1, 20, 33}, value = 'd', offset_x = 2, offset_y = 14, advance_x = 24},
	{ rect = {120, 68, 19, 24}, value = 'e', offset_x = 2, offset_y = 23, advance_x = 22},
	{ rect = {208, 1, 14, 33}, value = 'f', offset_x = 1, offset_y = 13, advance_x = 13},
	{ rect = {97, 1, 21, 34}, value = 'g', offset_x = 2, offset_y = 23, advance_x = 22},
	{ rect = {386, 1, 19, 32}, value = 'h', offset_x = 3, offset_y = 14, advance_x = 24},
	{ rect = {455, 1, 5, 32}, value = 'i', offset_x = 3, offset_y = 14, advance_x = 11},
	{ rect = {16, 1, 10, 42}, value = 'j', offset_x = -2, offset_y = 14, advance_x = 11},
	{ rect = {407, 1, 19, 32}, value = 'k', offset_x = 3, offset_y = 14, advance_x = 22},
	{ rect = {224, 1, 7, 33}, value = 'l', offset_x = 3, offset_y = 14, advance_x = 11},
	{ rect = {200, 68, 31, 23}, value = 'm', offset_x = 3, offset_y = 23, advance_x = 37},
	{ rect = {254, 68, 19, 23}, value = 'n', offset_x = 3, offset_y = 23, advance_x = 24},
	{ rect = {485, 67, 21, 24}, value = 'o', offset_x = 2, offset_y = 23, advance_x = 24},
	{ rect = {164, 1, 20, 33}, value = 'p', offset_x = 3, offset_y = 23, advance_x = 24},
	{ rect = {186, 1, 20, 33}, value = 'q', offset_x = 2, offset_y = 23, advance_x = 24},
	{ rect = {1, 49, 13, 23}, value = 'r', offset_x = 3, offset_y = 23, advance_x = 15},
	{ rect = {181, 68, 17, 24}, value = 's', offset_x = 1, offset_y = 23, advance_x = 18},
	{ rect = {216, 36, 14, 30}, value = 't', offset_x = 1, offset_y = 17, advance_x = 15},
	{ rect = {275, 68, 18, 23}, value = 'u', offset_x = 3, offset_y = 24, advance_x = 24},
	{ rect = {1, 77, 21, 22}, value = 'v', offset_x = 0, offset_y = 24, advance_x = 20},
	{ rect = {39, 74, 31, 22}, value = 'w', offset_x = 1, offset_y = 24, advance_x = 32},
	{ rect = {200, 93, 20, 22}, value = 'x', offset_x = 0, offset_y = 24, advance_x = 20},
	{ rect = {363, 1, 21, 32}, value = 'y', offset_x = 0, offset_y = 24, advance_x = 20},
	{ rect = {72, 74, 17, 22}, value = 'z', offset_x = 1, offset_y = 24, advance_x = 19},
	{ rect = {466, 67, 17, 29}, value = '1', offset_x = 3, offset_y = 17, advance_x = 22},
	{ rect = {339, 67, 20, 30}, value = '2', offset_x = 1, offset_y = 16, advance_x = 22},
	{ rect = {462, 34, 20, 31}, value = '3', offset_x = 1, offset_y = 16, advance_x = 22},
	{ rect = {420, 67, 22, 29}, value = '4', offset_x = 0, offset_y = 17, advance_x = 22},
	{ rect = {317, 67, 20, 30}, value = '5', offset_x = 1, offset_y = 17, advance_x = 22},
	{ rect = {255, 35, 19, 31}, value = '6', offset_x = 2, offset_y = 16, advance_x = 22},
	{ rect = {444, 67, 20, 29}, value = '7', offset_x = 1, offset_y = 17, advance_x = 22},
	{ rect = {487, 1, 20, 31}, value = '8', offset_x = 1, offset_y = 16, advance_x = 22},
	{ rect = {233, 35, 20, 31}, value = '9', offset_x = 1, offset_y = 16, advance_x = 22},
	{ rect = {484, 34, 20, 31}, value = '0', offset_x = 1, offset_y = 16, advance_x = 22},
	{ rect = {428, 1, 16, 32}, value = '?', offset_x = 1, offset_y = 15, advance_x = 19},
	{ rect = {446, 1, 7, 32}, value = '!', offset_x = 3, offset_y = 15, advance_x = 12},
	{ rect = {261, 1, 26, 32}, value = '&', offset_x = 1, offset_y = 15, advance_x = 27},
	{ rect = {269, 93, 7, 7}, value = '.', offset_x = 2, offset_y = 40, advance_x = 11},
	{ rect = {24, 77, 7, 14}, value = ',', offset_x = 2, offset_y = 40, advance_x = 11},
	{ rect = {485, 93, 22, 3}, value = '_', offset_x = 0, offset_y = 49, advance_x = 22},
	{ rect = {93, 69, 7, 23}, value = ':', offset_x = 2, offset_y = 24, advance_x = 11},
	{ rect = {86, 1, 9, 39}, value = '[', offset_x = 4, offset_y = 14, advance_x = 13},
	{ rect = {75, 1, 9, 39}, value = ']', offset_x = 1, offset_y = 14, advance_x = 13},
	{ rect = {278, 93, 12, 4}, value = '-', offset_x = 1, offset_y = 33, advance_x = 13},
	{ rect = {222, 93, 20, 21}, value = '+', offset_x = 1, offset_y = 21, advance_x = 22},
	{ rect = {1, 1, 3, 46}, value = '|', offset_x = 4, offset_y = 12, advance_x = 10},
	{ rect = {28, 1, 16, 40}, value = '/', offset_x = 0, offset_y = 14, advance_x = 15},
}