local getloop = 0;

function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'medHeal Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'MHEALNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'healSplash'); -- change splash
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Fireball Note' then
		setProperty('health', getProperty('health') - 0.01);
		getloop = 100;
		runTimer('fire', 0.1, 10);
	end
end


function onTimerCompleted(tag, loops, loopsLeft)
	
	if loopsLeft == 10 then
		setProperty('health', getProperty('health') - 0.05);
	end
	if loopsLeft == 9 then
		setProperty('health', getProperty('health') - 0.05);
	end
	if loopsLeft == 8 then
		setProperty('health', getProperty('health') - 0.05);
	end
	if loopsLeft == 7 then
		setProperty('health', getProperty('health') - 0.05);
	end
	if loopsLeft == 6 then
		setProperty('health', getProperty('health') - 0.05);
	end
	if loopsLeft == 5 then
		setProperty('health', getProperty('health') - 0.05);
	end
	if loopsLeft == 4 then
		setProperty('health', getProperty('health') - 0.05);
	end
	if loopsLeft == 3 then
		setProperty('health', getProperty('health') - 0.05);
	end
	if loopsLeft == 2 then
		setProperty('health', getProperty('health') - 0.05);
	end
	if loopsLeft <= 1 then
		getloop = 0;
		setProperty('health', getProperty('health')-0.05 );
	end
end

function onUpdate()

	
end
