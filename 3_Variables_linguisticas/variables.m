x=0:0.01:10;

lento=zmf(x,[2 4]);
moderado = gaussmf(x, [1.3 4.5]);
rapido=smf(x,[5 6.5]);

plot(x,moderado);
hold on;
plot(x,lento);
plot(x,rapido);

% ------------------------------------

calmado=zmf(x,[3 6]);
insensible = gaussmf(x, [1 6]);
furioso=smf(x,[7 8.5]);
plot(x,calmado, 'LineStyle', '--');
hold on;
plot(x,insensible, 'LineStyle', '--');
plot(x,furioso, 'LineStyle', '--');

% ------------------------------------

rapido_furioso = max(rapido,furioso);
plot(x,rapido_furioso, 'Marker', 'x')

% ------------------------------------

muy_lento = lento.^2;
algo_calmado = intens(x,calmado);
muy_lento_algo_calmado = max(muy_lento,algo_calmado)

plot(x,muy_lento);
hold on;
plot(x,algo_calmado);
plot(x,muy_lento_algo_calmado, 'LineStyle', '--', 'LineWidth', 2);

% ------------------------------------

no_rapido = 1 - rapido;
no_rapido_xor_insensible = xor_function(no_rapido,insensible);
plot(x,no_rapido);
hold on;
plot(x,insensible);
plot(x,no_rapido_xor_insensible, 'LineStyle', '--', 'LineWidth', 2);
