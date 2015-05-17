package com.luchanso.tools;

import openfl.Lib;

/**
 * Frame rate independent
 */
class FpsIndependent
{	
	public var deltaTime(get, null):Float;

	var _prevFrame:Float;
	var _nextFrame:Float;

	public function new()
	{
		
	}

	public function beginUpdate()
	{
		_nextFrame = Lib.getTimer(); 		
	}

	public function finishUpdate()
	{
		_prevFrame = _nextFrame;
	}

	public function get_deltaTime():Float
	{
		return (_nextFrame - _prevFrame) * 0.001;
	}
}