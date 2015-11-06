H_Y = -1/2*log2(1/2) - 1/2*log2(1/2);
P_temp_hot = 1/2;
P_temp_cold = 1/2;
P_taste_salty = 3/10;
P_taste_sweet = 2/5;
P_taste_sour = 3/10;
P_size_large = 1/2;
P_size_small = 1/2;

H_Y_given_hot = -2/5*log2(2/5)-3/5*log2(3/5);
H_Y_given_cold = -2/5*log2(2/5)-3/5*log2(3/5);
H_Y_temp = H_Y - P_temp_hot * H_Y_given_hot - ...
            P_temp_cold * H_Y_given_cold

H_Y_given_salty = 0;
H_Y_given_sweet = 1;
H_Y_given_sour = 0;
H_Y_taste = H_Y - P_taste_salty * H_Y_given_salty - ...
            P_taste_sweet * H_Y_given_sweet - ...
            P_taste_sour * H_Y_given_sour

H_Y_given_large = -1/5*log2(1/5) - 4/5*log2(4/5);
H_Y_given_small = -1/5*log2(1/5) - 4/5*log2(4/5);
H_Y_size = H_Y - P_size_large * H_Y_given_large - ...
            P_size_small * H_Y_given_small