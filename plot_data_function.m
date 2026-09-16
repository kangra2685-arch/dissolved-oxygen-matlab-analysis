function plot_data_function()

    month = [2, 4, 6, 8, 10, 12];
    Q = [7164.8, 6513.5, 6513.5, 5862.1, 4559.4, 5210.8];
    figure;
    plot(month, Q, '-o', 'LineWidth', 2);
    xlabel('월 (Month)');
    ylabel('유량 (Q(m^3/month))');
    title('월별 유량');
    grid on;
    text(month, Q, num2str(Q', '%.1f'), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
end
