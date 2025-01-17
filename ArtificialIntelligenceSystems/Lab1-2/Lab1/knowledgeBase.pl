% Роль персонажа
character(tarik).
character(trash).
character(braum).
character(zerat).
character(ari).
character(sweyn).
character(reykan).
character(veigar).
character(luxe).
character(vai).
character(viego).
character(darius).
character(saylas).
character(warwick).
character(garen).
character(khaZix).
character(rengar).
character(pyke).
character(zed).
character(ekko).
character(katarina).
character(timo).
character(ashe).
character(senna).
character(lucian).
character(dreivan).
character(jinx).

role(tank, tarik).
role(tank, trash).
role(tank, braum).
role(wizard, zerat).
role(wizard, ari).
role(wizard, sweyn).
role(wizard, reykan).
role(wizard, veigar).
role(wizard, luxe).
role(warrior, vai).
role(warrior, viego).
role(warrior, darius).
role(warrior, saylas).
role(warrior, warwick).
role(warrior, garen).
role(killer, khaZix).
role(killer, rengar).
role(killer, pyke).
role(killer, zed).
role(killer, ekko).
role(killer, katarina).
role(shooter, timo).
role(shooter, ashe).
role(shooter, senna).
role(shooter, lucian).
role(shooter, dreivan).
role(shooter, jinx).

% Родина персонажа ( по лору )
homeland(shadowyIslands, lucian).
homeland(shadowyIslands, senna).
homeland(shadowyIslands, viego).
homeland(shadowyIslands, trash).
homeland(gapingHole, khaZix).
homeland(bildgwater, pyke).
homeland(ionia, zed).
homeland(ionia, rengar).
homeland(ionia, reykan).
homeland(nocsus, sweyn).
homeland(nocsus, dreivan).
homeland(nocsus, darius).
homeland(nocsus, katarina).
homeland(zaun, jinx).
homeland(zaun, vai).
homeland(zaun, ekko).
homeland(zaun, warwick).
homeland(demasiya, luxe).
homeland(demasiya, garen).
homeland(freljord, saylas).
homeland(freljord, ashe).
homeland(freljord, braum).
homeland(targon, tarik).
homeland(bandlCity, veigar).
homeland(bandlCity, timo).
homeland(bandlCity, ari).
homeland(shurima, zerat).

season(summer, shadowyIslands).
season(spring, gapingHole).
season(spring, bildgwater).
season(autumn, ionia).
season(autumn, nocsus).
season(spring, zaun).
season(winter, demasiya).
season(winter, freljord).
season(summer, targon).
season(autumn, bandlCity).
season(summer, shurima).


% Место отыгрыша на карте
position(carry, lucian).
position(support, trash).
position(support, senna).
position(jungle, viego).
position(jungle, khaZix).
position(support, pyke).
position(mid, zed).
position(jungle, rengar).
position(support, reykan).
position(support, sweyn).
position(carry, dreivan).
position(top, darius).
position(carry, jinx).
position(jungle, vai).
position(jungle, ekko).
position(jungle, warwick).
position(mid, luxe).
position(top, garen).
position(mid, saylas).
position(carry, ashe).
position(support, braum).
position(support, tarik).
position(mid, veigar).
position(top, timo).
position(mid, ari).
position(mid, zerat).
position(mid, katarina).

% Враги (по лору )
enemies(khaZix, rengar).
enemies(saylas, garen).
enemies(garen, darius).
enemies(katarina, ari).
enemies(timo, pyke).
enemies(senna, trash).
enemies(senna, viego).
enemies(lucian, trash).
enemies(lucian, viego).
enemies(jinx, vai).

% Персонажи с одной территории
countrymans(X, Y) :- homeland(Z, X), homeland(H, Y), Z = H, X \= Y.

% Персонажи с одинаковой ролью
samePositions(X, Y) :- position(Z, X), position(H, Y), Z = H, X \= Y.

% Топеры-стрелки
topShooters(X) :- position(top, X), role(shooter, X).

% Войны между территориями
wars(X, Y) :- homeland(X, Z), homeland(Y, H), (enemies(Z, H); enemies(H, Z)), X \= Y.

% Враги с одинаковой позицией в игре
sameEnemiesByPosition(X, Y) :- position(Z, X), position(H, Y), (enemies(X, Y); enemies(Y, X)), X \= Y, Z = H.

% Друзья (Территории с общим врагом без войны друг с другом)
friends(X, Y) :- wars(X, Z), wars(Y, Z), not(wars(X, Y); wars(Y, X)), X \= Y.