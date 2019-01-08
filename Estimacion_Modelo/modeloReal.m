function qdd = modeloReal(in1,in2)
%MODELOREAL
%    QDD = MODELOREAL(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.1.
%    08-Jan-2019 02:40:47

Im1 = in2(1,:);
Im2 = in2(2,:);
Im3 = in2(3,:);
q2 = in1(5,:);
q3 = in1(6,:);
qd1 = in1(1,:);
qd2 = in1(2,:);
qd3 = in1(3,:);
t2 = q2.*2.0;
t3 = q3.*2.0;
t4 = t2+t3;
t5 = sin(t4);
t6 = q3+t2;
t7 = sin(t6);
t8 = cos(q3);
t9 = sin(q3);
t10 = qd1.^2;
t11 = sin(t2);
t12 = Im1.*2.5e1;
t13 = qd2.*t11.*2.59550787565944e16;
t14 = qd2.*t5.*1.041339867668763e15;
t15 = qd3.*t5.*1.041339867668763e15;
t16 = qd3.*t9.*4.377762547469376e15;
t17 = qd2.*t7.*8.755525094938752e15;
t18 = qd3.*t7.*4.377762547469376e15;
t19 = t13+t14+t15+t16+t17+t18-1.396941683156928e16;
t20 = qd1.*t19.*2.220446049250313e-16;
t21 = t12+t20;
t22 = cos(t6);
t23 = cos(t2);
t24 = cos(t4);
t25 = t8.^2;
t26 = t8.*5.47220318433672e14;
t27 = t26-7.03206500895889e14;
t28 = t8.*1.781167009391394e31;
t34 = t25.*1.197800307626598e30;
t29 = t28-t34+9.878583757848879e32;
t30 = 1.0./t29;
t31 = q2+q3;
t32 = cos(t31);
t33 = t5.*t10.*1.156119497545974e-1;
t35 = qd2.*(1.8e1./2.5e1);
t36 = t32.*9.535894427575759;
t37 = cos(q2);
t38 = t37.*4.882730700899936e1;
t39 = qd3.^2;
t40 = t7.*t10.*9.720585553084362e-1;
t41 = t10.*t11.*2.881592604153039;
t42 = Im2.*-1.2e1+t33+t35+t36+t38+t40+t41-t9.*t39.*9.720585553084362e-1-qd2.*qd3.*t9.*1.944117110616872;
t43 = t22.*8.649218799430022e48;
t44 = t23.*2.56399419438582e49;
t45 = t24.*1.028696310315314e48;
t46 = t8.*1.458528407406467e49;
t47 = t8.*t22.*1.559505244900335e47;
t48 = t8.*t23.*4.623033000740134e47;
t49 = t8.*t24.*1.8548002178556e46;
t50 = t25.*-2.432383654096525e47+t43+t44+t45+t46+t47+t48+t49-t8.*t25.*1.048737065215003e46-t22.*t25.*1.048737065215003e46-t23.*t25.*3.108900131912134e46-t24.*t25.*1.247317213837485e45+3.292218960847091e50;
t51 = 1.0./t50;
t52 = t8.*2.188881273734688e15;
t53 = t52+1.470579675176802e17;
t54 = qd3.*(1.17e2./4.0e2);
t55 = t32.*9.53589442757576;
t56 = t9.*t10.*4.860292776542181e-1;
t57 = qd2.^2;
t58 = t9.*t57.*9.720585553084362e-1;
t59 = t7.*t10.*4.860292776542181e-1;
t60 = Im3.*(-2.1e1./4.0)+t33+t54+t55+t56+t58+t59;
qdd = [(t21.*9.007199254740992e15)./(t8.*8.755525094938752e15+t22.*8.755525094938752e15+t23.*2.59550787565944e16+t24.*1.041339867668763e15+3.332683147249026e17);t30.*t42.*-7.578349540105661e30+t21.*t27.*t51.*1.212535926416906e32+t27.*t30.*t60.*2.251799813685248e15;t27.*t30.*t42.*2.251799813685248e15-t21.*t51.*t53.*6.062679632084529e31-t30.*t53.*t60.*1.125899906842624e15];
