currentDifficulty ="Porteado y mejorado por CONTRASAKAR" ;

function onCreate()
    makeLuaText("Porteado y mejorado por CONTRASAKAR",currentDifficulty, 0, 540, 130);
    setTextAlignment("Porteado y mejorado por CONTRASAKAR", 'left');
    setTextSize("Porteado y mejorado por CONTRASAKAR", 18);
    setTextBorder("Porteado y mejorado por CONTRASAKAR", 1, 'A30707');
    addLuaText( "Porteado y mejorado por CONTRASAKAR");
end

function onCreatePost()
    setProperty('timeBar.y', getProperty('timeBar.y')  -10);
    setProperty('timeTxt.y', getProperty('timeTxt.y')  -10);
end

function onUpdate(elapsed)
    currentDifficulty = getProperty("Porteado y mejorado por CONTRASAKAR");
end