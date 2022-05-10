function onCreate()
	addCharacterToList('bigrascal', 'dad');
	addCharacterToList('legacyDeath', 'bf');
	precacheImage('blinds');

	makeLuaSprite('under', 'under', -330, -99);
	setScrollFactor('under', 0.8, 0.8);
	scaleObject('under', 0.7, 0.7);
	addLuaSprite('under', false);
	setProperty('under.visible', false);
end
function onStepHit()
	if curStep == 559 then
		makeLuaSprite('image', 'blinds', -400, -50);
		setScrollFactor('image', 1, 1);
		addLuaSprite('image', true);
		setObjectCamera('image', 'hud');

		setProperty('oldcity1.alpha', 0);
		setProperty('oldcity2.alpha', 0);

		setPropertyFromClass('GameOverSubstate', 'characterName', 'legacyDeath'); --Character json file for the death animation
		setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'LegacyDeath'); --put in mods/sounds/
		setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'LegacyGameOver'); --put in mods/music/
		setPropertyFromClass('GameOverSubstate', 'endSoundName', 'LegacyRetry'); --put in mods/music/
	elseif curStep == 625 then
		setProperty('image.alpha', 0);

		setProperty('boyfriend.visible', false);

		setProperty('under.visible', true);

		makeLuaSprite('rocks', 'underrocks', -200, -130);
		setScrollFactor('rocks', 0.5, 0.5);
		scaleObject('rocks', 0.65, 0.65);
		addLuaSprite('rocks', true);
	elseif curStep == 1279 then
		doTweenAlpha('helloagain', 'image', 1, 0.0001, 'linear');
	end

	if curStep > 624 then
		function opponentNoteHit()
		health = getProperty('health')
		if getProperty('health') > 0.05 then
			setProperty('health', health- 0.0175);
			end
		end
	end
end