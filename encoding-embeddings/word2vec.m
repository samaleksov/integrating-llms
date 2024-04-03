king = quiver3(0,0,0,5,5,5, 0)
set(king, 'Color', 'blue');
set(king, 'LineWidth', 1);
kingtext = text(4, 4, 5, 'King')
set(kingtext, 'Color', 'blue')

hold on

man = quiver3(0,0,0,5,5,2.5, 0)
set(man, 'Color', 'black');
set(man, 'LineWidth', 1);
mantext = text(4, 4, 1.5, 'Man')
set(mantext, 'Color', 'black')
hold on


queen = quiver3(0,0,0,-5,-5,5, 0)
set(queen, 'Color', 'magenta');
set(queen, 'LineWidth', 1);
queentext = text(-4, -4, 5, 'Queen')
set(queentext, 'Color', 'magenta')
hold on

woman = quiver3(0,0,0,-5,-5,2.5, 0)
set(woman, 'Color', 'red');
set(woman, 'LineWidth', 1);
queentext = text(-4, -4, 2.5, 'Woman')
set(queentext, 'Color', 'red')
hold on

kingminusman = quiver3(5,5,5,0,0,-2.5, 0)
set(kingminusman, 'Color', 'green');
set(kingminusman, 'LineWidth', 1);
kingminusmantext = text(4.8, 4, 3.5, 'King - Man')
set(kingminusmantext, 'Color', 'green')
hold on



womanplusresult = quiver3(-5,-5,2.5,0,0,2.5, 0)
set(womanplusresult, 'Color', 'green');
set(womanplusresult, 'LineWidth', 1);
womanplusresulttext = text(-4.8, -4, 3.5, 'King - Man + Woman')
set(womanplusresulttext, 'Color', 'green')
hold on




t1 = quiver3(-5,-5,5,0,0,2.5, 0)
set(t1, 'Color', 'green');
set(t1, 'LineWidth', 1);
hold on

t2 = quiver3(-5,-5,7.5,2.5,0,0, 0)
set(t2, 'Color', 'green');
set(t2, 'LineWidth', 1);
hold on

t3 = quiver3(-2.5,-5,7.5,2.5,2.5,0, 0)
set(t3, 'Color', 'green');
set(t3, 'LineWidth', 1);
hold on


t4 = quiver3(-0,-2.5,7.5,2.5,2.5,-2.5, 0)
set(t4, 'Color', 'green');
set(t4, 'LineWidth', 1);
castletext = text(2.5, 0, 4.8, 'Castle')
set(castletext, 'Color', 'green')
hold on

axis equal


