package game

import b2 "box2d"
import rl "vendor:raylib"

Round_Cat :: struct {
	body: b2.BodyId,
	shape: b2.ShapeId,
}

round_cat_make :: proc() -> Round_Cat {
	bd := b2.DefaultBodyDef()
	bd.type = .dynamicBody
	bd.position = {6, 0}
	body := b2.CreateBody(g_mem.physics_world, bd)

	sd := b2.DefaultShapeDef()
	sd.density = 1.5
	sd.friction = 0.3
	sd.restitution = 0.2

	capsule := b2.Capsule {
		center1 = {0, -0.2},
		center2 = {0, 0.2},
		radius = 1,
	}

	shape := b2.CreateCapsuleShape(body, sd, capsule)

	return {
		body = body,
		shape = shape,
	}
}

round_cat_pos :: proc(rc: Round_Cat) -> Vec2 {
	return body_pos(rc.body)
}

round_cat_draw :: proc(rc: Round_Cat) {
	a := b2.Rot_GetAngle(b2.Body_GetRotation(rc.body))
	pp := vec2_flip(round_cat_pos(rc))
	source := atlas_textures[.Round_Cat].rect

	dest := Rect {
		pp.x, pp.y,
		source.width/10, source.height/10,
	}

	rl.DrawTexturePro(atlas, source, dest, {dest.width/2, dest.height/2}, -a*rl.RAD2DEG, rl.WHITE)
}

round_cat_update :: proc(rc: ^Round_Cat) {
	if rl.IsMouseButtonPressed(.LEFT) {
		pp := round_cat_pos(rc^)
		mp := get_world_mouse_pos()

		dist := pp - mp

		b2.Body_ApplyLinearImpulseToCenter(rc.body, dist*20, true)
	}
}