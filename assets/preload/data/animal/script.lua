local xx = 450;
local yy = 400;
local xx2 = 1210;
local yy2 = 565;
local ofs = 40;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()
    setProperty('gf.visible', false);
    if difficulty == 3 then
        setProperty('gf.visible', true);
    end
end

function onUpdate()
    if not lowQuality then

        if del > 0 then
            del = del - 1
        end
        if del2 > 0 then
            del2 = del2 - 1
        end
        if followchars == true then
            if mustHitSection == false then
                setProperty('defaultCamZoom', 0.8);
                if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                    triggerEvent('Camera Follow Pos',xx-ofs,yy)
                end
                if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                    triggerEvent('Camera Follow Pos',xx+ofs,yy)
                end
                if getProperty('dad.animation.curAnim.name') == 'singUP' then
                    triggerEvent('Camera Follow Pos',xx,yy-ofs)
                end
                if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                    triggerEvent('Camera Follow Pos',xx,yy+ofs)
                end
                if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                    triggerEvent('Camera Follow Pos',xx-ofs,yy)
                end
                if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                    triggerEvent('Camera Follow Pos',xx+ofs,yy)
                end
                if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                    triggerEvent('Camera Follow Pos',xx,yy-ofs)
                end
                if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                    triggerEvent('Camera Follow Pos',xx,yy+ofs)
                end
                if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                    triggerEvent('Camera Follow Pos',xx,yy)
                end
                if getProperty('dad.animation.curAnim.name') == 'idle' then
                    triggerEvent('Camera Follow Pos',xx,yy)
                end
            else
                setProperty('defaultCamZoom', 1.0);
                if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                    triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                    triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                    triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                    triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
                end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                    triggerEvent('Camera Follow Pos',xx2,yy2)
                end
            end
        else
            triggerEvent('Camera Follow Pos','','')
        end
    end
    if not lowQuality and difficulty == 3 then
        xx = 450;
        yy = 510;
        xx2 = 1210;
        yy2 = 565;
        ofs = 40;
    end
end

--[[function onUpdate()
    if not lowQuality and difficulty == 3 then
        xx = 450;
        yy = 510;
        xx2 = 1210;
        yy2 = 565;
        ofs = 40;
    end
    if difficulty == 3 then
        setProperty('gf.visible', true);
    end
end--]]