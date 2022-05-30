function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'medHeal Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'MHEALNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'healSplash'); -- change splash
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
end

local what = 0;
local randomGive = 0;

function noteHit(id, noteData, noteType, isSustainNote)

	if noteType == 'Random Note' then
        what = 2
		randomGive = 10 / 10

        if(what == 1) then
            setProperty('health' + randomGive);
        end

        if(what == 2) then
            setProperty('health' - randomGive);
        end
	end

end