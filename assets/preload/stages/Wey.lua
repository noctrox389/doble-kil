function onCreate()
	-- background shit
	makeLuaSprite('Wey', 'Wey', -300, -290);
	setLuaSpriteScrollFactor('Wey', 0.9, 0.9);
	scaleObject('Wey' , 2, 2);
	
	addLuaSprite('Wey', false);
		
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end