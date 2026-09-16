function fit_and_plot_function()
    month = [2, 4, 6, 8, 10, 12];
    Q = [7164.8, 6513.5, 6513.5, 5862.1, 4559.4, 5210.8];
    degree = 2;
    coefficients = polyfit(month, Q, degree);
    disp(['피팅된 곡선의 식: ', num2str(coefficients(1), '%.4f'), 'x^2 + ', num2str(coefficients(2), '%.4f'), 'x + ', num2str(coefficients(3), '%.4f')]);

    fitted_curve = polyval(coefficients, month);
    figure;
    plot(month, Q, '-o', 'LineWidth', 2, 'DisplayName', '데이터');
    hold on;
    plot(month, fitted_curve, '-', 'LineWidth', 2, 'DisplayName', '피팅 곡선');
    xlabel('월 (Month)');
    ylabel('유량 (Q(m^3/month))');
    title('2차 다항식 피팅 결과');
    grid on;
    legend('Location', 'Best');
    text(month, Q, num2str(Q', '%.1f'), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');
    legend('show');
    set(gca, 'xtick', month);
end 
