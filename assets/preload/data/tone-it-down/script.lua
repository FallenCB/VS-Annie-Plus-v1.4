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
	end
	if curStep == 600 then
		noteTweenX('oppo0', 0, -1000, 1, 'quadOut')
		noteTweenX('oppo1', 1, -1000, 1, 'quadOut')
		noteTweenX('oppo2', 2, -1000, 1, 'quadOut')
		noteTweenX('oppo3', 3, -1000, 1, 'quardOut')
		noteTweenX('play0', 4, 415, 1, 'quadOut')
		noteTweenX('play1', 5, 525, 1, 'quadOut')
		noteTweenX('play2', 6, 635, 1, 'quadOut')
		noteTweenX('play3', 7, 745, 1, 'quadOut')
	end
	if curStep == 625 then
        --midscroll = true;

		setProperty('image.alpha', 0);

		--[[makeLuaText('healthTxt', 'Health: '..math.floor(getProperty('health')).. '%');
		setTextSize('healthTxt', 20);
		setTextBorder('healthTxt', 2, '000000');
		setTextColor('healthTxt', '0xFFFFFFF');
		setTextAlignment('healthTxt', 'center');
		setTextFont('healthTxt', 'vcr.ttf');
		addLuaText('healthTxt');
		setProperty('healthTxt.x', 575);
		setProperty('healthTxt.y', 660);--]]

		noteTweenX('oppo0', 0, -1000, 1, 'quadOut');
		noteTweenX('oppo1', 1, -1000, 1, 'quadOut');
		noteTweenX('oppo2', 2, -1000, 1, 'quadOut');
		noteTweenX('oppo3', 3, -1000, 1, 'quardOut');
		noteTweenX('play0', 4, 415, 1, 'quadOut');
		noteTweenX('play1', 5, 525, 1, 'quadOut');
		noteTweenX('play2', 6, 635, 1, 'quadOut');
		noteTweenX('play3', 7, 745, 1, 'quadOut');

		setProperty('healthBar.visible', false);
		setProperty('healthBarBG.visible', false);
		setProperty('scoreTxt.visible', false);
		setProperty('iconP1.visible', false);
		setProperty('iconP2.visible', false);
		setProperty('timeBar.visible', false);
		setProperty('timeBarBG.visible', false);
		setProperty('timeTxt.visible', false);
		setProperty('sick.alpha', 0);
		setProperty('boyfriend.visible', false);
		setProperty('gf.visible', false);
		setProperty('under.visible', true);

		makeLuaSprite('rocks', 'underrocks', -200, -130);
		setScrollFactor('rocks', 0.5, 0.5);
		scaleObject('rocks', 0.65, 0.65);
		addLuaSprite('rocks', true);

		makeLuaText('healthText', 'Health:' .. math.floor(getProperty("health") * 50), 300, screenWidth / 2 - 140 / 2, screenHeight / 2 - -400 / 1.5);
		addLuaText('healthText');
		setTextSize('healthText', 25);

		makeLuaText('scoreText', 'Score: ' ..score, 300, screenWidth / 2 - 500 / 2, screenHeight / 2 - -400 / 1.5);
		addLuaText('scoreText');
		setTextSize('scoreText', 25);


		function onUpdate(elapsed)
			setTextString('healthText', 'Health: ' .. math.floor(getProperty("health") * 50));
			setTextString('scoreText', 'Score: ' .. score);
		end
		if downscroll == true then
			setProperty('healthText.y', 80);
			setProperty('scoreText.y', 80);
		end
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