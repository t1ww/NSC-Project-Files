/// @description Draw health

var _playerHealth = oPlayer.hp/8;
var _playerHealthMax = oPlayer.hp_max/8;
var _playerHealthFrac = frac(_playerHealth);
_playerHealth -= _playerHealthFrac;

for(var i = 1; i <= _playerHealthMax; i++)
{
	var _imageIndex = (i > _playerHealth);
	if(i == _playerHealth+1)
	{
		_imageIndex += (_playerHealthFrac > 0);
		_imageIndex += (_playerHealthFrac > 0.25);
		_imageIndex += (_playerHealthFrac > 0.5);
	}
	draw_sprite(sHeart, _imageIndex, 8 + ((i-1)*32), 12);
}