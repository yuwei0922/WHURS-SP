function R = xyzw2R(p)
%该函数用来将四元数转化为旋转矩阵
   x = p(1);  y = p(2);  z = p(3);  w = p(4);
   m11 = 1-2*y^2-2*z^2;
   m12 = 2*x*y-2*z*w;
   m13 = 2*x*z+2*y*w;
   m21 = 2*x*y+2*z*w;
   m22 = 1-2*x^2-2*z^2;
   m23 = 2*y*z-2*x*w;
   m31 = 2*x*z-2*y*w;
   m32 = 2*y*z+2*x*w;
   m33 = 1-2*x^2-2*y^2;
   R = [m11 m12 m13;m21 m22 m23;m31 m32 m33];
end