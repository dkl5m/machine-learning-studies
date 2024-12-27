% Inicialização dos parâmetros
theta_1 = theta_1_inicial;   % Valor inicial para theta_1
distance_2 = distance_2_inicial;   % Valor inicial para distance_2
distance_3 = distance_3_inicial;   % Valor inicial para distance_3

% Parâmetros de tolerância e máximo de iterações
tolerancia = 1e-6;  % Tolerância para o critério de parada
max_iter = 1000;  % Número máximo de iterações

% Função de erro
erro = @(theta_1, distance_2, distance_3) ...
    sqrt((x_d - calcular_x(theta_1, distance_2, distance_3))^2 + ...
         (y_d - calcular_y(theta_1, distance_2, distance_3))^2 + ...
         (z_d - calcular_z(theta_1, distance_2, distance_3))^2);

% Derivadas parciais (Jacobiano)
jacobiano = @(theta_1, distance_2, distance_3) ...
    [ % Derivada de x em relação a theta_1, distance_2 e distance_3
      calc_dx_dtheta1(theta_1, distance_2, distance_3), calc_dx_ddistance2(theta_1, distance_2, distance_3), calc_dx_ddistance3(theta_1, distance_2, distance_3);
      
      % Derivada de y em relação a theta_1, distance_2 e distance_3
      calc_dy_dtheta1(theta_1, distance_2, distance_3), calc_dy_ddistance2(theta_1, distance_2, distance_3), calc_dy_ddistance3(theta_1, distance_2, distance_3);
      
      % Derivada de z em relação a theta_1, distance_2 e distance_3
      calc_dz_dtheta1(theta_1, distance_2, distance_3), calc_dz_ddistance2(theta_1, distance_2, distance_3), calc_dz_ddistance3(theta_1, distance_2, distance_3);
    ];
