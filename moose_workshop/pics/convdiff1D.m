clear all
clf
hold on

% epsilon=[.01 .1 1];
epsilon=[1 .1 .01];
colors={'b-', 'r-', 'k-'};

x=linspace(0,1);

for k=1:length(epsilon)
  ph=plot(x, (exp(x/epsilon(k))-1)/(exp(1/epsilon(k))-1), colors{k});
  set(ph,'linewidth',4);
  leg_string{k} = ['\epsilon = ', num2str(epsilon(k))];
end

legend(leg_string, 'location', 'northwest');


% Hard-coded landscape orientation
set (gcf, "paperposition", [0.25, 0.25, 10.75, 8.25]); % [xmin, ymin, xmax, ymax]
set (gcf, "papersize", [11, 8.5]);
set (gcf, "paperorientation", 'landscape');

% Does this actually work now???  Hurray, it does work as of Octave 3.2.3
set(gca, 'Fontsize', 20);

plot_name='convdiff1D';
print('-dpsc', [plot_name, '.ps'], '-FHelvetica:20');
system (['ps2pdf ', plot_name, '.ps ', plot_name, '.pdf']);
system(['rm ', plot_name, '.ps']);
