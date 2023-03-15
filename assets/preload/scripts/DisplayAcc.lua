function onCreate()
    makeLuaText('hits', 'Total Combo:' .. getProperty('songHits'), 2330, 0, 40); 
    makeLuaText('goods', 'Score:' .. getProperty('songScore'), 0, 0, 60);
    makeLuaText('misses', 'Misses:' .. getProperty('songMisses'), 0, 0, 90);
    makeLuaText('bads', 'Acurracy:' .. getProperty(''), 0, 0, 120);
    addLuaText('goods');
    setTextSize('goods', 20);
    setObjectCamera('goods', 'other')
    addLuaText('hits');
    setTextSize('hits', 20);
    setObjectCamera('hits', 'other')
    setTextSize('misses', 20);
    addLuaText("misses");
    setObjectCamera('misses', 'other')
    addLuaText('bads');
    setTextSize('bads', 20);
    setObjectCamera('bads', 'other')
end

function onRecalculateRating()
    setTextString('goods', 'Score:' .. getProperty('songScore'));
    setTextString('hits', 'Total Combo:' .. getProperty('songHits'));
    setTextString('misses', 'Misses:' .. getProperty('songMisses'));
  setTextString('bads', 'Acurracy: ' .. getProperty('') .. '' .. string.format("%.2f%%", rating * 100) .. '  ' .. getProperty(''))
end
