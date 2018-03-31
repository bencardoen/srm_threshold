
%% ----
load('../ToBen/AnalyzingVariousBlinksPercentages/Cell_1_VariousBlinksPercentages.mat');
%load('../ToBen/AnalyzingVariousBlinksPercentages/Cell_2_VariousBlinksPercentages.mat');

fig = figure('position',[60, 60, 1500, 1500]);
for kk=1:size(Blinks,2)
    plot(Th,numBlinksMeanConn(:,kk)./Blinks(kk),'o-')
% Th,numBlinksMedConn./Blinks(kk),'d-', Th,numBlinksMeanConnZeroOut./Blinks(kk),'x-', Th,numBlinksMedConnZeroOut./Blinks(kk),'+-')
    hold on;
end
legend('The first 10% of the blinks', '20% of the blinks', '30% of the blinks',...
'40% of the blinks', '50% of the blinks','60% of the blinks','70% of the blinks',...
'80% of the blinks','90% of the blinks','100% of the blinks','location','northwest');
grid on
title('The #blinks with degree > average degree');
xlabel('Proximity threshold (nm)')
ylabel('Blinks percenatge');
set(gca,'fontsize',16);