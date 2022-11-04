%SubTask 2 - graphically verify whether the following system is linear / non-linear, 
% Stable /unstable:

% 𝒚(𝒏) = 𝒚^2 (𝒏 − 𝟏) + 𝒙(𝒏), for the bounded input 𝒙(𝒏) = 𝒖(𝒏) + 𝒖(𝒏 − 𝟐) 


n0 = -5:5; %range
syms x(n);
x(n) = heaviside(n)-heaviside(n-2);
syms y(n);
y(n) = ((n-1))^2 + x(n);
subplot(111),plot(y(n0),n0);
title('Sequence #1 - Stem');
xlabel('x(n)');
ylabel('n0');

%1) Condition for Linearity: Relationship between x & y is linear (straight
%line), and should cross the origin. 
%Answer: NO, it is not Linear, as it does not pass through origin and does
%not satisfy superposition. 

%2) Condition for Stability: Should Satisfy the BIBO stability condition.
B = isstable(y);
disp(B);

    