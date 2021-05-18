package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf1', [2, 3], 0, false, isPlayer);
		animation.add('bf1-1', [18, 19], 0, false, isPlayer);
		animation.add('bf1-2', [20, 21], 0, false, isPlayer);
		animation.add('bf2', [4, 5], 0, false, isPlayer);
		animation.add('bf2-1', [22, 23], 0, false, isPlayer);
		animation.add('bf2-2', [24, 25], 0, false, isPlayer);
		animation.add('bf3', [6, 7], 0, false, isPlayer);
		animation.add('bf3-1', [26, 27], 0, false, isPlayer);
		animation.add('bf3-2', [28, 29], 0, false, isPlayer);
		animation.add('bf3-3', [32, 33], 0, false, isPlayer);
		animation.add('bf4', [8, 9], 0, false, isPlayer);
		animation.add('bf4-1', [34, 35], 0, false, isPlayer);
		animation.add('bf4-2', [36, 37], 0, false, isPlayer);
		animation.add('bf4-3', [30, 31], 0, false, isPlayer);
		animation.add('bf5', [10, 11], 0, false, isPlayer);
		animation.add('bf5-1', [38, 39], 0, false, isPlayer);
		animation.add('bf5-2', [40, 41], 0, false, isPlayer);
		animation.add('dad', [44, 45], 0, false, isPlayer);
		animation.add('bf-old', [42, 43], 0, false, isPlayer);
		animation.add('gf', [16], 0, false, isPlayer);
		animation.add('gf1', [12], 0, false, isPlayer);
		animation.add('gf1-1', [18], 0, false, isPlayer);
		animation.add('gf1-2', [46], 0, false, isPlayer);
		animation.add('gf2', [13], 0, false, isPlayer);
		animation.add('gf2-1', [47], 0, false, isPlayer);
		animation.add('gf2-2', [51], 0, false, isPlayer);
		animation.add('gf3', [14], 0, false, isPlayer);
		animation.add('gf3-1', [48], 0, false, isPlayer);
		animation.add('gf3-2', [49], 0, false, isPlayer);
		animation.add('gf3-3', [50], 0, false, isPlayer);
		animation.add('gf4', [15], 0, false, isPlayer);
		animation.add('gf4-1', [52], 0, false, isPlayer);
		animation.add('gf4-2', [53], 0, false, isPlayer);
		animation.add('gf4-3', [54], 0, false, isPlayer);
		animation.add('gf5', [17], 0, false, isPlayer);
		animation.add('gf5-1', [55], 0, false, isPlayer);
		animation.add('gf5-2', [56], 0, false, isPlayer);
		animation.play(char);
		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
