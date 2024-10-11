% Роль персонажа
tank(tarik).
tank(trash).
tank(braum).
wizard(zerat).
wizard(ari).
wizard(sweyn).
wizard(reykan).
wizard(veigar).
wizard(luxe).
warrior(vai).
warrior(viego).
warrior(darius).
warrior(saylas).
warrior(warwick).
warrior(garen).
killer(khaZix).
killer(rengar).
killer(pyke).
killer(zed).
killer(ekko).
killer(katarina).
shooter(timo).
shooter(ashe).
shooter(senna).
shooter(lucian).
shooter(dreivan).
shooter(jinx).

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


% Место отыгрыша на карте (Некорректно немного получилось)
role(carry, lucian).
role(support, trash).
role(support, senna).
role(jungle, viego).
role(jungle, khaZix).
role(support, pyke).
role(mid, zed).
role(jungle, rengar).
role(support, reykan).
role(support, sweyn).
role(carry, dreivan).
role(top, darius).
role(carry, jinx).
role(jungle, vai).
role(jungle, ekko).
role(jungle, warwick).
role(mid, luxe).
role(top, garen).
role(mid, saylas).
role(carry, ashe).
role(support, braum).
role(support, tarik).
role(mid, veigar).
role(top, timo).
role(mid, ari).
role(mid, zerat).
role(mid, katarina).

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
sameRoles(X, Y) :- role(Z, X), role(H, Y), Z = H, X \= Y.

% Топеры-стрелки
topShooters(X) :- role(top, X), shooter(X).

% Войны между территориями
wars(X, Y) :- homeland(X, Z), homeland(Y, H), (enemies(Z, H); enemies(H, Z)), X \= Y.

% Враги с одинаковой позицией в игре
sameEnemiesByRole(X, Y) :- role(Z, X), role(H, Y), (enemies(X, Y); enemies(Y, X)), X \= Y, Z = H.

% Друзья (Территории с общим врагом без войны друг с другом)
friends(X, Y) :- wars(X, Z), wars(Y, Z), not(wars(X, Y)), X \= Y.