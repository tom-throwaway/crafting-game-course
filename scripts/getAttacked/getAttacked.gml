/// @desc Getting attacked
/// @arg attacker

// Args
var _attacker = argument[0];

// HP
hp--;

// Knockback
var _dir = point_direction(_attacker.x, _attacker.y, x, y);
boostX = lengthdir_x(knockbackSpeed, _dir);
boostY = lengthdir_y(knockbackSpeed, _dir);