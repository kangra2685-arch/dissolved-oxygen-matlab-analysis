%해양 속 용존 산소에 대한 자료의 단위=mL/L
%용존 산소의 유량을 계산하기 위한 단위 변환
%동안난류의 평균 유속=0.514m/sec
%0.514*60*60*24*30=13332
%즉, 동안난류의 평균 유속=1332m/month
%용존 산소의 부피를 면적으로 표현하기 위한 계산 과정
A=978000;
h=0.05;
V_o = A*h;

%1mL/L->L/km^3
%1mL/L=1000000L/km^3
V_Ox = V_o*1000000;
A_OX= V_Ox/h;
%즉 978*10^6m2이라는 면적 구할 수 있다.

%따라서 각각의 달에 따른 용존 산소의 양에 A_Ox를 구하면 유량 계산을 위한 각 자료의 Area를 구할 수 있다. 
%용존산소 데이터(ml)기준
Oxi=[5.5, 5, 5, 4.5, 3.5, 4];
Oxi_real=A_OX/1000*Oxi;
Q_Oxi=Oxi_real*1332;

%1km^3=10^9m^3
%용존 속도의 유량(km^3/1month)
Q_Oxi_month=Q_Oxi/10^9*10^3;

% 데이터 import
month = [2, 4, 6, 8, 10, 12];
Q = [7164.8, 6513.5, 6513.5, 5862.1, 4559.4, 5210.8];

% 그래프 플로팅
figure;
plot(month, Q, '-o', 'LineWidth', 2);
xlabel('월 (Month)');
ylabel('유량 (Q)');
title('월별 유량');
grid on;

% 라벨 표시
text(month, Q, num2str(Q', '%.1f'), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');

% 2차 다항식 피팅
degree = 2;
coefficients = polyfit(month, Q, degree);

% 다항식 계수 출력
disp(['피팅된 곡선의 식: ', num2str(coefficients(1), '%.4f'), 'x^2 + ', num2str(coefficients(2), '%.4f'), 'x + ', num2str(coefficients(3), '%.4f')]);

% 피팅된 곡선 생성
fitted_curve = polyval(coefficients, month);

% 그래프 플로팅
figure;
plot(month, Q, '-o', 'LineWidth', 2, 'DisplayName', '데이터');
hold on;
plot(month, fitted_curve, '-', 'LineWidth', 2, 'DisplayName', '피팅 곡선');
xlabel('월 (Month)');
ylabel('유량 (Q(m^3/month))');
title('2차 다항식 피팅 결과');
grid on;

% 라벨 및 범례 설정
legend('Location', 'Best');
text(month, Q, num2str(Q', '%.1f'), 'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom');

% 피팅 곡선에 대한 라벨 표시
legend('show');

% 그래프 스타일 조정 (옵션)
set(gca, 'xtick', month);
  