function nemNgang
% Nhap cac gia tri dau vao
g = 9.8; 
h = input("Nhập vào độ cao vật được ném: ");
v0 = input("Nhập vào vận tốc ban đầu: ");

%Lap phuong trinh chuyen dong
x = 0:0.1:v0*sqrt(2*h/g);
y=h-g*x.^2/(2*v0^2);

% Lập hàm tính vận tốc
v = @(t) sqrt(v0^2 + (g*t).^2);

%Tính tỉ số v1/v2
fprintf(['\n   + Tỉ số v1/v2 là: ' num2str(v(1)/v(2)) '\n'])
 
% Tinh gia toc phap tuyen va gia toc tiep tuyen
d = 1e-9;
at = @(t) (v(t+d)-v(t))/d;
an = @(t) sqrt(g^2 - at(t).^2);
fprintf(['\n   + Gia tốc tiếp tuyến sau 1s là: ' num2str(at(1)) ' m/(s^2)']);
fprintf(['\n   + Gia tốc pháp tuyến sau 1s là: ' num2str(an(1)) ' m/(s^2)']);

% pause(3)
% Ve quy dao chuyen dong
 xlabel('x(m)')
 ylabel('y(m)')
for i = 1:length(x)
    plot(x(1:i),y(1:i),'--k')
    hold on
    plot(x(i),y(i),'bo', ...
        MarkerFaceColor='b', ...
        MarkerEdgeColor='k', ...
        MarkerSize=10,LineWidth=2)
    hold off
    xlabel('x(m)')
    ylabel('y(m)')
    legend('Quỹ đạo', 'Vật')
    axis([0 (v0*sqrt(2*h/g)+2) 0 (h+2)])
    grid on
    pause(0.03)
end
