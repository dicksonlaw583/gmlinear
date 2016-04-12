#define r2
///r2(x0, x1)
{
  var v;
  v[0] = argument0;
  v[1] = argument1;
  return v;
}

#define r2_zero
///r2_zero()
{
  var v;
  v[0] = 0;
  v[1] = 0;
  return v;
}

#define r3
///r3(x0, x1, x2)
{
  var v;
  v[0] = argument0;
  v[1] = argument1;
  v[2] = argument2;
  return v;
}

#define r3_zero
///r3_zero()
{
  var v;
  v[0] = 0;
  v[1] = 0;
  v[2] = 0;
  return v;
}

#define r4
///r4(x0, x1, x2, x3)
{
  var v;
  v[0] = argument0;
  v[1] = argument1;
  v[2] = argument2;
  v[3] = argument3;
  return v;
}

#define r4_zero
///r4_zero()
{
  var v;
  v[0] = 0;
  v[1] = 0;
  v[2] = 0;
  v[3] = 0;
  return v;
}

#define rn
///rn(...)
{
  var v;
  for (var i = 0; i < argument_count; i++) {
    v[i] = argument[i];
  }
  return v;
}

#define rn_zero
///rn_zero(n)
{
  var v;
  for (var i = 0; i < argument0; i++) {
    v[i] = 0;
  }
  return v;
}

#define r22
///r22(x00, x01, x10, x11)
{
  var M;
  M[0, 0] = argument0;
  M[0, 1] = argument1;
  M[1, 0] = argument2;
  M[1, 1] = argument3;
  return M;
}

#define r22_identity
///r22_identity()
{
  var M;
  M[0, 0] = 1;
  M[0, 1] = 0;
  M[1, 0] = 0;
  M[1, 1] = 1;
  return M;
}

#define r22_zero
///r22_zero()
{
  var M;
  M[0, 0] = 0;
  M[0, 1] = 0;
  M[1, 0] = 0;
  M[1, 1] = 0;
  return M;
}

#define r33
///r33(x00, x01, x02, x10, x11, x12, x20, x21, x22)
{
  var M;
  M[0, 0] = argument0;
  M[0, 1] = argument1;
  M[0, 2] = argument2;
  M[1, 0] = argument3;
  M[1, 1] = argument4;
  M[1, 2] = argument5;
  M[2, 0] = argument6;
  M[2, 1] = argument7;
  M[2, 2] = argument8;
  return M;
}

#define r33_identity
///r33_identity()
{
  var M;
  M[0, 0] = 1;
  M[0, 1] = 0;
  M[0, 2] = 0;
  M[1, 0] = 0;
  M[1, 1] = 1;
  M[1, 2] = 0;
  M[2, 0] = 0;
  M[2, 1] = 0;
  M[2, 2] = 1;
  return M;
}

#define r33_zero
///r33_zero()
{
  var M;
  M[0, 0] = 0;
  M[0, 1] = 0;
  M[0, 2] = 0;
  M[1, 0] = 0;
  M[1, 1] = 0;
  M[1, 2] = 0;
  M[2, 0] = 0;
  M[2, 1] = 0;
  M[2, 2] = 0;
  return M;
}

#define r44
///r44(x00, x01, x02, x03, x10, x11, x12, x13, x20, x21, x22, x23, x30, x31, x32, x33)
{
  var M;
  M[0, 0] = argument0;
  M[0, 1] = argument1;
  M[0, 2] = argument2;
  M[0, 3] = argument3;
  M[1, 0] = argument4;
  M[1, 1] = argument5;
  M[1, 2] = argument6;
  M[1, 3] = argument7;
  M[2, 0] = argument8;
  M[2, 1] = argument9;
  M[2, 2] = argument10;
  M[2, 3] = argument11;
  M[3, 0] = argument12;
  M[3, 1] = argument13;
  M[3, 2] = argument14;
  M[3, 3] = argument15;
  return M;
}

#define r44_identity
///r44_identity()
{
  var M;
  M[0, 0] = 1;
  M[0, 1] = 0;
  M[0, 2] = 0;
  M[0, 3] = 0;
  M[1, 0] = 0;
  M[1, 1] = 1;
  M[1, 2] = 0;
  M[1, 3] = 0;
  M[2, 0] = 0;
  M[2, 1] = 0;
  M[2, 2] = 1;
  M[2, 3] = 0;
  M[3, 0] = 0;
  M[3, 1] = 0;
  M[3, 2] = 0;
  M[3, 3] = 1;
  return M;
}

#define r44_zero
///r44_zero()
{
  var M;
  M[0, 0] = 0;
  M[0, 1] = 0;
  M[0, 2] = 0;
  M[0, 3] = 0;
  M[1, 0] = 0;
  M[1, 1] = 0;
  M[1, 2] = 0;
  M[1, 3] = 0;
  M[2, 0] = 0;
  M[2, 1] = 0;
  M[2, 2] = 0;
  M[2, 3] = 0;
  M[3, 0] = 0;
  M[3, 1] = 0;
  M[3, 2] = 0;
  M[3, 3] = 0;
  return M;
}

#define rmn
///rmn(m, n, ...)
{
  var m = argument[0],
      n = argument[1];
  var mm = 0,
      nn = 0;
  var M;
  for (var i = 2; i < argument_count; i++) {
    M[mm, nn] = argument[i];
    if (++nn == n) {
      mm++;
      nn = 0;
    }
  }
  return M;
}

#define rmn_zero
///rmn_zero(m, n)
{
  var M;
  for (var i = 0; i < argument0; i++) {
    for (var j = 0; j < argument1; j++) {
      M[i, j] = 0;
    }
  }
  return M;
}

#define rnn
///rnn(...)
{
  var result;
  switch (argument_count) {
    case 1:
      result[0, 0] = argument[0];
    break;
    case 4:
      result[0, 0] = argument[0];
      result[0, 1] = argument[1];
      result[1, 0] = argument[2];
      result[1, 1] = argument[3];
    break;
    case 9:
      result[0, 0] = argument[0];
      result[0, 1] = argument[1];
      result[0, 2] = argument[2];
      result[1, 0] = argument[3];
      result[1, 1] = argument[4];
      result[1, 2] = argument[5];
      result[2, 0] = argument[6];
      result[2, 1] = argument[7];
      result[2, 2] = argument[8];
    break;
    case 16:
      result[0, 0] = argument[0];
      result[0, 1] = argument[1];
      result[0, 2] = argument[2];
      result[0, 3] = argument[3];
      result[1, 0] = argument[4];
      result[1, 1] = argument[5];
      result[1, 2] = argument[6];
      result[1, 3] = argument[7];
      result[2, 0] = argument[8];
      result[2, 1] = argument[9];
      result[2, 2] = argument[10];
      result[2, 3] = argument[11];
      result[3, 0] = argument[12];
      result[3, 1] = argument[13];
      result[3, 2] = argument[14];
      result[3, 3] = argument[15];
    break;
    default:
      show_error("Expected 1, 4, 9 or 16 arguments, got " + string(argument_count) + ".", true);
    break;
  }
  return result;
}

#define rnn_identity
///rnn_identity(n)
{
  var M;
  for (var i = 0; i < argument0; i++) {
    for (var j = 0; j < argument0; j++) {
      M[i, j] = 0;
    }
  }
  for (var i = 0; i < argument0; i++) {
    M[i, i] = 1;
  }
  return M;
}

#define rnn_zero
///rnn_zero(n)
{
  var M;
  for (var i = 0; i < argument0; i++) {
    for (var j = 0; j < argument0; j++) {
      M[i, j] = 0;
    }
  }
  return M;
}

#define r2_clone
///r2_clone(v)
{
  var v_new;
  v_new[0] = argument0[0];
  v_new[1] = argument0[1];
  return v_new;
}

#define r2_clone_to
///r2_clone_to(v, vout)
{
  argument1[@ 0] = argument0[0];
  argument1[@ 1] = argument0[1];
  return argument1;
}

#define r2_add
///r2_add(v1, v2)
{
  var result;
  result[0] = argument0[0]+argument1[0];
  result[1] = argument0[1]+argument1[1];
  return result;
}

#define r2_add_to
///r2_add_to(v1, v2, vout)
{
  argument2[@ 0] = argument0[0]+argument1[0];
  argument2[@ 1] = argument0[1]+argument1[1];
  return argument2;
}

#define r2_subtract
///r2_subtract(v1, v2)
{
  var result;
  result[0] = argument0[0]-argument1[0];
  result[1] = argument0[1]-argument1[1];
  return result;
}

#define r2_subtract_to
///r2_subtract_to(v1, v2, vout)
{
  argument2[@ 0] = argument0[0]-argument1[0];
  argument2[@ 1] = argument0[1]-argument1[1];
  return argument2;
}

#define r2_dot
///r2_dot(v1, v2)
{
  return argument0[0]*argument1[0]+argument0[1]*argument1[1];
}

#define r2_scale
///r2_scale(v, r)
{
  var result;
  result[0] = argument1*argument0[0];
  result[1] = argument1*argument0[1];
  return result;
}

#define r2_scale_to
///r2_scale_to(v, r, vout)
{
  argument2[@ 0] = argument1*argument0[0];
  argument2[@ 1] = argument1*argument0[1];
  return argument2;
}

#define r2_unit
///r2_unit(v)
{
 var result;
 if ((argument0[0] == 0) and (argument0[1] == 0)) {
    result[@ 0] = 0;
    result[@ 1] = 0;
    return result;
 }
  var factor = 1/sqrt(argument0[0]*argument0[0]+argument0[1]*argument0[1]);
  
  result[0] = factor*argument0[0];
  result[1] = factor*argument0[1];
  return result;
}

#define r2_unit_to
///r2_unit_to(v, vout)
{
 if ((argument0[0] == 0) and (argument0[1] == 0)) {
    argument1[@ 0] = 0;
    argument1[@ 1] = 0;
    return argument1;
 }
  var factor = 1/sqrt(argument0[0]*argument0[0]+argument0[1]*argument0[1]);
  argument1[@ 0] = factor*argument0[0];
  argument1[@ 1] = factor*argument0[1];
  return argument1;
}

#define r2_norm
///r2_norm(v)
{
  return point_distance(0, 0, argument0[0], argument0[1]);
}

#define r2_dist
///r2_dist(v1, v2)
{
  var d0 = argument1[0]-argument0[0],
      d1 = argument1[1]-argument0[1];
  return sqrt(d0*d0 + d1*d1);
}

#define r2_1norm
///r2_1norm(v)
{
  return abs(argument0[0])+abs(argument0[1]);
}

#define r2_1dist
///r2_1dist(v1, v2)
{
  return abs(argument1[0]-argument0[0])+abs(argument1[1]-argument0[1]);
}

#define r2_maxnorm
///r2_maxnorm(v)
{
  return max(abs(argument0[0]), abs(argument0[1]));
}

#define r2_lerp
///r2_lerp(v1, v2, amount)
{
  var result;
  result[0] = lerp(argument0[0], argument1[0], argument2);
  result[1] = lerp(argument0[1], argument1[1], argument2);
  return result;
}

#define r2_lerp_to
///r2_lerp_to(v1, v2, amount, vout)
{
  argument3[@ 0] = lerp(argument0[0], argument1[0], argument2);
  argument3[@ 1] = lerp(argument0[1], argument1[1], argument2);
  return argument3;
}

#define r2_proj
///r2_proj(v1, v2)
{
  var b0 = argument1[0],
      b1 = argument1[1],
      factor = (b0*argument0[0] + b1*argument0[1]) / (b0*b0 + b1*b1);
  var result;
  result[0] = factor*b0;
  result[1] = factor*b1;
  return result;
}

#define r2_proj_to
///r2_proj_to(v1, v2, vout)
{
  var b0 = argument1[0],
      b1 = argument1[1],
      factor = (b0*argument0[0] + b1*argument0[1]) / (b0*b0 + b1*b1);
  argument2[@ 0] = factor*b0;
  argument2[@ 1] = factor*b1;
  return argument2;
}

#define r2_rej
///r2_rej(v1, v2)
{
  var b0 = argument1[0],
      b1 = argument1[1],
      factor = (b0*argument0[0] + b1*argument0[1]) / (b0*b0 + b1*b1);
  var result;
  result[0] = argument0[0]-factor*b0;
  result[1] = argument0[1]-factor*b1;
  return result;
}

#define r2_rej_to
///r2_rej_to(v1, v2, vout)
{
  var b0 = argument1[0],
      b1 = argument1[1],
      factor = (b0*argument0[0] + b1*argument0[1]) / (b0*b0 + b1*b1);
  argument2[@ 0] = argument0[0]-factor*b0;
  argument2[@ 1] = argument0[1]-factor*b1;
  return argument2;
}

#define r2_encode_string
///r2_encode_string(v)
{
  return string_replace_all(string_format(argument0[0], 15, 14)+","+string_format(argument0[1], 15, 14), ' ', '');
}

#define r2_decode_string
///r2_decode_string(str)
{
  var str, pos, result;
  str = argument0;
  pos = string_pos(',', str);
  result[0] = real(string_copy(str, 1, pos-1));
  result[1] = real(string_delete(str, 1, pos));
  return result;
}

#define r2_decode_string_to
///r2_decode_string_to(str, vout)
{
  var str, pos;
  str = argument0;
  pos = string_pos(',', str);
  argument1[@ 0] = real(string_copy(str, 1, pos-1));
  argument1[@ 1] = real(string_delete(str, 1, pos));
  return argument1;
}

#define r2_encode_base64
///r2_encode_base64(v)
{
  var buffer = buffer_create(16, buffer_fixed, 1);
  buffer_write(buffer, buffer_f64, argument0[0]);
  buffer_write(buffer, buffer_f64, argument0[1]);
  result = buffer_base64_encode(buffer, 0, 16);
  buffer_delete(buffer);
  return result;
}

#define r2_decode_base64
///r2_decode_base64(enc)
{
  var buffer = buffer_create(16, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  var result;
  result[0] = buffer_read(buffer, buffer_f64);
  result[1] = buffer_read(buffer, buffer_f64);
  buffer_delete(buffer);
  return result;
}

#define r2_decode_base64_to
///r2_decode_base64_to(enc, vout)
{
  var buffer = buffer_create(16, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  argument1[@ 0] = buffer_read(buffer, buffer_f64);
  argument1[@ 1] = buffer_read(buffer, buffer_f64);
  buffer_delete(buffer);
  return argument1;
}

#define r2_rec_gmp
///r2_rec_gmp(v_xy)
{
  var result;
  result[0] = sqrt(argument0[0]*argument0[0]+argument0[1]*argument0[1]);
  result[1] = darctan2(-argument0[1], argument0[0]);
  return result;
}

#define r2_rec_gmp_to
///r2_rec_gmp_to(vi_xy, vo_ld)
{
  var xx = argument0[0],
      yy = argument0[1];
  argument1[@ 0] = sqrt(xx*xx + yy*yy);
  argument1[@ 1] = darctan2(-yy, xx);
  return argument1;
}

#define r2_gmp_rec
///r2_gmp_rec(v_ld)
{
  var result;
  result[0] = lengthdir_x(argument0[0], argument0[1]);
  result[1] = lengthdir_y(argument0[0], argument0[1]);
  return result;
}

#define r2_gmp_rec_to
///r2_gmp_rec_to(vi_ld, vo_xy)
{
  var len = argument0[0],
      dir = argument0[1];
  argument1[@ 0] = lengthdir_x(len, dir);
  argument1[@ 1] = lengthdir_y(len, dir);
  return argument1;
}

#define r2_rec_pol
///r2_rec_pol(v_xy)
{
  var result;
  result[0] = sqrt(argument0[0]*argument0[0]+argument0[1]*argument0[1]);
  result[1] = arctan2(argument0[1], argument0[0]);
  return result;
}

#define r2_rec_pol_to
///r2_rec_pol_to(vi_xy, vo_rt)
{
  var xx = argument0[0],
      yy = argument0[1];
  argument1[@ 0] = sqrt(xx*xx + yy*yy);
  argument1[@ 1] = arctan2(yy, xx);
  return argument1;
}

#define r2_pol_rec
///r2_pol_rec(v_rt)
{
  var result;
  result[0] = argument0[0]*cos(argument0[1]);
  result[1] = argument0[0]*sin(argument0[1]);
  return result;
}

#define r2_pol_rec_to
///r2_pol_rec_to(vi_rt, vo_xy)
{
  var r = argument0[0],
      theta = argument0[1];
  argument1[@ 0] = r*cos(theta);
  argument1[@ 1] = r*sin(theta);
  return argument1;
}

#define r2_gmp_pol
///r2_gmp_pol(v_ld)
{
  var result;
  result[0] = argument0[0];
  result[1] = degtorad(-argument0[1]);
  return result;
}

#define r2_gmp_pol_to
///r2_gmp_pol_to(vi_ld, vo_rt)
{
  argument1[@ 0] = argument0[0];
  argument1[@ 1] = degtorad(-argument0[1]);
  return argument1;
}

#define r2_pol_gmp
///r2_pol_gmp(v_ld)
{
  var result;
  result[0] = argument0[0];
  result[1] = radtodeg(-argument0[1]);
  return result;
}

#define r2_pol_gmp_to
///r2_pol_gmp_to(vi_rt, vo_ld)
{
  argument1[@ 0] = argument0[0];
  argument1[@ 1] = radtodeg(-argument0[1]);
  return argument1;
}

#define r3_clone
///r3_clone(v)
{
  var v_new;
  v_new[0] = argument0[0];
  v_new[1] = argument0[1];
  v_new[2] = argument0[2];
  return v_new;
}

#define r3_clone_to
///r3_clone_to(v, vout)
{
  argument1[@ 0] = argument0[0];
  argument1[@ 1] = argument0[1];
  argument1[@ 2] = argument0[2];
  return argument1;
}

#define r3_add
///r3_add(v1, v2)
{
  var result;
  result[0] = argument0[0]+argument1[0];
  result[1] = argument0[1]+argument1[1];
  result[2] = argument0[2]+argument1[2];
  return result;
}

#define r3_add_to
///r3_add_to(v1, v2, vout)
{
  argument2[@ 0] = argument0[0]+argument1[0];
  argument2[@ 1] = argument0[1]+argument1[1];
  argument2[@ 2] = argument0[2]+argument1[2];
  return argument2;
}

#define r3_subtract
///r3_subtract(v1, v2)
{
  var result;
  result[0] = argument0[0]-argument1[0];
  result[1] = argument0[1]-argument1[1];
  result[2] = argument0[2]-argument1[2];
  return result;
}

#define r3_subtract_to
///r3_subtract_to(v1, v2, vout)
{
  argument2[@ 0] = argument0[0]-argument1[0];
  argument2[@ 1] = argument0[1]-argument1[1];
  argument2[@ 2] = argument0[2]-argument1[2];
  return argument2;
}

#define r3_dot
///r3_dot(v1, v2)
{
  return argument0[0]*argument1[0]+argument0[1]*argument1[1]+argument0[2]*argument1[2];
}

#define r3_cross
///r3_cross(v1, v2)
{
  var result;
  result[0] = argument0[1]*argument1[2]-argument0[2]*argument1[1];
  result[1] = argument0[2]*argument1[0]-argument0[0]*argument1[2];
  result[2] = argument0[0]*argument1[1]-argument0[1]*argument1[0];
  return result;
}

#define r3_cross_to
///r3_cross_to(v1, v2, vout)
{
  var a0 = argument0[0],
      a1 = argument0[1],
      a2 = argument0[2],
      b0 = argument1[0],
      b1 = argument1[1],
      b2 = argument1[2];
  argument2[@ 0] = a1*b2-a2*b1;
  argument2[@ 1] = a2*b0-a0*b2;
  argument2[@ 2] = a0*b1-a1*b0;
  return argument2;
}

#define r3_scale
///r3_scale(v, r)
{
  var result;
  result[0] = argument1*argument0[0];
  result[1] = argument1*argument0[1];
  result[2] = argument1*argument0[2];
  return result;
}

#define r3_scale_to
///r3_scale_to(v, r, vout)
{
  argument2[@ 0] = argument1*argument0[0];
  argument2[@ 1] = argument1*argument0[1];
  argument2[@ 2] = argument1*argument0[2];
  return argument2;
}

#define r3_unit
///r3_unit(v)
{
 var result;
 if ((argument0[0] == 0) and (argument0[1] == 0) and (argument0[2] == 0)) {
    result[@ 0] = 0;
    result[@ 1] = 0;
    result[@ 2] = 0;
    return result;
 }
  var factor = 1/sqrt(argument0[0]*argument0[0]+argument0[1]*argument0[1]+argument0[2]*argument0[2]);
  result[0] = factor*argument0[0];
  result[1] = factor*argument0[1];
  result[2] = factor*argument0[2];
  return result;
}

#define r3_unit_to
///r3_unit_to(v, vout)
{
  if ((argument0[0] == 0) and (argument0[1] == 0) and (argument0[2] == 0)) {
    argument1[@ 0] = 0;
    argument1[@ 1] = 0;
    argument1[@ 2] = 0;
    return argument1;
  }
  var factor = 1/sqrt(argument0[0]*argument0[0]+argument0[1]*argument0[1]+argument0[2]*argument0[2]);
  argument1[@ 0] = factor*argument0[0];
  argument1[@ 1] = factor*argument0[1];
  argument1[@ 2] = factor*argument0[2];
  return argument1;
}

#define r3_norm
///r3_norm(v)
{
  return sqrt(argument0[0]*argument0[0]+argument0[1]*argument0[1]+argument0[2]*argument0[2]);
}

#define r3_dist
///r3_dist(v1, v2)
{
  var d0 = argument1[0]-argument0[0],
      d1 = argument1[1]-argument0[1],
      d2 = argument1[2]-argument0[2];
  return sqrt(d0*d0 + d1*d1 + d2*d2);
}

#define r3_1norm
///r3_1norm(v)
{
  return abs(argument0[0])+abs(argument0[1])+abs(argument0[2]);
}

#define r3_1dist
///r3_1dist(v1, v2)
{
  return abs(argument1[0]-argument0[0])+abs(argument1[1]-argument0[1])+abs(argument1[2]-argument0[2]);
}

#define r3_maxnorm
///r3_maxnorm(v)
{
  return max(abs(argument0[0]), abs(argument0[1]), abs(argument0[2]));
}

#define r3_lerp
///r3_lerp(v1, v2, amount)
{
  var result;
  result[0] = lerp(argument0[0], argument1[0], argument2);
  result[1] = lerp(argument0[1], argument1[1], argument2);
  result[2] = lerp(argument0[2], argument1[2], argument2);
  return result;
}

#define r3_lerp_to
///r3_lerp_to(v1, v2, amount, vout)
{
  argument3[@ 0] = lerp(argument0[0], argument1[0], argument2);
  argument3[@ 1] = lerp(argument0[1], argument1[1], argument2);
  argument3[@ 2] = lerp(argument0[2], argument1[2], argument2);
  return argument3;
}

#define r3_proj
///r3_proj(v1, v2)
{
  var b0 = argument1[0],
      b1 = argument1[1],
      b2 = argument1[2],
      factor = (b0*argument0[0] + b1*argument0[1] + b2*argument0[2]) / (b0*b0 + b1*b1 + b2*b2);
  var result;
  result[0] = factor*b0;
  result[1] = factor*b1;
  result[2] = factor*b2;
  return result;
}

#define r3_proj_to
///r3_proj_to(v1, v2, vout)
{
  var b0 = argument1[0],
      b1 = argument1[1],
      b2 = argument1[2],
      factor = (b0*argument0[0] + b1*argument0[1] + b2*argument0[2]) / (b0*b0 + b1*b1 + b2*b2);
  argument2[@ 0] = factor*b0;
  argument2[@ 1] = factor*b1;
  argument2[@ 2] = factor*b2;
  return argument2;
}

#define r3_rej
///r3_rej(v1, v2)
{
  var b0 = argument1[0],
      b1 = argument1[1],
      b2 = argument1[2],
      factor = (b0*argument0[0] + b1*argument0[1] + b2*argument0[2]) / (b0*b0 + b1*b1 + b2*b2);
  var result;
  result[0] = argument0[0]-factor*b0;
  result[1] = argument0[1]-factor*b1;
  result[2] = argument0[2]-factor*b2;
  return result;
}

#define r3_rej_to
///r3_rej_to(v1, v2, vout)
{
  var b0 = argument1[0],
      b1 = argument1[1],
      b2 = argument1[2],
      factor = (b0*argument0[0] + b1*argument0[1] + b2*argument0[2]) / (b0*b0 + b1*b1 + b2*b2);
  argument2[@ 0] = argument0[0]-factor*b0;
  argument2[@ 1] = argument0[1]-factor*b1;
  argument2[@ 2] = argument0[2]-factor*b2;
  return argument2;
}

#define r3_encode_string
///r3_encode_string(v)
{
  return string_replace_all(string_format(argument0[0], 15, 14)+","+string_format(argument0[1], 15, 14)+","+string_format(argument0[2], 15, 14), ' ', '');
}

#define r3_decode_string
///r3_decode_string(str)
{
  var str, pos, result;
  str = argument0;
  pos = string_pos(',', str);
  result[0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[1] = real(string_copy(str, 1, pos-1));
  result[2] = real(string_delete(str, 1, pos));
  return result;
}

#define r3_decode_string_to
///r3_decode_string_to(str, vout)
{
  var str, pos;
  str = argument0;
  pos = string_pos(',', str);
  argument1[@ 0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  argument1[@ 1] = real(string_copy(str, 1, pos-1));
  argument1[@ 2] = real(string_delete(str, 1, pos));
  return argument1;
}

#define r3_encode_base64
///r3_encode_base64(v)
{
  var buffer = buffer_create(24, buffer_fixed, 1);
  buffer_write(buffer, buffer_f64, argument0[0]);
  buffer_write(buffer, buffer_f64, argument0[1]);
  buffer_write(buffer, buffer_f64, argument0[2]);
  result = buffer_base64_encode(buffer, 0, 24);
  buffer_delete(buffer);
  return result;
}

#define r3_decode_base64
///r3_decode_base64(enc)
{
  var buffer = buffer_create(24, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  var result;
  result[0] = buffer_read(buffer, buffer_f64);
  result[1] = buffer_read(buffer, buffer_f64);
  result[2] = buffer_read(buffer, buffer_f64);
  buffer_delete(buffer);
  return result;
}

#define r3_decode_base64_to
///r3_decode_base64_to(enc, vout)
{
  var buffer = buffer_create(24, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  argument1[@ 0] = buffer_read(buffer, buffer_f64);
  argument1[@ 1] = buffer_read(buffer, buffer_f64);
  argument1[@ 2] = buffer_read(buffer, buffer_f64);
  buffer_delete(buffer);
  return argument1;
}

#define r3_rec_cyl
///r3_rec_cyl(v_xyz)
{
  var result;
  result[0] = sqrt(argument0[0]*argument0[0]+argument0[1]*argument0[1]);
  if (result[0] == 0) {
    result[1] = 0;
  }
  else {
    result[1] = arctan2(argument0[1], argument0[0]);
  }
  result[2] = argument0[2];
  return result;
}

#define r3_rec_cyl_to
///r3_rec_cyl_to(vi_xyz, vo_rpz)
{
  var xx = argument0[0],
      yy = argument0[1],
      zz = argument0[2];
  argument1[@ 0] = sqrt(xx*xx + yy*yy);
  if (argument1[@ 0] == 0) {
    argument1[@ 1] = 0;
  }
  else {
    argument1[@ 1] = arctan2(yy, xx);
  }
  argument1[@ 2] = zz;
  return argument1;
}

#define r3_cyl_rec
///r3_cyl_rec(v_rpz)
{
  var result;
  result[0] = argument0[0]*cos(argument0[1]);
  result[1] = argument0[0]*sin(argument0[1]);
  result[2] = argument0[2];
  return result;
}

#define r3_cyl_rec_to
///r3_cyl_rec_to(vi_rpz, vo_xyz)
{
  var rho = argument0[0],
      azi = argument0[1],
      zz = argument0[2];
  argument1[@ 0] = rho*cos(azi);
  argument1[@ 1] = rho*sin(azi);
  argument1[@ 2] = zz;
  return argument1;
}

#define r3_rec_sph
///r3_rec_sph(v_xyz)
{
  var result;
  result[0] = sqrt(argument0[0]*argument0[0]+argument0[1]*argument0[1]+argument0[2]*argument0[2]);
  if (result[0] == 0) {
    result[1] = 0;
    result[2] = 0;
  }
  else {
    result[1] = arctan2(argument0[1], argument0[0]);
    result[2] = arccos(argument0[2]/result[0]);
  }
  return result;
}

#define r3_rec_sph_to
///r3_rec_sph_to(vi_xyz, vo_rpt)
{
  var xx = argument0[0],
      yy = argument0[1],
      zz = argument0[2];
  argument1[@ 0] = sqrt(xx*xx + yy*yy + zz*zz);
  if (argument1[@ 0] == 0) {
    argument1[@ 1] = 0;
    argument1[@ 2] = 0;
  }
  else {
    argument1[@ 1] = arctan2(yy, xx);
    argument1[@ 2] = arccos(zz/argument1[@ 0]);
  }
  return argument1;
}

#define r3_sph_rec
///r3_sph_rec(v_rpt)
{
  var result;
  result[0] = argument0[0]*cos(argument0[1])*sin(argument0[2]);
  result[1] = argument0[0]*sin(argument0[1])*sin(argument0[2]);
  result[2] = argument0[0]*cos(argument0[2]);
  return result;
}

#define r3_sph_rec_to
///r3_sph_rec_to(vi_rpt, vo_xyz)
{
  var rho = argument0[0],
      azi = argument0[1],
      zen = argument0[2];
  argument1[@ 0] = rho*cos(azi)*sin(zen);
  argument1[@ 1] = rho*sin(azi)*sin(zen);
  argument1[@ 2] = rho*cos(zen);
  return argument1;
}

#define r3_cyl_sph
///r3_cyl_sph(v_rpz)
{
  var result;
  result[0] = sqrt(argument0[0]*argument0[0]+argument0[2]*argument0[2]);
  result[1] = argument0[1];
  result[2] = arccos(argument0[2]/result[0]);
  return result;
}

#define r3_cyl_sph_to
///r3_cyl_sph_to(vi_rpz, vo_rpt)
{
  var rho = argument0[0],
      azi = argument0[1],
      zzz = argument0[2];
  argument1[@ 0] = sqrt(argument0[0]*argument0[0]+argument0[2]*argument0[2]);
  argument1[@ 1] = azi;
  argument1[@ 2] = arccos(zzz/argument1[@ 0]);
  return argument1;
}

#define r3_sph_cyl
///r3_sph_cyl(v_rpt)
{
  var result;
  result[0] = argument0[0]*sin(argument0[2]);
  result[1] = argument0[1];
  result[2] = argument0[0]*cos(argument0[2]);
  return result;
}

#define r3_sph_cyl_to
///r3_sph_cyl_to(vi_rpt, vo_rpz)
{
  var rho = argument0[0],
      azi = argument0[1],
      zen = argument0[2];
  argument1[@ 0] = rho*sin(zen);
  argument1[@ 1] = azi;
  argument1[@ 2] = rho*cos(zen);
  return argument1;
}

#define r4_clone
///r4_clone(v)
{
  var v_new;
  v_new[0] = argument0[0];
  v_new[1] = argument0[1];
  v_new[2] = argument0[2];
  v_new[3] = argument0[3];
  return v_new;
}

#define r4_clone_to
///r4_clone_to(v, vout)
{
  argument1[@ 0] = argument0[0];
  argument1[@ 1] = argument0[1];
  argument1[@ 2] = argument0[2];
  argument1[@ 3] = argument0[3];
  return argument1;
}

#define r4_add
///r4_add(v1, v2)
{
  var result;
  result[0] = argument0[0]+argument1[0];
  result[1] = argument0[1]+argument1[1];
  result[2] = argument0[2]+argument1[2];
  result[3] = argument0[3]+argument1[3];
  return result;
}

#define r4_add_to
///r4_add_to(v1, v2, vout)
{
  argument2[@ 0] = argument0[0]+argument1[0];
  argument2[@ 1] = argument0[1]+argument1[1];
  argument2[@ 2] = argument0[2]+argument1[2];
  argument2[@ 3] = argument0[3]+argument1[3];
  return argument2;
}

#define r4_subtract
///r4_subtract(v1, v2)
{
  var result;
  result[0] = argument0[0]-argument1[0];
  result[1] = argument0[1]-argument1[1];
  result[2] = argument0[2]-argument1[2];
  result[3] = argument0[3]-argument1[3];
  return result;
}

#define r4_subtract_to
///r4_subtract_to(v1, v2, vout)
{
  argument2[@ 0] = argument0[0]-argument1[0];
  argument2[@ 1] = argument0[1]-argument1[1];
  argument2[@ 2] = argument0[2]-argument1[2];
  argument2[@ 3] = argument0[3]-argument1[3];
  return argument2;
}

#define r4_dot
///r4_dot(v1, v2)
{
  return argument0[0]*argument1[0]+argument0[1]*argument1[1]+argument0[2]*argument1[2]+argument0[3]*argument1[3];
}

#define r4_scale
///r4_scale(v, r)
{
  var result;
  result[0] = argument1*argument0[0];
  result[1] = argument1*argument0[1];
  result[2] = argument1*argument0[2];
  result[3] = argument1*argument0[3];
  return result;
}

#define r4_scale_to
///r4_scale_to(v, r, vout)
{
  argument2[@ 0] = argument1*argument0[0];
  argument2[@ 1] = argument1*argument0[1];
  argument2[@ 2] = argument1*argument0[2];
  argument2[@ 3] = argument1*argument0[3];
  return argument2;
}

#define r4_unit
///r4_unit(v)
{
  var result;
  if ((argument0[0] == 0) and (argument0[1] == 0) and (argument0[2] == 0) and (argument0[3] == 0)) {
    result[@ 0] = 0;
    result[@ 1] = 0;
    result[@ 2] = 0;
    result[@ 3] = 0;
    return result;
  }
  var factor = 1/sqrt(argument0[0]*argument0[0]+argument0[1]*argument0[1]+argument0[2]*argument0[2]+argument0[3]*argument0[3]);
  result[0] = factor*argument0[0];
  result[1] = factor*argument0[1];
  result[2] = factor*argument0[2];
  result[3] = factor*argument0[3];
  return result;
}

#define r4_unit_to
///r4_unit_to(v, vout)
{
  if ((argument0[0] == 0) and (argument0[1] == 0) and (argument0[2] == 0) and (argument0[3] == 0)) {
    argument1[@ 0] = 0;
    argument1[@ 1] = 0;
    argument1[@ 2] = 0;
    argument1[@ 3] = 0;
    return argument1;
  }
  var factor = 1/sqrt(argument0[0]*argument0[0]+argument0[1]*argument0[1]+argument0[2]*argument0[2]+argument0[3]*argument0[3]);
  argument1[@ 0] = factor*argument0[0];
  argument1[@ 1] = factor*argument0[1];
  argument1[@ 2] = factor*argument0[2];
  argument1[@ 3] = factor*argument0[3];
  return argument1;
}

#define r4_norm
///r4_norm(v)
{
  return sqrt(argument0[0]*argument0[0]+argument0[1]*argument0[1]+argument0[2]*argument0[2]+argument0[3]*argument0[3]);
}

#define r4_dist
///r4_dist(v1, v2)
{
  var d0 = argument1[0]-argument0[0],
      d1 = argument1[1]-argument0[1],
      d2 = argument1[2]-argument0[2],
      d3 = argument1[3]-argument0[3];
  return sqrt(d0*d0 + d1*d1 + d2*d2 + d3*d3);
}

#define r4_1norm
///r4_1norm(v)
{
  return abs(argument0[0])+abs(argument0[1])+abs(argument0[2])+abs(argument0[3]);
}

#define r4_1dist
///r4_1dist(v1, v2)
{
  return abs(argument1[0]-argument0[0])+abs(argument1[1]-argument0[1])+abs(argument1[2]-argument0[2])+abs(argument1[3]-argument0[3]);
}

#define r4_maxnorm
///r4_maxnorm(v)
{
  return max(abs(argument0[0]), abs(argument0[1]), abs(argument0[2]), abs(argument0[3]));
}

#define r4_lerp
///r4_lerp(v1, v2, amount)
{
  var result;
  result[0] = lerp(argument0[0], argument1[0], argument2);
  result[1] = lerp(argument0[1], argument1[1], argument2);
  result[2] = lerp(argument0[2], argument1[2], argument2);
  result[3] = lerp(argument0[3], argument1[3], argument2);
  return result;
}

#define r4_lerp_to
///r4_lerp_to(v1, v2, amount, vout)
{
  argument3[@ 0] = lerp(argument0[0], argument1[0], argument2);
  argument3[@ 1] = lerp(argument0[1], argument1[1], argument2);
  argument3[@ 2] = lerp(argument0[2], argument1[2], argument2);
  argument3[@ 3] = lerp(argument0[3], argument1[3], argument2);
  return argument3;
}

#define r4_proj
///r4_proj(v1, v2)
{
  var b0 = argument1[0],
      b1 = argument1[1],
      b2 = argument1[2],
      b3 = argument1[3],
      factor = (b0*argument0[0] + b1*argument0[1] + b2*argument0[2] + b3*argument0[3]) / (b0*b0 + b1*b1 + b2*b2 + b3*b3);
  var result;
  result[0] = factor*b0;
  result[1] = factor*b1;
  result[2] = factor*b2;
  result[3] = factor*b3;
  return result;
}

#define r4_proj_to
///r4_proj_to(v1, v2, vout)
{
  var b0 = argument1[0],
      b1 = argument1[1],
      b2 = argument1[2],
      b3 = argument1[3],
      factor = (b0*argument0[0] + b1*argument0[1] + b2*argument0[2] + b3*argument0[3]) / (b0*b0 + b1*b1 + b2*b2 + b3*b3);
  argument2[@ 0] = factor*b0;
  argument2[@ 1] = factor*b1;
  argument2[@ 2] = factor*b2;
  argument2[@ 3] = factor*b3;
  return argument2;
}

#define r4_rej
///r4_rej(v1, v2)
{
  var b0 = argument1[0],
      b1 = argument1[1],
      b2 = argument1[2],
      b3 = argument1[3],
      factor = (b0*argument0[0] + b1*argument0[1] + b2*argument0[2] + b3*argument0[3]) / (b0*b0 + b1*b1 + b2*b2 + b3*b3);
  var result;
  result[0] = argument0[0]-factor*b0;
  result[1] = argument0[1]-factor*b1;
  result[2] = argument0[2]-factor*b2;
  result[3] = argument0[3]-factor*b3;
  return result;
}

#define r4_rej_to
///r4_rej_to(v1, v2, vout)
{
  var b0 = argument1[0],
      b1 = argument1[1],
      b2 = argument1[2],
      b3 = argument1[3],
      factor = (b0*argument0[0] + b1*argument0[1] + b2*argument0[2] + b3*argument0[3]) / (b0*b0 + b1*b1 + b2*b2 + b3*b3);
  argument2[@ 0] = argument0[0]-factor*b0;
  argument2[@ 1] = argument0[1]-factor*b1;
  argument2[@ 2] = argument0[2]-factor*b2;
  argument2[@ 3] = argument0[3]-factor*b3;
  return argument2;
}

#define r4_encode_string
///r4_encode_string(v)
{
  return string_replace_all(string_format(argument0[0], 15, 14)+","+string_format(argument0[1], 15, 14)+","+string_format(argument0[2], 15, 14)+","+string_format(argument0[3], 15, 14), ' ', '');
}

#define r4_decode_string
///r4_decode_string(str)
{
  var str, pos, result;
  str = argument0;
  pos = string_pos(',', str);
  result[0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[1] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[2] = real(string_copy(str, 1, pos-1));
  result[3] = real(string_delete(str, 1, pos));
  return result;
}

#define r4_decode_string_to
///r4_decode_string_to(str, vout)
{
  var str, pos;
  str = argument0;
  pos = string_pos(',', str);
  argument1[@ 0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  argument1[@ 1] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  argument1[@ 2] = real(string_copy(str, 1, pos-1));
  argument1[@ 3] = real(string_delete(str, 1, pos));
  return argument1;
}

#define r4_encode_base64
///r4_encode_base64(v)
{
  var buffer = buffer_create(32, buffer_fixed, 1);
  buffer_write(buffer, buffer_f64, argument0[0]);
  buffer_write(buffer, buffer_f64, argument0[1]);
  buffer_write(buffer, buffer_f64, argument0[2]);
  buffer_write(buffer, buffer_f64, argument0[3]);
  result = buffer_base64_encode(buffer, 0, 32);
  buffer_delete(buffer);
  return result;
}

#define r4_decode_base64
///r4_decode_base64(enc)
{
  var buffer = buffer_create(32, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  var result;
  result[0] = buffer_read(buffer, buffer_f64);
  result[1] = buffer_read(buffer, buffer_f64);
  result[2] = buffer_read(buffer, buffer_f64);
  result[3] = buffer_read(buffer, buffer_f64);
  buffer_delete(buffer);
  return result;
}

#define r4_decode_base64_to
///r4_decode_base64_to(enc, vout)
{
  var buffer = buffer_create(32, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  argument1[@ 0] = buffer_read(buffer, buffer_f64);
  argument1[@ 1] = buffer_read(buffer, buffer_f64);
  argument1[@ 2] = buffer_read(buffer, buffer_f64);
  argument1[@ 3] = buffer_read(buffer, buffer_f64);
  buffer_delete(buffer);
  return argument1;
}

#define rn_clone
///rn_clone(v)
{
  var v_new, v_dim;
  v_dim = array_length_1d(argument0);
  for (var i = 0; i < v_dim; i++) {
    v_new[i] = argument0[i];
  }
  return v_new;
}

#define rn_clone_to
///rn_clone_to(v, vout)
{
  var v_dim;
  v_dim = array_length_1d(argument0);
  for (var i = 0; i < v_dim; i++) {
    argument1[@ i] = argument0[i];
  }
  return argument1;
}

#define rn_add
///rn_add(v1, v2)
{
  var v_dim = array_length_1d(argument0);
  var result;
  for (var i = 0; i < v_dim; i++) {
    result[i] = argument0[i]+argument1[i];
  }
  return result;
}

#define rn_add_to
///rn_add_to(v1, v2, vout)
{
  var v_dim = array_length_1d(argument0);
  for (var i = 0; i < v_dim; i++) {
    argument2[@ i] = argument0[i]+argument1[i];
  }
  return argument2;
}

#define rn_subtract
///rn_subtract(v1, v2)
{
  var v_dim = array_length_1d(argument0);  
  var result;
  for (var i = 0; i < v_dim; i++) {
    result[i] = argument0[i]-argument1[i];
  }
  return result;
}

#define rn_subtract_to
///rn_subtract_to(v1, v2, vout)
{
  var v_dim = array_length_1d(argument0);
  for (var i = 0; i < v_dim; i++) {
    argument2[@ i] = argument0[i]-argument1[i];
  }
  return argument2;
}

#define rn_dot
///rn_dot(v1, v2)
{
  var v_dim = array_length_1d(argument0);
  var result = 0;
  for (var i = 0; i < v_dim; i++) {
    result += argument0[i]*argument1[i];
  }
  return result;
}

#define rn_scale
///rn_scale(v, r)
{
  var v_dim = array_length_1d(argument0);
  var result;
  for (var i = 0; i < v_dim; i++) {
    result[i] = argument1*argument0[i];
  }
  return result;
}

#define rn_scale_to
///rn_scale_to(v, r, vout)
{
  var v_dim = array_length_1d(argument0);
  for (var i = 0; i < v_dim; i++) {
    argument2[@ i] = argument1*argument0[i];
  }
  return argument2;
}

#define rn_unit
///rn_unit(v)
{
  var v_dim = array_length_1d(argument0);
  var factor = 0;
  for (var i = 0; i < v_dim; i++) {
    factor += argument0[i]*argument0[i];
  }
  var result;
  if (factor == 0) {
    for (var i = 0; i < v_dim; i++) {
      result[i] = 0;
    }
  } else {
    factor = 1/sqrt(factor);
    for (var i = 0; i < v_dim; i++) {
      result[i] = factor*argument0[i];
    }
  }
  return result;
}

#define rn_unit_to
///rn_unit_to(v, vout)
{
  var v_dim = array_length_1d(argument0);
  var factor = 0;
  for (var i = 0; i < v_dim; i++) {
    factor += argument0[i]*argument0[i];
  }
  if (factor == 0) {
    for (var i = 0; i < v_dim; i++) {
      argument1[@ i] = 0;
    }
  } else {
    factor = 1/sqrt(factor);
    for (var i = 0; i < v_dim; i++) {
      argument1[@ i] = factor*argument0[i];
    }
  }
  return argument1;
}

#define rn_norm
///rn_norm(v)
{
  var v_dim = array_length_1d(argument0);
  var result = 0;
  for (var i = 0; i < v_dim; i++) {
    result += argument0[i]*argument0[i];
  }
  return sqrt(result);
}

#define rn_dist
///rn_dist(v1, v2)
{
  var v_dim = array_length_1d(argument0);
  var result = 0;
  var diff;
  for (var i = 0; i < v_dim; i++) {
    diff = argument1[i]-argument0[i];
    result += diff*diff;
  }
  return sqrt(result);
}

#define rn_1norm
///rn_1norm(v)
{
  var v_dim = array_length_1d(argument0);
  var result = 0;
  for (var i = 0; i < v_dim; i++) {
    result += abs(argument0[i]);
  }
  return result;
}

#define rn_1dist
///rn_1dist(v1, v2)
{
  var v_dim = array_length_1d(argument0);
  var result = 0;
  for (var i = 0; i < v_dim; i++) {
    result += abs(argument1[i]-argument0[i]);
  }
  return result;
}

#define rn_maxnorm
///rn_maxnorm(v)
{
  var v_dim = array_length_1d(argument0),
      result = 0;
  var val;
  for (var i = 0; i < v_dim; i++) {
    val = abs(argument0[i]);
    if (val > result) {
      result = val;
    }
  }
  return result;
}

#define rn_lerp
///rn_lerp(v1, v2, amount)
{
  var v_dim = array_length_1d(argument0);
  var result;
  for (var i = 0; i < v_dim; i++) {
    result[i] = lerp(argument0[i], argument1[i], argument2);
  }
  return result;
}

#define rn_lerp_to
///rn_lerp_to(v1, v2, amount, vout)
{
  var v_dim = array_length_1d(argument0);
  for (var i = 0; i < v_dim; i++) {
    argument3[@ i] = lerp(argument0[i], argument1[i], argument2);
  }
  return argument3;
}

#define rn_proj
///rn_proj(v1, v2)
{
  var v_dim = array_length_1d(argument0);
  var aa = 0,
      bb = 0;
  for (var i = 0; i < v_dim; i++) {
    aa += argument0[i]*argument1[i];
    bb += argument1[i]*argument1[i];
  }
  var factor = aa/bb;
  var result;
  for (var i = 0; i < v_dim; i++) {
    result[i] = factor*argument1[i];
  }
  return result;
}

#define rn_proj_to
///rn_proj_to(v1, v2, vout)
{
  var v_dim = array_length_1d(argument0);
  var aa = 0,
      bb = 0;
  for (var i = 0; i < v_dim; i++) {
    aa += argument0[i]*argument1[i];
    bb += argument1[i]*argument1[i];
  }
  var factor = aa/bb;
  for (var i = 0; i < v_dim; i++) {
    argument2[@ i] = factor*argument1[i];
  }
  return argument2;
}

#define rn_rej
///rn_rej(v1, v2)
{
  var v_dim = array_length_1d(argument0);
  var aa = 0,
      bb = 0;
  for (var i = 0; i < v_dim; i++) {
    aa += argument0[i]*argument1[i];
    bb += argument1[i]*argument1[i];
  }
  var factor = aa/bb;
  var result;
  for (var i = 0; i < v_dim; i++) {
    result[i] = argument0[i]-factor*argument1[i];
  }
  return result;
}

#define rn_rej_to
///rn_rej_to(v1, v2, vout)
{
  var v_dim = array_length_1d(argument0);
  var aa = 0,
      bb = 0;
  for (var i = 0; i < v_dim; i++) {
    aa += argument0[i]*argument1[i];
    bb += argument1[i]*argument1[i];
  }
  var factor = aa/bb;
  for (var i = 0; i < v_dim; i++) {
    argument2[@ i] = argument0[i]-factor*argument1[i];
  }
  return argument2;
}

#define rn_encode_string
///rn_encode_string(v)
{
  var v_dim = array_length_1d(argument0);
  var result = "";
  for (var i = 0; i < v_dim; i++) {
    if (i != 0) {
      result += ",";
    }
    result += string_format(argument0[i], 15, 14);
  }
  return string_replace_all(result, ' ', '');
}

#define rn_decode_string
///rn_decode_string(enc)
{
  var enc = argument0,
      v_dim = string_count(',', enc);
  var pos, result;
  for (var i = 0; i < v_dim; i++) {
    pos = string_pos(',', enc);
    result[i] = real(string_copy(enc, 1, pos-1));
    enc = string_delete(enc, 1, pos);
  }
  result[v_dim] = real(enc);
  return result;
}

#define rn_decode_string_to
///rn_decode_string_to(enc, vout)
{
  var enc = argument0,
      v_dim = string_count(',', enc);
  var pos;
  for (var i = 0; i < v_dim; i++) {
    pos = string_pos(',', enc);
    argument1[@ i] = real(string_copy(enc, 1, pos-1));
    enc = string_delete(enc, 1, pos);
  }
  argument1[@ v_dim] = real(enc);
  return argument1;
}

#define rn_encode_base64
///rn_encode_base64(v)
{
  var v_dim = array_length_1d(argument0);
  var buffer = buffer_create(8*v_dim, buffer_fixed, 1);
  for (var i = 0; i < v_dim; i++) {
    buffer_write(buffer, buffer_f64, argument0[i]);
  }
  result = buffer_base64_encode(buffer, 0, 8*v_dim);
  buffer_delete(buffer);
  return result;
}

#define rn_decode_base64
///rn_decode_base64(enc, n)
{
  var v_dim = argument1,
      buffer = buffer_create(8*v_dim, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  var result;
  for (var i = 0; i < v_dim; i++) {
    result[i] = buffer_read(buffer, buffer_f64);
  }
  buffer_delete(buffer);
  return result;
}

#define rn_decode_base64_to
///rn_decode_base64_to(enc, n, vout)
{
  var v_dim = argument1,
      buffer = buffer_create(8*v_dim, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  for (var i = 0; i < v_dim; i++) {
    argument2[@ i] = buffer_read(buffer, buffer_f64);
  }
  buffer_delete(buffer);
  return argument2;
}

#define r22_clone
///r22_clone(M)
{
  var M_new;
  M_new[0, 0] = argument0[0, 0];
  M_new[0, 1] = argument0[0, 1];
  M_new[1, 0] = argument0[1, 0];
  M_new[1, 1] = argument0[1, 1];
  return M_new;
}

#define r22_clone_to
///r22_clone_to(M, Mout)
{
  argument1[@ 0, 0] = argument0[0, 0];
  argument1[@ 0, 1] = argument0[0, 1];
  argument1[@ 1, 0] = argument0[1, 0];
  argument1[@ 1, 1] = argument0[1, 1];
  return argument1;
}

#define r22_add
///r22_add(M1, M2)
{
  var M_new;
  M_new[0, 0] = argument0[0, 0]+argument1[0, 0];
  M_new[0, 1] = argument0[0, 1]+argument1[0, 1];
  M_new[1, 0] = argument0[1, 0]+argument1[1, 0];
  M_new[1, 1] = argument0[1, 1]+argument1[1, 1];
  return M_new;
}

#define r22_add_to
///r22_add_to(M1, M2, Mout)
{
  argument2[@ 0, 0] = argument0[0, 0]+argument1[0, 0];
  argument2[@ 0, 1] = argument0[0, 1]+argument1[0, 1];
  argument2[@ 1, 0] = argument0[1, 0]+argument1[1, 0];
  argument2[@ 1, 1] = argument0[1, 1]+argument1[1, 1];
  return argument2;
}

#define r22_subtract
///r22_subtract(M1, M2)
{
  var M_new;
  M_new[0, 0] = argument0[0, 0]-argument1[0, 0];
  M_new[0, 1] = argument0[0, 1]-argument1[0, 1];
  M_new[1, 0] = argument0[1, 0]-argument1[1, 0];
  M_new[1, 1] = argument0[1, 1]-argument1[1, 1];
  return M_new;
}

#define r22_subtract_to
///r22_subtract_to(M1, M2, Mout)
{
  argument2[@ 0, 0] = argument0[0, 0]-argument1[0, 0];
  argument2[@ 0, 1] = argument0[0, 1]-argument1[0, 1];
  argument2[@ 1, 0] = argument0[1, 0]-argument1[1, 0];
  argument2[@ 1, 1] = argument0[1, 1]-argument1[1, 1];
  return argument2;
}

#define r22_scale
///r22_scale(M, r)
{
  var M_new;
  M_new[0, 0] = argument0[0, 0]*argument1;
  M_new[0, 1] = argument0[0, 1]*argument1;
  M_new[1, 0] = argument0[1, 0]*argument1;
  M_new[1, 1] = argument0[1, 1]*argument1;
  return M_new;
}

#define r22_scale_to
///r22_scale_to(M, r, Mout)
{
  argument2[@ 0, 0] = argument0[0, 0]*argument1;
  argument2[@ 0, 1] = argument0[0, 1]*argument1;
  argument2[@ 1, 0] = argument0[1, 0]*argument1;
  argument2[@ 1, 1] = argument0[1, 1]*argument1;
  return argument2;
}

#define r22_transpose
///r22_transpose(M)
{
  var M_new;
  M_new[0, 0] = argument0[0, 0];
  M_new[0, 1] = argument0[1, 0];
  M_new[1, 0] = argument0[0, 1];
  M_new[1, 1] = argument0[1, 1];
  return M_new;
}

#define r22_transpose_to
///r22_transpose_to(M, Mout)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1];
  argument1[@ 0, 0] = a00;
  argument1[@ 0, 1] = a10;
  argument1[@ 1, 0] = a01;
  argument1[@ 1, 1] = a11;
  return argument1;
}

#define r22_multiply
///r22_multiply(M1, M2)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      b00 = argument1[0, 0],
      b01 = argument1[0, 1],
      b10 = argument1[1, 0],
      b11 = argument1[1, 1];
  var M_new;
  M_new[0, 0] = a00*b00 + a01*b10;
  M_new[0, 1] = a00*b01 + a01*b11;
  M_new[1, 0] = a10*b00 + a11*b10;
  M_new[1, 1] = a10*b01 + a11*b11;
  return M_new;
}

#define r22_multiply_to
///r22_multiply_to(M1, M2, Mout)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      b00 = argument1[0, 0],
      b01 = argument1[0, 1],
      b10 = argument1[1, 0],
      b11 = argument1[1, 1];
  argument2[@ 0, 0] = a00*b00 + a01*b10;
  argument2[@ 0, 1] = a00*b01 + a01*b11;
  argument2[@ 1, 0] = a10*b00 + a11*b10;
  argument2[@ 1, 1] = a10*b01 + a11*b11;
  return argument2;
}

#define r22_transform
///r22_transform(M, v)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      b0 = argument1[0],
      b1 = argument1[1];
  var result;
  result[0] = a00*b0 + a01*b1;
  result[1] = a10*b0 + a11*b1;
  return result;
}

#define r22_transform_to
///r22_transform_to(M, v, vout)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      b0 = argument1[0],
      b1 = argument1[1];
  argument2[@ 0] = a00*b0 + a01*b1;
  argument2[@ 1] = a10*b0 + a11*b1;
  return argument2;
}

#define r22_invert
///r22_invert(M)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      det = a00*a11-a01*a10;
  if (det == 0) {
    return undefined;
  }
  else {
    var result;
    result[0, 0] = a11/det;
    result[0, 1] = -a01/det;
    result[1, 0] = -a10/det;
    result[1, 1] = a00/det;
    return result;
  }
}

#define r22_invert_to
///r22_invert_to(M)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      det = a00*a11-a01*a10;
  if (det == 0) {
    return undefined;
  }
  else {
    argument1[@ 0, 0] = a11/det;
    argument1[@ 0, 1] = -a01/det;
    argument1[@ 1, 0] = -a10/det;
    argument1[@ 1, 1] = a00/det;
    return argument1;
  }
}

#define r22_encode_string
///r22_encode_string(M)
{
  return string_replace_all(
      string_format(argument0[0, 0], 15, 14)+","+
      string_format(argument0[0, 1], 15, 14)+";"+
      string_format(argument0[1, 0], 15, 14)+","+
      string_format(argument0[1, 1], 15, 14)
  , ' ', '');
}

#define r22_decode_string
///r22_decode_string(str)
{
  var str, pos, result;
  str = argument0;
  pos = string_pos(',', str);
  result[0, 0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(';', str);
  result[0, 1] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[1, 0] = real(string_copy(str, 1, pos-1));
  result[1, 1] = real(string_delete(str, 1, pos));
  return result;
}

#define r22_decode_string_to
///r22_decode_string_to(str, Mout)
{
  var str, pos, result;
  str = argument0;
  pos = string_pos(',', str);
  argument1[@ 0, 0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(';', str);
  argument1[@ 0, 1] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  argument1[@ 1, 0] = real(string_copy(str, 1, pos-1));
  argument1[@ 1, 1] = real(string_delete(str, 1, pos));
  return argument1;
}

#define r22_encode_base64
///r22_encode_base64(M)
{
  var buffer = buffer_create(32, buffer_fixed, 1);
  buffer_write(buffer, buffer_f64, argument0[0, 0]);
  buffer_write(buffer, buffer_f64, argument0[0, 1]);
  buffer_write(buffer, buffer_f64, argument0[1, 0]);
  buffer_write(buffer, buffer_f64, argument0[1, 1]);
  var result = buffer_base64_encode(buffer, 0, 32);
  buffer_delete(buffer);
  return result;
}

#define r22_decode_base64
///r22_decode_base64(enc)
{
  var buffer = buffer_create(32, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  var result;
  result[0, 0] = buffer_read(buffer, buffer_f64);
  result[0, 1] = buffer_read(buffer, buffer_f64);
  result[1, 0] = buffer_read(buffer, buffer_f64);
  result[1, 1] = buffer_read(buffer, buffer_f64);
  buffer_delete(buffer);
  return result;
}

#define r22_decode_base64_to
///r22_decode_base64_to(enc, Mout)
{
  var buffer = buffer_create(32, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  argument1[@ 0, 0] = buffer_read(buffer, buffer_f64);
  argument1[@ 0, 1] = buffer_read(buffer, buffer_f64);
  argument1[@ 1, 0] = buffer_read(buffer, buffer_f64);
  argument1[@ 1, 1] = buffer_read(buffer, buffer_f64);
  buffer_delete(buffer);
  return argument1;
}

#define r33_clone
///r33_clone(M)
{
  var M_new;
  M_new[0, 0] = argument0[0, 0];
  M_new[0, 1] = argument0[0, 1];
  M_new[0, 2] = argument0[0, 2];
  M_new[1, 0] = argument0[1, 0];
  M_new[1, 1] = argument0[1, 1];
  M_new[1, 2] = argument0[1, 2];
  M_new[2, 0] = argument0[2, 0];
  M_new[2, 1] = argument0[2, 1];
  M_new[2, 2] = argument0[2, 2];
  return M_new;
}

#define r33_clone_to
///r33_clone_to(M, Mout)
{
  argument1[@ 0, 0] = argument0[0, 0];
  argument1[@ 0, 1] = argument0[0, 1];
  argument1[@ 0, 2] = argument0[0, 2];
  argument1[@ 1, 0] = argument0[1, 0];
  argument1[@ 1, 1] = argument0[1, 1];
  argument1[@ 1, 2] = argument0[1, 2];
  argument1[@ 2, 0] = argument0[2, 0];
  argument1[@ 2, 1] = argument0[2, 1];
  argument1[@ 2, 2] = argument0[2, 2];
  return argument1;
}

#define r33_add
///r33_add(M1, M2)
{
  var M_new;
  M_new[0, 0] = argument0[0, 0]+argument1[0, 0];
  M_new[0, 1] = argument0[0, 1]+argument1[0, 1];
  M_new[0, 2] = argument0[0, 2]+argument1[0, 2];
  M_new[1, 0] = argument0[1, 0]+argument1[1, 0];
  M_new[1, 1] = argument0[1, 1]+argument1[1, 1];
  M_new[1, 2] = argument0[1, 2]+argument1[1, 2];
  M_new[2, 0] = argument0[2, 0]+argument1[2, 0];
  M_new[2, 1] = argument0[2, 1]+argument1[2, 1];
  M_new[2, 2] = argument0[2, 2]+argument1[2, 2];
  return M_new;
}

#define r33_add_to
///r33_add_to(M1, M2, Mout)
{
  argument2[@ 0, 0] = argument0[0, 0]+argument1[0, 0];
  argument2[@ 0, 1] = argument0[0, 1]+argument1[0, 1];
  argument2[@ 0, 2] = argument0[0, 2]+argument1[0, 2];
  argument2[@ 1, 0] = argument0[1, 0]+argument1[1, 0];
  argument2[@ 1, 1] = argument0[1, 1]+argument1[1, 1];
  argument2[@ 1, 2] = argument0[1, 2]+argument1[1, 2];
  argument2[@ 2, 0] = argument0[2, 0]+argument1[2, 0];
  argument2[@ 2, 1] = argument0[2, 1]+argument1[2, 1];
  argument2[@ 2, 2] = argument0[2, 2]+argument1[2, 2];
  return argument2;
}

#define r33_subtract
///r33_subtract(M1, M2)
{
  var M_new;
  M_new[0, 0] = argument0[0, 0]-argument1[0, 0];
  M_new[0, 1] = argument0[0, 1]-argument1[0, 1];
  M_new[0, 2] = argument0[0, 2]-argument1[0, 2];
  M_new[1, 0] = argument0[1, 0]-argument1[1, 0];
  M_new[1, 1] = argument0[1, 1]-argument1[1, 1];
  M_new[1, 2] = argument0[1, 2]-argument1[1, 2];
  M_new[2, 0] = argument0[2, 0]-argument1[2, 0];
  M_new[2, 1] = argument0[2, 1]-argument1[2, 1];
  M_new[2, 2] = argument0[2, 2]-argument1[2, 2];
  return M_new;
}

#define r33_subtract_to
///r33_subtract_to(M1, M2, Mout)
{
  argument2[@ 0, 0] = argument0[0, 0]-argument1[0, 0];
  argument2[@ 0, 1] = argument0[0, 1]-argument1[0, 1];
  argument2[@ 0, 2] = argument0[0, 2]-argument1[0, 2];
  argument2[@ 1, 0] = argument0[1, 0]-argument1[1, 0];
  argument2[@ 1, 1] = argument0[1, 1]-argument1[1, 1];
  argument2[@ 1, 2] = argument0[1, 2]-argument1[1, 2];
  argument2[@ 2, 0] = argument0[2, 0]-argument1[2, 0];
  argument2[@ 2, 1] = argument0[2, 1]-argument1[2, 1];
  argument2[@ 2, 2] = argument0[2, 2]-argument1[2, 2];
  return argument2;
}

#define r33_scale
///r33_scale(M, r)
{
  var M_new;
  M_new[0, 0] = argument0[0, 0]*argument1;
  M_new[0, 1] = argument0[0, 1]*argument1;
  M_new[0, 2] = argument0[0, 2]*argument1;
  M_new[1, 0] = argument0[1, 0]*argument1;
  M_new[1, 1] = argument0[1, 1]*argument1;
  M_new[1, 2] = argument0[1, 2]*argument1;
  M_new[2, 0] = argument0[2, 0]*argument1;
  M_new[2, 1] = argument0[2, 1]*argument1;
  M_new[2, 2] = argument0[2, 2]*argument1;
  return M_new;
}

#define r33_scale_to
///r33_scale_to(M, r, Mout)
{
  argument2[@ 0, 0] = argument0[0, 0]*argument1;
  argument2[@ 0, 1] = argument0[0, 1]*argument1;
  argument2[@ 0, 2] = argument0[0, 2]*argument1;
  argument2[@ 1, 0] = argument0[1, 0]*argument1;
  argument2[@ 1, 1] = argument0[1, 1]*argument1;
  argument2[@ 1, 2] = argument0[1, 2]*argument1;
  argument2[@ 2, 0] = argument0[2, 0]*argument1;
  argument2[@ 2, 1] = argument0[2, 1]*argument1;
  argument2[@ 2, 2] = argument0[2, 2]*argument1;
  return argument2;
}

#define r33_transpose
///r33_transpose(M)
{
  var M_new;
  M_new[0, 0] = argument0[0, 0];
  M_new[0, 1] = argument0[1, 0];
  M_new[0, 2] = argument0[2, 0];
  M_new[1, 0] = argument0[0, 1];
  M_new[1, 1] = argument0[1, 1];
  M_new[1, 2] = argument0[2, 1];
  M_new[2, 0] = argument0[0, 2];
  M_new[2, 1] = argument0[1, 2];
  M_new[2, 2] = argument0[2, 2];
  return M_new;
}

#define r33_transpose_to
///r33_transpose_to(M, Mout)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a02 = argument0[0, 2],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      a12 = argument0[1, 2],
      a20 = argument0[2, 0],
      a21 = argument0[2, 1],
      a22 = argument0[2, 2];
  argument1[@ 0, 0] = a00;
  argument1[@ 0, 1] = a10;
  argument1[@ 0, 2] = a20;
  argument1[@ 1, 0] = a01;
  argument1[@ 1, 1] = a11;
  argument1[@ 1, 2] = a21;
  argument1[@ 2, 0] = a02;
  argument1[@ 2, 1] = a12;
  argument1[@ 2, 2] = a22;
  return argument1;
}

#define r33_multiply
///r33_multiply(M1, M2)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a02 = argument0[0, 2],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      a12 = argument0[1, 2],
      a20 = argument0[2, 0],
      a21 = argument0[2, 1],
      a22 = argument0[2, 2],
      b00 = argument1[0, 0],
      b01 = argument1[0, 1],
      b02 = argument1[0, 2],
      b10 = argument1[1, 0],
      b11 = argument1[1, 1],
      b12 = argument1[1, 2],
      b20 = argument1[2, 0],
      b21 = argument1[2, 1],
      b22 = argument1[2, 2];
  var M_new;
  M_new[0, 0] = a00*b00 + a01*b10 + a02*b20;
  M_new[0, 1] = a00*b01 + a01*b11 + a02*b21;
  M_new[0, 2] = a00*b02 + a01*b12 + a02*b22;
  M_new[1, 0] = a10*b00 + a11*b10 + a12*b20;
  M_new[1, 1] = a10*b01 + a11*b11 + a12*b21;
  M_new[1, 2] = a10*b02 + a11*b12 + a12*b22;
  M_new[2, 0] = a20*b00 + a21*b10 + a22*b20;
  M_new[2, 1] = a20*b01 + a21*b11 + a22*b21;
  M_new[2, 2] = a20*b02 + a21*b12 + a22*b22;
  return M_new;
}

#define r33_multiply_to
///r33_multiply_to(M1, M2, Mout)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a02 = argument0[0, 2],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      a12 = argument0[1, 2],
      a20 = argument0[2, 0],
      a21 = argument0[2, 1],
      a22 = argument0[2, 2],
      b00 = argument1[0, 0],
      b01 = argument1[0, 1],
      b02 = argument1[0, 2],
      b10 = argument1[1, 0],
      b11 = argument1[1, 1],
      b12 = argument1[1, 2],
      b20 = argument1[2, 0],
      b21 = argument1[2, 1],
      b22 = argument1[2, 2];
  argument2[@ 0, 0] = a00*b00 + a01*b10 + a02*b20;
  argument2[@ 0, 1] = a00*b01 + a01*b11 + a02*b21;
  argument2[@ 0, 2] = a00*b02 + a01*b12 + a02*b22;
  argument2[@ 1, 0] = a10*b00 + a11*b10 + a12*b20;
  argument2[@ 1, 1] = a10*b01 + a11*b11 + a12*b21;
  argument2[@ 1, 2] = a10*b02 + a11*b12 + a12*b22;
  argument2[@ 2, 0] = a20*b00 + a21*b10 + a22*b20;
  argument2[@ 2, 1] = a20*b01 + a21*b11 + a22*b21;
  argument2[@ 2, 2] = a20*b02 + a21*b12 + a22*b22;
  return argument2;
}

#define r33_transform
///r33_transform(M, v)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a02 = argument0[0, 2],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      a12 = argument0[1, 2],
      a20 = argument0[2, 0],
      a21 = argument0[2, 1],
      a22 = argument0[2, 2],
      b0 = argument1[0],
      b1 = argument1[1],
      b2 = argument1[2];
  var result;
  result[0] = a00*b0 + a01*b1 + a02*b2;
  result[1] = a10*b0 + a11*b1 + a12*b2;
  result[2] = a20*b0 + a21*b1 + a22*b2;
  return result;
}

#define r33_transform_to
///r33_transform_to(M, v, vout)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a02 = argument0[0, 2],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      a12 = argument0[1, 2],
      a20 = argument0[2, 0],
      a21 = argument0[2, 1],
      a22 = argument0[2, 2],
      b0 = argument1[0],
      b1 = argument1[1],
      b2 = argument1[2];
  argument2[@ 0] = a00*b0 + a01*b1 + a02*b2;
  argument2[@ 1] = a10*b0 + a11*b1 + a12*b2;
  argument2[@ 2] = a20*b0 + a21*b1 + a22*b2;
  return argument2;
}

#define r33_invert
///r33_invert(M)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a02 = argument0[0, 2],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      a12 = argument0[1, 2],
      a20 = argument0[2, 0],
      a21 = argument0[2, 1],
      a22 = argument0[2, 2],
      det = a00*a11*a22+a10*a21*a02+a20*a01*a12
           -a00*a21*a12-a20*a11*a02-a10*a01*a22;
  if (det == 0) {
    return undefined;
  }
  else {
    var result;
    result[0, 0] = (a11*a22-a12*a21)/det;
    result[0, 1] = (a02*a21-a01*a22)/det;
    result[0, 2] = (a01*a12-a02*a11)/det;
    result[1, 0] = (a12*a20-a10*a22)/det;
    result[1, 1] = (a00*a22-a02*a20)/det;
    result[1, 2] = (a02*a10-a00*a12)/det;
    result[2, 0] = (a10*a21-a11*a20)/det;
    result[2, 1] = (a01*a20-a00*a21)/det;
    result[2, 2] = (a00*a11-a01*a10)/det;
    return result;
  }
}

#define r33_invert_to
///r33_invert_to(M, Mout)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a02 = argument0[0, 2],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      a12 = argument0[1, 2],
      a20 = argument0[2, 0],
      a21 = argument0[2, 1],
      a22 = argument0[2, 2],
      det = a00*a11*a22+a10*a21*a02+a20*a01*a12
           -a00*a21*a12-a20*a11*a02-a10*a01*a22;
  if (det == 0) {
    return undefined;
  }
  else {
    argument1[@ 0, 0] = (a11*a22-a12*a21)/det;
    argument1[@ 0, 1] = (a02*a21-a01*a22)/det;
    argument1[@ 0, 2] = (a01*a12-a02*a11)/det;
    argument1[@ 1, 0] = (a12*a20-a10*a22)/det;
    argument1[@ 1, 1] = (a00*a22-a02*a20)/det;
    argument1[@ 1, 2] = (a02*a10-a00*a12)/det;
    argument1[@ 2, 0] = (a10*a21-a11*a20)/det;
    argument1[@ 2, 1] = (a01*a20-a00*a21)/det;
    argument1[@ 2, 2] = (a00*a11-a01*a10)/det;
    return argument1;
  }
}

#define r33_encode_string
///r33_encode_string(M)
{
  return string_replace_all(
      string_format(argument0[0, 0], 15, 14)+","+
      string_format(argument0[0, 1], 15, 14)+","+
      string_format(argument0[0, 2], 15, 14)+";"+
      string_format(argument0[1, 0], 15, 14)+","+
      string_format(argument0[1, 1], 15, 14)+","+
      string_format(argument0[1, 2], 15, 14)+";"+
      string_format(argument0[2, 0], 15, 14)+","+
      string_format(argument0[2, 1], 15, 14)+","+
      string_format(argument0[2, 2], 15, 14)
  , ' ', '');
}

#define r33_decode_string
///r33_decode_string(str)
{
  var str, pos, result;
  str = argument0;
  pos = string_pos(',', str);
  result[0, 0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[0, 1] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(';', str);
  result[0, 2] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[1, 0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[1, 1] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(';', str);
  result[1, 2] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[2, 0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[2, 1] = real(string_copy(str, 1, pos-1));
  result[2, 2] = real(string_delete(str, 1, pos));
  return result;
}

#define r33_decode_string_to
///r33_decode_string_to(str, Mout)
{
  var str, pos, result;
  str = argument0;
  pos = string_pos(',', str);
  argument1[@ 0, 0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  argument1[@ 0, 1] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(';', str);
  argument1[@ 0, 2] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  argument1[@ 1, 0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  argument1[@ 1, 1] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(';', str);
  argument1[@ 1, 2] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  argument1[@ 2, 0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  argument1[@ 2, 1] = real(string_copy(str, 1, pos-1));
  argument1[@ 2, 2] = real(string_delete(str, 1, pos));
  return argument1;
}

#define r33_encode_base64
///r33_encode_base64(M)
{
  var buffer = buffer_create(72, buffer_fixed, 1);
  buffer_write(buffer, buffer_f64, argument0[0, 0]);
  buffer_write(buffer, buffer_f64, argument0[0, 1]);
  buffer_write(buffer, buffer_f64, argument0[0, 2]);
  buffer_write(buffer, buffer_f64, argument0[1, 0]);
  buffer_write(buffer, buffer_f64, argument0[1, 1]);
  buffer_write(buffer, buffer_f64, argument0[1, 2]);
  buffer_write(buffer, buffer_f64, argument0[2, 0]);
  buffer_write(buffer, buffer_f64, argument0[2, 1]);
  buffer_write(buffer, buffer_f64, argument0[2, 2]);
  var result = buffer_base64_encode(buffer, 0, 72);
  buffer_delete(buffer);
  return result;
}

#define r33_decode_base64
///r33_decode_base64(enc)
{
  var buffer = buffer_create(72, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  var result;
  result[0, 0] = buffer_read(buffer, buffer_f64);
  result[0, 1] = buffer_read(buffer, buffer_f64);
  result[0, 2] = buffer_read(buffer, buffer_f64);
  result[1, 0] = buffer_read(buffer, buffer_f64);
  result[1, 1] = buffer_read(buffer, buffer_f64);
  result[1, 2] = buffer_read(buffer, buffer_f64);
  result[2, 0] = buffer_read(buffer, buffer_f64);
  result[2, 1] = buffer_read(buffer, buffer_f64);
  result[2, 2] = buffer_read(buffer, buffer_f64);
  buffer_delete(buffer);
  return result;
}

#define r33_decode_base64_to
///r33_decode_base64_to(enc, Mout)
{
  var buffer = buffer_create(72, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  argument1[@ 0, 0] = buffer_read(buffer, buffer_f64);
  argument1[@ 0, 1] = buffer_read(buffer, buffer_f64);
  argument1[@ 0, 2] = buffer_read(buffer, buffer_f64);
  argument1[@ 1, 0] = buffer_read(buffer, buffer_f64);
  argument1[@ 1, 1] = buffer_read(buffer, buffer_f64);
  argument1[@ 1, 2] = buffer_read(buffer, buffer_f64);
  argument1[@ 2, 0] = buffer_read(buffer, buffer_f64);
  argument1[@ 2, 1] = buffer_read(buffer, buffer_f64);
  argument1[@ 2, 2] = buffer_read(buffer, buffer_f64);
  buffer_delete(buffer);
  return argument1;
}

#define r44_clone
///r44_clone(M)
{
  var M_new;
  M_new[0, 0] = argument0[0, 0];
  M_new[0, 1] = argument0[0, 1];
  M_new[0, 2] = argument0[0, 2];
  M_new[0, 3] = argument0[0, 3];
  M_new[1, 0] = argument0[1, 0];
  M_new[1, 1] = argument0[1, 1];
  M_new[1, 2] = argument0[1, 2];
  M_new[1, 3] = argument0[1, 3];
  M_new[2, 0] = argument0[2, 0];
  M_new[2, 1] = argument0[2, 1];
  M_new[2, 2] = argument0[2, 2];
  M_new[2, 3] = argument0[2, 3];
  M_new[3, 0] = argument0[3, 0];
  M_new[3, 1] = argument0[3, 1];
  M_new[3, 2] = argument0[3, 2];
  M_new[3, 3] = argument0[3, 3];
  return M_new;
}

#define r44_clone_to
///r44_clone(M, Mout)
{
  argument1[@ 0, 0] = argument0[0, 0];
  argument1[@ 0, 1] = argument0[0, 1];
  argument1[@ 0, 2] = argument0[0, 2];
  argument1[@ 0, 3] = argument0[0, 3];
  argument1[@ 1, 0] = argument0[1, 0];
  argument1[@ 1, 1] = argument0[1, 1];
  argument1[@ 1, 2] = argument0[1, 2];
  argument1[@ 1, 3] = argument0[1, 3];
  argument1[@ 2, 0] = argument0[2, 0];
  argument1[@ 2, 1] = argument0[2, 1];
  argument1[@ 2, 2] = argument0[2, 2];
  argument1[@ 2, 3] = argument0[2, 3];
  argument1[@ 3, 0] = argument0[3, 0];
  argument1[@ 3, 1] = argument0[3, 1];
  argument1[@ 3, 2] = argument0[3, 2];
  argument1[@ 3, 3] = argument0[3, 3];
  return argument1;
}

#define r44_add
///r44_add(M1, M2)
{
  var M_new;
  M_new[0, 0] = argument0[0, 0]+argument1[0, 0];
  M_new[0, 1] = argument0[0, 1]+argument1[0, 1];
  M_new[0, 2] = argument0[0, 2]+argument1[0, 2];
  M_new[0, 3] = argument0[0, 3]+argument1[0, 3];
  M_new[1, 0] = argument0[1, 0]+argument1[1, 0];
  M_new[1, 1] = argument0[1, 1]+argument1[1, 1];
  M_new[1, 2] = argument0[1, 2]+argument1[1, 2];
  M_new[1, 3] = argument0[1, 3]+argument1[1, 3];
  M_new[2, 0] = argument0[2, 0]+argument1[2, 0];
  M_new[2, 1] = argument0[2, 1]+argument1[2, 1];
  M_new[2, 2] = argument0[2, 2]+argument1[2, 2];
  M_new[2, 3] = argument0[2, 3]+argument1[2, 3];
  M_new[3, 0] = argument0[3, 0]+argument1[3, 0];
  M_new[3, 1] = argument0[3, 1]+argument1[3, 1];
  M_new[3, 2] = argument0[3, 2]+argument1[3, 2];
  M_new[3, 3] = argument0[3, 3]+argument1[3, 3];
  return M_new;
}

#define r44_add_to
///r44_add_to(M1, M2, Mout)
{
  argument2[@ 0, 0] = argument0[0, 0]+argument1[0, 0];
  argument2[@ 0, 1] = argument0[0, 1]+argument1[0, 1];
  argument2[@ 0, 2] = argument0[0, 2]+argument1[0, 2];
  argument2[@ 0, 3] = argument0[0, 3]+argument1[0, 3];
  argument2[@ 1, 0] = argument0[1, 0]+argument1[1, 0];
  argument2[@ 1, 1] = argument0[1, 1]+argument1[1, 1];
  argument2[@ 1, 2] = argument0[1, 2]+argument1[1, 2];
  argument2[@ 1, 3] = argument0[1, 3]+argument1[1, 3];
  argument2[@ 2, 0] = argument0[2, 0]+argument1[2, 0];
  argument2[@ 2, 1] = argument0[2, 1]+argument1[2, 1];
  argument2[@ 2, 2] = argument0[2, 2]+argument1[2, 2];
  argument2[@ 2, 3] = argument0[2, 3]+argument1[2, 3];
  argument2[@ 3, 0] = argument0[3, 0]+argument1[3, 0];
  argument2[@ 3, 1] = argument0[3, 1]+argument1[3, 1];
  argument2[@ 3, 2] = argument0[3, 2]+argument1[3, 2];
  argument2[@ 3, 3] = argument0[3, 3]+argument1[3, 3];
  return argument2;
}

#define r44_subtract
///r44_subtract(M1, M2)
{
  var M_new;
  M_new[0, 0] = argument0[0, 0]-argument1[0, 0];
  M_new[0, 1] = argument0[0, 1]-argument1[0, 1];
  M_new[0, 2] = argument0[0, 2]-argument1[0, 2];
  M_new[0, 3] = argument0[0, 3]-argument1[0, 3];
  M_new[1, 0] = argument0[1, 0]-argument1[1, 0];
  M_new[1, 1] = argument0[1, 1]-argument1[1, 1];
  M_new[1, 2] = argument0[1, 2]-argument1[1, 2];
  M_new[1, 3] = argument0[1, 3]-argument1[1, 3];
  M_new[2, 0] = argument0[2, 0]-argument1[2, 0];
  M_new[2, 1] = argument0[2, 1]-argument1[2, 1];
  M_new[2, 2] = argument0[2, 2]-argument1[2, 2];
  M_new[2, 3] = argument0[2, 3]-argument1[2, 3];
  M_new[3, 0] = argument0[3, 0]-argument1[3, 0];
  M_new[3, 1] = argument0[3, 1]-argument1[3, 1];
  M_new[3, 2] = argument0[3, 2]-argument1[3, 2];
  M_new[3, 3] = argument0[3, 3]-argument1[3, 3];
  return M_new;
}

#define r44_subtract_to
///r44_subtract_to(M1, M2, Mout)
{
  argument2[@ 0, 0] = argument0[0, 0]-argument1[0, 0];
  argument2[@ 0, 1] = argument0[0, 1]-argument1[0, 1];
  argument2[@ 0, 2] = argument0[0, 2]-argument1[0, 2];
  argument2[@ 0, 3] = argument0[0, 3]-argument1[0, 3];
  argument2[@ 1, 0] = argument0[1, 0]-argument1[1, 0];
  argument2[@ 1, 1] = argument0[1, 1]-argument1[1, 1];
  argument2[@ 1, 2] = argument0[1, 2]-argument1[1, 2];
  argument2[@ 1, 3] = argument0[1, 3]-argument1[1, 3];
  argument2[@ 2, 0] = argument0[2, 0]-argument1[2, 0];
  argument2[@ 2, 1] = argument0[2, 1]-argument1[2, 1];
  argument2[@ 2, 2] = argument0[2, 2]-argument1[2, 2];
  argument2[@ 2, 3] = argument0[2, 3]-argument1[2, 3];
  argument2[@ 3, 0] = argument0[3, 0]-argument1[3, 0];
  argument2[@ 3, 1] = argument0[3, 1]-argument1[3, 1];
  argument2[@ 3, 2] = argument0[3, 2]-argument1[3, 2];
  argument2[@ 3, 3] = argument0[3, 3]-argument1[3, 3];
  return argument2;
}

#define r44_multiply
///r44_multiply(M1, M2)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a02 = argument0[0, 2],
      a03 = argument0[0, 3],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      a12 = argument0[1, 2],
      a13 = argument0[1, 3],
      a20 = argument0[2, 0],
      a21 = argument0[2, 1],
      a22 = argument0[2, 2],
      a23 = argument0[2, 3],
      a30 = argument0[3, 0],
      a31 = argument0[3, 1],
      a32 = argument0[3, 2],
      a33 = argument0[3, 3],
      b00 = argument1[0, 0],
      b01 = argument1[0, 1],
      b02 = argument1[0, 2],
      b03 = argument1[0, 3],
      b10 = argument1[1, 0],
      b11 = argument1[1, 1],
      b12 = argument1[1, 2],
      b13 = argument1[1, 3],
      b20 = argument1[2, 0],
      b21 = argument1[2, 1],
      b22 = argument1[2, 2],
      b23 = argument1[2, 3],
      b30 = argument1[3, 0],
      b31 = argument1[3, 1],
      b32 = argument1[3, 2],
      b33 = argument1[3, 3];
  var M_new;
  M_new[0, 0] = a00*b00 + a01*b10 + a02*b20 + a03*b30;
  M_new[0, 1] = a00*b01 + a01*b11 + a02*b21 + a03*b31;
  M_new[0, 2] = a00*b02 + a01*b12 + a02*b22 + a03*b32;
  M_new[0, 3] = a00*b03 + a01*b13 + a02*b23 + a03*b33;
  M_new[1, 0] = a10*b00 + a11*b10 + a12*b20 + a13*b30;
  M_new[1, 1] = a10*b01 + a11*b11 + a12*b21 + a13*b31;
  M_new[1, 2] = a10*b02 + a11*b12 + a12*b22 + a13*b32;
  M_new[1, 3] = a10*b03 + a11*b13 + a12*b23 + a13*b33;
  M_new[2, 0] = a20*b00 + a21*b10 + a22*b20 + a23*b30;
  M_new[2, 1] = a20*b01 + a21*b11 + a22*b21 + a23*b31;
  M_new[2, 2] = a20*b02 + a21*b12 + a22*b22 + a23*b32;
  M_new[2, 3] = a20*b03 + a21*b13 + a22*b23 + a23*b33;
  M_new[3, 0] = a30*b00 + a31*b10 + a32*b20 + a33*b30;
  M_new[3, 1] = a30*b01 + a31*b11 + a32*b21 + a33*b31;
  M_new[3, 2] = a30*b02 + a31*b12 + a32*b22 + a33*b32;
  M_new[3, 3] = a30*b03 + a31*b13 + a32*b23 + a33*b33;
  return M_new;
}

#define r44_multiply_to
///r44_multiply_to(M1, M2, Mout)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a02 = argument0[0, 2],
      a03 = argument0[0, 3],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      a12 = argument0[1, 2],
      a13 = argument0[1, 3],
      a20 = argument0[2, 0],
      a21 = argument0[2, 1],
      a22 = argument0[2, 2],
      a23 = argument0[2, 3],
      a30 = argument0[3, 0],
      a31 = argument0[3, 1],
      a32 = argument0[3, 2],
      a33 = argument0[3, 3],
      b00 = argument1[0, 0],
      b01 = argument1[0, 1],
      b02 = argument1[0, 2],
      b03 = argument1[0, 3],
      b10 = argument1[1, 0],
      b11 = argument1[1, 1],
      b12 = argument1[1, 2],
      b13 = argument1[1, 3],
      b20 = argument1[2, 0],
      b21 = argument1[2, 1],
      b22 = argument1[2, 2],
      b23 = argument1[2, 3],
      b30 = argument1[3, 0],
      b31 = argument1[3, 1],
      b32 = argument1[3, 2],
      b33 = argument1[3, 3];
  argument2[@ 0, 0] = a00*b00 + a01*b10 + a02*b20 + a03*b30;
  argument2[@ 0, 1] = a00*b01 + a01*b11 + a02*b21 + a03*b31;
  argument2[@ 0, 2] = a00*b02 + a01*b12 + a02*b22 + a03*b32;
  argument2[@ 0, 3] = a00*b03 + a01*b13 + a02*b23 + a03*b33;
  argument2[@ 1, 0] = a10*b00 + a11*b10 + a12*b20 + a13*b30;
  argument2[@ 1, 1] = a10*b01 + a11*b11 + a12*b21 + a13*b31;
  argument2[@ 1, 2] = a10*b02 + a11*b12 + a12*b22 + a13*b32;
  argument2[@ 1, 3] = a10*b03 + a11*b13 + a12*b23 + a13*b33;
  argument2[@ 2, 0] = a20*b00 + a21*b10 + a22*b20 + a23*b30;
  argument2[@ 2, 1] = a20*b01 + a21*b11 + a22*b21 + a23*b31;
  argument2[@ 2, 2] = a20*b02 + a21*b12 + a22*b22 + a23*b32;
  argument2[@ 2, 3] = a20*b03 + a21*b13 + a22*b23 + a23*b33;
  argument2[@ 3, 0] = a30*b00 + a31*b10 + a32*b20 + a33*b30;
  argument2[@ 3, 1] = a30*b01 + a31*b11 + a32*b21 + a33*b31;
  argument2[@ 3, 2] = a30*b02 + a31*b12 + a32*b22 + a33*b32;
  argument2[@ 3, 3] = a30*b03 + a31*b13 + a32*b23 + a33*b33;
  return argument2;
}

#define r44_transform
///r44_transform(M, v)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a02 = argument0[0, 2],
      a03 = argument0[0, 3],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      a12 = argument0[1, 2],
      a13 = argument0[1, 3],
      a20 = argument0[2, 0],
      a21 = argument0[2, 1],
      a22 = argument0[2, 2],
      a23 = argument0[2, 3],
      a30 = argument0[3, 0],
      a31 = argument0[3, 1],
      a32 = argument0[3, 2],
      a33 = argument0[3, 3],
      b0 = argument1[0],
      b1 = argument1[1],
      b2 = argument1[2],
      b3 = argument1[3];
  var result;
  result[0] = a00*b0 + a01*b1 + a02*b2 + a03*b3;
  result[1] = a10*b0 + a11*b1 + a12*b2 + a13*b3;
  result[2] = a20*b0 + a21*b1 + a22*b2 + a23*b3;
  result[3] = a30*b0 + a31*b1 + a32*b2 + a33*b3;
  return result;
}

#define r44_transform_to
///r44_transform_to(M, v, vout)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a02 = argument0[0, 2],
      a03 = argument0[0, 3],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      a12 = argument0[1, 2],
      a13 = argument0[1, 3],
      a20 = argument0[2, 0],
      a21 = argument0[2, 1],
      a22 = argument0[2, 2],
      a23 = argument0[2, 3],
      a30 = argument0[3, 0],
      a31 = argument0[3, 1],
      a32 = argument0[3, 2],
      a33 = argument0[3, 3],
      b0 = argument1[0],
      b1 = argument1[1],
      b2 = argument1[2],
      b3 = argument1[3];
  argument2[@ 0] = a00*b0 + a01*b1 + a02*b2 + a03*b3;
  argument2[@ 1] = a10*b0 + a11*b1 + a12*b2 + a13*b3;
  argument2[@ 2] = a20*b0 + a21*b1 + a22*b2 + a23*b3;
  argument2[@ 3] = a30*b0 + a31*b1 + a32*b2 + a33*b3;
  return argument2;
}

#define r44_scale
///r44_scale(M, r)
{
  var M_new;
  M_new[0, 0] = argument0[0, 0]*argument1;
  M_new[0, 1] = argument0[0, 1]*argument1;
  M_new[0, 2] = argument0[0, 2]*argument1;
  M_new[0, 3] = argument0[0, 3]*argument1;
  M_new[1, 0] = argument0[1, 0]*argument1;
  M_new[1, 1] = argument0[1, 1]*argument1;
  M_new[1, 2] = argument0[1, 2]*argument1;
  M_new[1, 3] = argument0[1, 3]*argument1;
  M_new[2, 0] = argument0[2, 0]*argument1;
  M_new[2, 1] = argument0[2, 1]*argument1;
  M_new[2, 2] = argument0[2, 2]*argument1;
  M_new[2, 3] = argument0[2, 3]*argument1;
  M_new[3, 0] = argument0[3, 0]*argument1;
  M_new[3, 1] = argument0[3, 1]*argument1;
  M_new[3, 2] = argument0[3, 2]*argument1;
  M_new[3, 3] = argument0[3, 3]*argument1;
  return M_new;
}

#define r44_scale_to
///r44_scale_to(M, r, Mout)
{
  argument2[@ 0, 0] = argument0[0, 0]*argument1;
  argument2[@ 0, 1] = argument0[0, 1]*argument1;
  argument2[@ 0, 2] = argument0[0, 2]*argument1;
  argument2[@ 0, 3] = argument0[0, 3]*argument1;
  argument2[@ 1, 0] = argument0[1, 0]*argument1;
  argument2[@ 1, 1] = argument0[1, 1]*argument1;
  argument2[@ 1, 2] = argument0[1, 2]*argument1;
  argument2[@ 1, 3] = argument0[1, 3]*argument1;
  argument2[@ 2, 0] = argument0[2, 0]*argument1;
  argument2[@ 2, 1] = argument0[2, 1]*argument1;
  argument2[@ 2, 2] = argument0[2, 2]*argument1;
  argument2[@ 2, 3] = argument0[2, 3]*argument1;
  argument2[@ 3, 0] = argument0[3, 0]*argument1;
  argument2[@ 3, 1] = argument0[3, 1]*argument1;
  argument2[@ 3, 2] = argument0[3, 2]*argument1;
  argument2[@ 3, 3] = argument0[3, 3]*argument1;
  return argument2;
}

#define r44_transpose
///r44_transpose(M)
{
  var M_new;
  M_new[0, 0] = argument0[0, 0];
  M_new[0, 1] = argument0[1, 0];
  M_new[0, 2] = argument0[2, 0];
  M_new[0, 3] = argument0[3, 0];
  M_new[1, 0] = argument0[0, 1];
  M_new[1, 1] = argument0[1, 1];
  M_new[1, 2] = argument0[2, 1];
  M_new[1, 3] = argument0[3, 1];
  M_new[2, 0] = argument0[0, 2];
  M_new[2, 1] = argument0[1, 2];
  M_new[2, 2] = argument0[2, 2];
  M_new[2, 3] = argument0[3, 2];
  M_new[3, 0] = argument0[0, 3];
  M_new[3, 1] = argument0[1, 3];
  M_new[3, 2] = argument0[2, 3];
  M_new[3, 3] = argument0[3, 3];
  return M_new;
}

#define r44_transpose_to
///r44_transpose_to(M, Mout)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a02 = argument0[0, 2],
      a03 = argument0[0, 3],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      a12 = argument0[1, 2],
      a13 = argument0[1, 3],
      a20 = argument0[2, 0],
      a21 = argument0[2, 1],
      a22 = argument0[2, 2],
      a23 = argument0[2, 3],
      a30 = argument0[3, 0],
      a31 = argument0[3, 1],
      a32 = argument0[3, 2],
      a33 = argument0[3, 3];
  argument1[@ 0, 0] = a00;
  argument1[@ 0, 1] = a10;
  argument1[@ 0, 2] = a20;
  argument1[@ 0, 3] = a30;
  argument1[@ 1, 0] = a01;
  argument1[@ 1, 1] = a11;
  argument1[@ 1, 2] = a21;
  argument1[@ 1, 3] = a31;
  argument1[@ 2, 0] = a02;
  argument1[@ 2, 1] = a12;
  argument1[@ 2, 2] = a22;
  argument1[@ 2, 3] = a32;
  argument1[@ 3, 0] = a03;
  argument1[@ 3, 1] = a13;
  argument1[@ 3, 2] = a23;
  argument1[@ 3, 3] = a33;
  return argument1;
}

#define r44_invert
///r44_invert(M)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a02 = argument0[0, 2],
      a03 = argument0[0, 3],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      a12 = argument0[1, 2],
      a13 = argument0[1, 3],
      a20 = argument0[2, 0],
      a21 = argument0[2, 1],
      a22 = argument0[2, 2],
      a23 = argument0[2, 3],
      a30 = argument0[3, 0],
      a31 = argument0[3, 1],
      a32 = argument0[3, 2],
      a33 = argument0[3, 3],
      det = a00*a11*a22*a33+a00*a12*a23*a31+a00*a13*a21*a32
           +a01*a10*a23*a32+a01*a12*a20*a33+a01*a13*a22*a30
           +a02*a10*a21*a33+a02*a11*a23*a30+a02*a13*a20*a31
           +a03*a10*a22*a31+a03*a11*a20*a32+a03*a12*a21*a30
           -a00*a11*a23*a32-a00*a12*a21*a33-a00*a13*a22*a31
           -a01*a10*a22*a33-a01*a12*a23*a30-a01*a13*a20*a32
           -a02*a10*a23*a31-a02*a11*a20*a33-a02*a13*a21*a30
           -a03*a10*a21*a32-a03*a11*a22*a30-a03*a12*a20*a31;
  if (det == 0) {
    return undefined;
  }
  else {
    var result;
    result[0, 0] = (a11*a22*a33+a12*a23*a31+a13*a21*a32-a11*a23*a32-a12*a21*a33-a13*a22*a31)/det;
    result[0, 1] = (a01*a23*a32+a02*a21*a33+a03*a22*a31-a01*a22*a33-a02*a23*a31-a03*a21*a32)/det;
    result[0, 2] = (a01*a12*a33+a02*a13*a31+a03*a11*a32-a01*a13*a32-a02*a11*a33-a03*a12*a31)/det;
    result[0, 3] = (a01*a13*a22+a02*a11*a23+a03*a12*a21-a01*a12*a23-a02*a13*a21-a03*a11*a22)/det;
    result[1, 0] = (a10*a23*a32+a12*a20*a33+a13*a22*a30-a10*a22*a33-a12*a23*a30-a13*a20*a32)/det;
    result[1, 1] = (a00*a22*a33+a02*a23*a30+a03*a20*a32-a00*a23*a32-a02*a20*a33-a03*a22*a30)/det;
    result[1, 2] = (a00*a13*a32+a02*a10*a33+a03*a12*a30-a00*a12*a33-a02*a13*a30-a03*a10*a32)/det;
    result[1, 3] = (a00*a12*a23+a02*a13*a20+a03*a10*a22-a00*a13*a22-a02*a10*a23-a03*a12*a20)/det;
    result[2, 0] = (a10*a21*a33+a11*a23*a30+a13*a20*a31-a10*a23*a31-a11*a20*a33-a13*a21*a30)/det;
    result[2, 1] = (a00*a23*a31+a01*a20*a33+a03*a21*a30-a00*a21*a33-a01*a23*a30-a03*a20*a31)/det;
    result[2, 2] = (a00*a11*a33+a01*a13*a30+a03*a10*a31-a00*a13*a31-a01*a10*a33-a03*a11*a30)/det;
    result[2, 3] = (a00*a13*a21+a01*a10*a23+a03*a11*a20-a00*a11*a23-a01*a13*a20-a03*a10*a21)/det;
    result[3, 0] = (a10*a22*a31+a11*a20*a32+a12*a21*a30-a10*a21*a32-a11*a22*a30-a12*a20*a31)/det;
    result[3, 1] = (a00*a21*a32+a01*a22*a30+a02*a20*a31-a00*a22*a31-a01*a20*a32-a02*a21*a30)/det;
    result[3, 2] = (a00*a12*a31+a01*a10*a32+a02*a11*a30-a00*a11*a32-a01*a12*a30-a02*a10*a31)/det;
    result[3, 3] = (a00*a11*a22+a01*a12*a20+a02*a10*a21-a00*a12*a21-a01*a10*a22-a02*a11*a20)/det;
    return result;
  }
}

#define r44_invert_to
///r44_invert_to(M, Mout)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a02 = argument0[0, 2],
      a03 = argument0[0, 3],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      a12 = argument0[1, 2],
      a13 = argument0[1, 3],
      a20 = argument0[2, 0],
      a21 = argument0[2, 1],
      a22 = argument0[2, 2],
      a23 = argument0[2, 3],
      a30 = argument0[3, 0],
      a31 = argument0[3, 1],
      a32 = argument0[3, 2],
      a33 = argument0[3, 3],
      det = a00*a11*a22*a33+a00*a12*a23*a31+a00*a13*a21*a32
           +a01*a10*a23*a32+a01*a12*a20*a33+a01*a13*a22*a30
           +a02*a10*a21*a33+a02*a11*a23*a30+a02*a13*a20*a31
           +a03*a10*a22*a31+a03*a11*a20*a32+a03*a12*a21*a30
           -a00*a11*a23*a32-a00*a12*a21*a33-a00*a13*a22*a31
           -a01*a10*a22*a33-a01*a12*a23*a30-a01*a13*a20*a32
           -a02*a10*a23*a31-a02*a11*a20*a33-a02*a13*a21*a30
           -a03*a10*a21*a32-a03*a11*a22*a30-a03*a12*a20*a31;
  if (det == 0) {
    return undefined;
  }
  else {
    argument1[@ 0, 0] = (a11*a22*a33+a12*a23*a31+a13*a21*a32-a11*a23*a32-a12*a21*a33-a13*a22*a31)/det;
    argument1[@ 0, 1] = (a01*a23*a32+a02*a21*a33+a03*a22*a31-a01*a22*a33-a02*a23*a31-a03*a21*a32)/det;
    argument1[@ 0, 2] = (a01*a12*a33+a02*a13*a31+a03*a11*a32-a01*a13*a32-a02*a11*a33-a03*a12*a31)/det;
    argument1[@ 0, 3] = (a01*a13*a22+a02*a11*a23+a03*a12*a21-a01*a12*a23-a02*a13*a21-a03*a11*a22)/det;
    argument1[@ 1, 0] = (a10*a23*a32+a12*a20*a33+a13*a22*a30-a10*a22*a33-a12*a23*a30-a13*a20*a32)/det;
    argument1[@ 1, 1] = (a00*a22*a33+a02*a23*a30+a03*a20*a32-a00*a23*a32-a02*a20*a33-a03*a22*a30)/det;
    argument1[@ 1, 2] = (a00*a13*a32+a02*a10*a33+a03*a12*a30-a00*a12*a33-a02*a13*a30-a03*a10*a32)/det;
    argument1[@ 1, 3] = (a00*a12*a23+a02*a13*a20+a03*a10*a22-a00*a13*a22-a02*a10*a23-a03*a12*a20)/det;
    argument1[@ 2, 0] = (a10*a21*a33+a11*a23*a30+a13*a20*a31-a10*a23*a31-a11*a20*a33-a13*a21*a30)/det;
    argument1[@ 2, 1] = (a00*a23*a31+a01*a20*a33+a03*a21*a30-a00*a21*a33-a01*a23*a30-a03*a20*a31)/det;
    argument1[@ 2, 2] = (a00*a11*a33+a01*a13*a30+a03*a10*a31-a00*a13*a31-a01*a10*a33-a03*a11*a30)/det;
    argument1[@ 2, 3] = (a00*a13*a21+a01*a10*a23+a03*a11*a20-a00*a11*a23-a01*a13*a20-a03*a10*a21)/det;
    argument1[@ 3, 0] = (a10*a22*a31+a11*a20*a32+a12*a21*a30-a10*a21*a32-a11*a22*a30-a12*a20*a31)/det;
    argument1[@ 3, 1] = (a00*a21*a32+a01*a22*a30+a02*a20*a31-a00*a22*a31-a01*a20*a32-a02*a21*a30)/det;
    argument1[@ 3, 2] = (a00*a12*a31+a01*a10*a32+a02*a11*a30-a00*a11*a32-a01*a12*a30-a02*a10*a31)/det;
    argument1[@ 3, 3] = (a00*a11*a22+a01*a12*a20+a02*a10*a21-a00*a12*a21-a01*a10*a22-a02*a11*a20)/det;
    return argument1;
  }
}

#define r44_encode_string
///r44_encode_string(M)
{
  return string_replace_all(
      string_format(argument0[0, 0], 15, 14)+","+
      string_format(argument0[0, 1], 15, 14)+","+
      string_format(argument0[0, 2], 15, 14)+","+
      string_format(argument0[0, 3], 15, 14)+";"+
      string_format(argument0[1, 0], 15, 14)+","+
      string_format(argument0[1, 1], 15, 14)+","+
      string_format(argument0[1, 2], 15, 14)+","+
      string_format(argument0[1, 3], 15, 14)+";"+
      string_format(argument0[2, 0], 15, 14)+","+
      string_format(argument0[2, 1], 15, 14)+","+
      string_format(argument0[2, 2], 15, 14)+","+
      string_format(argument0[2, 3], 15, 14)+";"+
      string_format(argument0[3, 0], 15, 14)+","+
      string_format(argument0[3, 1], 15, 14)+","+
      string_format(argument0[3, 2], 15, 14)+","+
      string_format(argument0[3, 3], 15, 14)
  , ' ', '');
}

#define r44_decode_string
///r44_decode_string(str)
{
  var str, pos, result;
  str = argument0;
  pos = string_pos(',', str);
  result[0, 0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[0, 1] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[0, 2] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(';', str);
  result[0, 3] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[1, 0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[1, 1] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[1, 2] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(';', str);
  result[1, 3] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[2, 0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[2, 1] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[2, 2] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(';', str);
  result[2, 3] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[3, 0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[3, 1] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[3, 2] = real(string_copy(str, 1, pos-1));
  result[3, 3] = real(string_delete(str, 1, pos));
  return result;
}

#define r44_decode_string_to
///r44_decode_string_to(str, Mout)
{
  var str, pos, result;
  str = argument0;
  pos = string_pos(',', str);
  argument1[@ 0, 0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  argument1[@ 0, 1] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  argument1[@ 0, 2] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(';', str);
  argument1[@ 0, 3] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  argument1[@ 1, 0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  argument1[@ 1, 1] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  argument1[@ 1, 2] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(';', str);
  argument1[@ 1, 3] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  argument1[@ 2, 0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  argument1[@ 2, 1] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  argument1[@ 2, 2] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(';', str);
  argument1[@ 2, 3] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  argument1[@ 3, 0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  argument1[@ 3, 1] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  argument1[@ 3, 2] = real(string_copy(str, 1, pos-1));
  argument1[@ 3, 3] = real(string_delete(str, 1, pos));
  return argument1;
}

#define r44_encode_base64
///r44_encode_base64(M)
{
  var buffer = buffer_create(128, buffer_fixed, 1);
  buffer_write(buffer, buffer_f64, argument0[0, 0]);
  buffer_write(buffer, buffer_f64, argument0[0, 1]);
  buffer_write(buffer, buffer_f64, argument0[0, 2]);
  buffer_write(buffer, buffer_f64, argument0[0, 3]);
  buffer_write(buffer, buffer_f64, argument0[1, 0]);
  buffer_write(buffer, buffer_f64, argument0[1, 1]);
  buffer_write(buffer, buffer_f64, argument0[1, 2]);
  buffer_write(buffer, buffer_f64, argument0[1, 3]);
  buffer_write(buffer, buffer_f64, argument0[2, 0]);
  buffer_write(buffer, buffer_f64, argument0[2, 1]);
  buffer_write(buffer, buffer_f64, argument0[2, 2]);
  buffer_write(buffer, buffer_f64, argument0[2, 3]);
  buffer_write(buffer, buffer_f64, argument0[3, 0]);
  buffer_write(buffer, buffer_f64, argument0[3, 1]);
  buffer_write(buffer, buffer_f64, argument0[3, 2]);
  buffer_write(buffer, buffer_f64, argument0[3, 3]);
  var result = buffer_base64_encode(buffer, 0, 128);
  buffer_delete(buffer);
  return result;
}

#define r44_decode_base64
///r44_decode_base64(enc)
{
  var buffer = buffer_create(128, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  var result;
  result[0, 0] = buffer_read(buffer, buffer_f64);
  result[0, 1] = buffer_read(buffer, buffer_f64);
  result[0, 2] = buffer_read(buffer, buffer_f64);
  result[0, 3] = buffer_read(buffer, buffer_f64);
  result[1, 0] = buffer_read(buffer, buffer_f64);
  result[1, 1] = buffer_read(buffer, buffer_f64);
  result[1, 2] = buffer_read(buffer, buffer_f64);
  result[1, 3] = buffer_read(buffer, buffer_f64);
  result[2, 0] = buffer_read(buffer, buffer_f64);
  result[2, 1] = buffer_read(buffer, buffer_f64);
  result[2, 2] = buffer_read(buffer, buffer_f64);
  result[2, 3] = buffer_read(buffer, buffer_f64);
  result[3, 0] = buffer_read(buffer, buffer_f64);
  result[3, 1] = buffer_read(buffer, buffer_f64);
  result[3, 2] = buffer_read(buffer, buffer_f64);
  result[3, 3] = buffer_read(buffer, buffer_f64);
  buffer_delete(buffer);
  return result;
}

#define r44_decode_base64_to
///r44_decode_base64_to(enc, Mout)
{
  var buffer = buffer_create(128, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  argument1[@ 0, 0] = buffer_read(buffer, buffer_f64);
  argument1[@ 0, 1] = buffer_read(buffer, buffer_f64);
  argument1[@ 0, 2] = buffer_read(buffer, buffer_f64);
  argument1[@ 0, 3] = buffer_read(buffer, buffer_f64);
  argument1[@ 1, 0] = buffer_read(buffer, buffer_f64);
  argument1[@ 1, 1] = buffer_read(buffer, buffer_f64);
  argument1[@ 1, 2] = buffer_read(buffer, buffer_f64);
  argument1[@ 1, 3] = buffer_read(buffer, buffer_f64);
  argument1[@ 2, 0] = buffer_read(buffer, buffer_f64);
  argument1[@ 2, 1] = buffer_read(buffer, buffer_f64);
  argument1[@ 2, 2] = buffer_read(buffer, buffer_f64);
  argument1[@ 2, 3] = buffer_read(buffer, buffer_f64);
  argument1[@ 3, 0] = buffer_read(buffer, buffer_f64);
  argument1[@ 3, 1] = buffer_read(buffer, buffer_f64);
  argument1[@ 3, 2] = buffer_read(buffer, buffer_f64);
  argument1[@ 3, 3] = buffer_read(buffer, buffer_f64);
  buffer_delete(buffer);
  return argument1;
}

#define rmn_clone
///rmn_clone(M)
{
  var M_new, M_height, M_width;
  M_height = array_height_2d(argument0);
  M_width = array_length_2d(argument0, 0);
  for (var i = 0; i < M_height; i++) {
    for (var j = 0; j < M_width; j++) {
      M_new[i, j] = argument0[i, j];
    }
  }
  return M_new;
}

#define rmn_clone_to
///rmn_clone_to(M, Mout)
{
  var M_height, M_width;
  M_height = array_height_2d(argument0);
  M_width = array_length_2d(argument0, 0);
  for (var i = 0; i < M_height; i++) {
    for (var j = 0; j < M_width; j++) {
      argument1[@ i, j] = argument0[i, j];
    }
  }
  return argument1;
}

#define rmn_add
///rmn_add(M1, M2)
{
  var result;
  var M_height = array_height_2d(argument0),
      M_width = array_length_2d(argument0, 0);
  for (var i = 0; i < M_height; i++) {
    for (var j = 0; j < M_width; j++) {
      result[i, j] = argument0[i, j]+argument1[i, j];
    }
  }
  return result;
}

#define rmn_add_to
///rmn_add_to(M1, M2, Mout)
{
  var M_height = array_height_2d(argument0),
      M_width = array_length_2d(argument0, 0);
  for (var i = 0; i < M_height; i++) {
    for (var j = 0; j < M_width; j++) {
      argument2[@ i, j] = argument0[i, j]+argument1[i, j];
    }
  }
  return argument2;
}

#define rmn_subtract
///rmn_subtract(M1, M2)
{
  var result;
  var M_height = array_height_2d(argument0),
      M_width = array_length_2d(argument0, 0);
  for (var i = 0; i < M_height; i++) {
    for (var j = 0; j < M_width; j++) {
      result[i, j] = argument0[i, j]-argument1[i, j];
    }
  }
  return result;
}

#define rmn_subtract_to
///rmn_subtract_to(M1, M2, Mout)
{
  var M_height = array_height_2d(argument0),
      M_width = array_length_2d(argument0, 0);
  for (var i = 0; i < M_height; i++) {
    for (var j = 0; j < M_width; j++) {
      argument2[@ i, j] = argument0[i, j]-argument1[i, j];
    }
  }
  return argument2;
}

#define rmn_scale
///rmn_scale(M, r)
{
  var result;
  var M_height = array_height_2d(argument0),
      M_width = array_length_2d(argument0, 0);
  for (var i = 0; i < M_height; i++) {
    for (var j = 0; j < M_width; j++) {
      result[i, j] = argument0[i, j]*argument1;
    }
  }
  return result;
}

#define rmn_scale_to
///rmn_scale_to(M, r, Mout)
{
  var M_height = array_height_2d(argument0),
      M_width = array_length_2d(argument0, 0);
  for (var i = 0; i < M_height; i++) {
    for (var j = 0; j < M_width; j++) {
      argument2[@ i, j] = argument0[i, j]*argument1;
    }
  }
  return argument2;
}

#define rmn_transpose
///rmn_transpose(M)
{
  var result;
  var m = array_height_2d(argument0),
      n = array_length_2d(argument0, 0);
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < m; j++) {
      result[i, j] = argument0[j, i];
    }
  }
  return result;
}

#define rmn_transpose_to
///rmn_transpose_to(M, Mout)
{
  var result;
  var m = array_height_2d(argument0),
      n = array_length_2d(argument0, 0);
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < m; j++) {
      result[i, j] = argument0[j, i];
    }
  }
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < m; j++) {
      argument1[@ i, j] = result[i, j];
    }
  }
  return argument1;
}

#define rmn_multiply
///rmn_multiply(M1, M2)
{
  var result;
  var m = array_height_2d(argument0),
      q = array_height_2d(argument1),
      n = array_length_2d(argument1, 0);
  for (var i = 0; i < m; i++) {
    for (var j = 0; j < n; j++) {
      result[i, j] = 0;
      for (var k = 0; k < q; k++) {
        result[i, j] += argument0[i, k]*argument1[k, j];
      }
    }
  }
  return result;
}

#define rmn_multiply_to
///rmn_multiply_to(M1, M2, Mout)
{
  var result;
  var m = array_height_2d(argument0),
      q = array_height_2d(argument1),
      n = array_length_2d(argument1, 0);
  for (var i = 0; i < m; i++) {
    for (var j = 0; j < n; j++) {
      result[i, j] = 0;
      for (var k = 0; k < q; k++) {
        result[i, j] += argument0[i, k]*argument1[k, j];
      }
    }
  }
  for (var i = 0; i < m; i++) {
    for (var j = 0; j < n; j++) {
      argument2[@ i, j] = result[i, j];
    }
  }
  return argument2;
}

#define rmn_transform
///rmn_transform(M, v)
{
  var result;
  var m = array_height_2d(argument0),
      n = array_length_1d(argument1);
  for (var i = 0; i < m; i++) {
    result[i] = 0;
    for (var j = 0; j < n; j++) {
      result[i] += argument0[i, j]*argument1[j];
    }
  }
  return result;
}

#define rmn_transform_to
///rmn_transform_to(M, v, vout)
{
  var result;
  var m = array_height_2d(argument0),
      n = array_length_1d(argument1);
  for (var i = 0; i < m; i++) {
    result[i] = 0;
    for (var j = 0; j < n; j++) {
      result[i] += argument0[i, j]*argument1[j];
    }
  }
  for (var i = 0; i < m; i++) {
    argument2[@ i] = result[i];
  }
  return argument2
}

#define rmn_encode_string
///rmn_encode_string(M)
{
  var result = "",
      m = array_height_2d(argument0),
      n = array_length_2d(argument0, 0);
  for (var i = 0; i < m; i++) {
    for (var j = 0; j < n; j++) {
      if (j > 0) result += ",";
      result += string_format(argument0[i, j], 15, 14);
    }
    if (i < m-1) {
      result += ";";
    }
  }
  return string_replace_all(result, ' ', '');
}

#define rmn_decode_string
///rmn_decode_string(str)
{
  var str = argument0,
      i_dim = string_count(';', str);
  var cpos, spos, rowstr, j_dim, result;
  for (var i = 0; i < i_dim; i++) {
    spos = string_pos(';', str);
    rowstr = string_copy(str, 1, spos-1);
    str = string_delete(str, 1, spos);
    j_dim = string_count(',', rowstr);
    for (var j = 0; j < j_dim; j++) {
      cpos = string_pos(',', rowstr);
      result[i, j] = real(string_copy(rowstr, 1, cpos-1));
      rowstr = string_delete(rowstr, 1, cpos);
    }
    result[i, j_dim] = real(rowstr);
  }
  for (var j = 0; j < j_dim; j++) {
    cpos = string_pos(',', str);
    result[i_dim, j] = real(string_copy(str, 1, cpos-1));
    str = string_delete(str, 1, cpos);
  }
  result[i_dim, j_dim] = real(str);
  return result;
}

#define rmn_decode_string_to
///rmn_decode_string_to(str, Mout)
{
  var str = argument0,
      i_dim = string_count(';', str);
  var cpos, spos, rowstr, j_dim;
  for (var i = 0; i < i_dim; i++) {
    spos = string_pos(';', str);
    rowstr = string_copy(str, 1, spos-1);
    str = string_delete(str, 1, spos);
    j_dim = string_count(',', rowstr);
    for (var j = 0; j < j_dim; j++) {
      cpos = string_pos(',', rowstr);
      argument1[@ i, j] = real(string_copy(rowstr, 1, cpos-1));
      rowstr = string_delete(rowstr, 1, cpos);
    }
    argument1[@ i, j_dim] = real(rowstr);
  }
  for (var j = 0; j < j_dim; j++) {
    cpos = string_pos(',', str);
    argument1[@ i_dim, j] = real(string_copy(str, 1, cpos-1));
    str = string_delete(str, 1, cpos);
  }
  argument1[@ i_dim, j_dim] = real(str);
  return argument1;
}

#define rmn_encode_base64
///rmn_encode_base64(M)
{
  var m = array_height_2d(argument0),
      n = array_length_2d(argument0, 0),
      buffer = buffer_create(8*m*n, buffer_fixed, 1);
  for (var i = 0; i < m; i++) {
    for (var j = 0; j < n; j++) {
      buffer_write(buffer, buffer_f64, argument0[i, j]);
    }
  }
  var result = buffer_base64_encode(buffer, 0, 8*m*n);
  buffer_delete(buffer);
  return result;
}

#define rmn_decode_base64
///rmn_decode_base64(enc, m, n)
{
  var i_dim = argument1,
      j_dim = argument2,
      buffer = buffer_create(8*argument1*argument2, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  var result;
  for (var i = 0; i < i_dim; i++) {
    for (var j = 0; j < j_dim; j++) {
      result[i, j] = buffer_read(buffer, buffer_f64);
    }
  }
  buffer_delete(buffer);
  return result;
}

#define rmn_decode_base64_to
///rmn_decode_base64_to(enc, m, n, Mout)
{
  var i_dim = argument1,
      j_dim = argument2,
      buffer = buffer_create(8*argument1*argument2, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  var result;
  for (var i = 0; i < i_dim; i++) {
    for (var j = 0; j < j_dim; j++) {
      argument3[@ i, j] = buffer_read(buffer, buffer_f64);
    }
  }
  buffer_delete(buffer);
  return argument3;
}

#define rnn_clone
///rnn_clone(M)
{
  var M_new, M_dim;
  M_dim = array_height_2d(argument0);
  for (var i = 0; i < M_dim; i++) {
    for (var j = 0; j < M_dim; j++) {
      M_new[i, j] = argument0[i, j];
    }
  }
  return M_new;
}

#define rnn_clone_to
///rnn_clone_to(M, Mout)
{
  var M_dim;
  M_dim = array_height_2d(argument0);
  for (var i = 0; i < M_dim; i++) {
    for (var j = 0; j < M_dim; j++) {
      argument1[@ i, j] = argument0[i, j];
    }
  }
  return argument1;
}

#define rnn_add
///rnn_add(M1, M2)
{
  var result;
  var n = array_height_2d(argument0);
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n; j++) {
      result[i, j] = argument0[i, j]+argument1[i, j];
    }
  }
  return result;
}

#define rnn_add_to
///rnn_add_to(M1, M2, Mout)
{
  var n = array_height_2d(argument0);
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n; j++) {
      argument2[@ i, j] = argument0[i, j]+argument1[i, j];
    }
  }
  return argument2;
}

#define rnn_subtract
///rnn_subtract(M1, M2)
{
  var result;
  var n = array_height_2d(argument0);
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n; j++) {
      result[i, j] = argument0[i, j]-argument1[i, j];
    }
  }
  return result;
}

#define rnn_subtract_to
///rnn_subtract_to(M1, M2, Mout)
{
  var n = array_height_2d(argument0);
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n; j++) {
      argument2[@ i, j] = argument0[i, j]-argument1[i, j];
    }
  }
  return argument2;
}

#define rnn_scale
///rnn_scale(M, r)
{
  var result;
  var n = array_height_2d(argument0);
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n; j++) {
      result[i, j] = argument0[i, j]*argument1;
    }
  }
  return result;
}

#define rnn_scale_to
///rnn_scale_to(M, r, Mout)
{
  var n = array_height_2d(argument0);
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n; j++) {
      argument2[@ i, j] = argument0[i, j]*argument1;
    }
  }
  return argument2;
}

#define rnn_transpose
///rnn_transpose(M)
{
  var result;
  var n = array_height_2d(argument0);
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n; j++) {
      result[i, j] = argument0[j, i];
    }
  }
  return result;
}

#define rnn_transpose_to
///rnn_transpose_to(M, Mout)
{
  var result, tmp;
  var n = array_height_2d(argument0);
  for (var i = 0; i < n; i++) {
    for (var j = 0; j <= i; j++) {
      tmp = argument0[i, j];
      argument1[@ i, j] = argument0[j, i];
      argument1[@ j, i] = tmp;
    }
  }
  return argument1;
}

#define rnn_multiply
///rnn_multiply(M1, M2)
{
  var result;
  var m = array_height_2d(argument0),
      n = array_length_2d(argument1, 0);
  for (var i = 0; i < m; i++) {
    for (var j = 0; j < n; j++) {
      result[i, j] = 0;
      for (var k = 0; k < m; k++) {
        result[i, j] += argument0[i, k]*argument1[k, j];
      }
    }
  }
  return result;
}

#define rnn_multiply_to
///rnn_multiply_to(M1, M2, Mout)
{
  var result;
  var m = array_height_2d(argument0),
      n = array_length_2d(argument1, 0);
  for (var i = 0; i < m; i++) {
    for (var j = 0; j < n; j++) {
      result[i, j] = 0;
      for (var k = 0; k < m; k++) {
        result[i, j] += argument0[i, k]*argument1[k, j];
      }
    }
  }
  for (var i = 0; i < m; i++) {
    for (var j = 0; j < n; j++) {
      argument2[@ i, j] = result[i, j];
    }
  }
  return argument2;
}

#define rnn_transform
///rmn_transform(M, v)
{
  var result;
  var n = array_height_2d(argument0);
  for (var i = 0; i < n; i++) {
    result[i] = 0;
    for (var j = 0; j < n; j++) {
      result[i] += argument0[i, j]*argument1[j];
    }
  }
  return result;
}

#define rnn_transform_to
///rmn_transform_to(M, v, vout)
{
  var result;
  var n = array_height_2d(argument0);
  for (var i = 0; i < n; i++) {
    result[i] = 0;
    for (var j = 0; j < n; j++) {
      result[i] += argument0[i, j]*argument1[j];
    }
  }
  for (var i = 0; i < n; i++) {
    argument2[@ i] = result[i];
  }
  return argument2;
}

#define rnn_invert
///rnn_invert(M)
//This uses the Gauss-Jordan method with row pivoting for finding a general inverse without external dependencies
{
  //Find dimensions, start with original=M, result=identity
  var n = array_height_2d(argument0);
  var original, result;
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n; j++) {
      original[i, j] = argument0[i, j];
      result[i, j] = 0;
    }
  }
  for (var i = 0; i < n; i++) {
    result[i, i] = 1;
  }
  //For each row
  for (var i = 0; i < n; i++) {
    //Find highest row among i through n-1 by absolute value of its ith entry
    var highest_row_i = i,
        highest_row_abs = abs(original[i, i]),
        current_row_abs;
    for (var ii = i+1; ii < n; ii++) {
      current_row_abs = abs(original[ii, i]);
      if (current_row_abs > highest_row_abs) {
        highest_row_i = ii;
        highest_row_abs = current_row_abs;
      }
    }
    //It is singular if the entire remaining column is 0
    if (highest_row_abs == 0) {
      return undefined;
    }
    //Swap the row on both the original and the result
    if (i != highest_row_i) {
      for (var j = 0; j < n; j++) {
        var tmp;
        tmp = original[i, j];
        original[i, j] = original[highest_row_i, j];
        original[highest_row_i, j] = tmp;
        tmp = result[i, j];
        result[i, j] = result[highest_row_i, j];
        result[highest_row_i, j] = tmp;
      }
    }
    //Scale down ith row on both the original and the result
    var scale_factor = original[i, i];
    for (var j = i+1; j < n; j++) {
      original[i, j] /= scale_factor;
    }
    for (var j = 0; j < n; j++) {
      result[i, j] /= scale_factor;
    }
    original[i, i] = 1;
    //Do row subtraction on every other row, on the original and the result
    for (var ii = 0; ii < n; ii++) {
      if (ii != i) {
        var factor = original[ii, i];
        for (var j = i+1; j < n; j++) {
          original[ii, j] -= factor*original[i, j];
        }
        for (var j = 0; j < n; j++) {
          result[ii, j] -= factor*result[i, j];
        }
        original[ii, i] = 0;
      }
    }
  }
  //Done
  return result;
}

#define rnn_invert_to
///rnn_invert_to(M, Mout)
//This uses the Gauss-Jordan method with row pivoting for finding a general inverse without external dependencies
{
  //Find dimensions, start with original=M, result=identity
  var n = array_height_2d(argument0);
  var original, result;
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n; j++) {
      original[i, j] = argument0[i, j];
      result[i, j] = 0;
    }
  }
  for (var i = 0; i < n; i++) {
    result[i, i] = 1;
  }
  //For each row
  for (var i = 0; i < n; i++) {
    //Find highest row among i through n-1 by absolute value of its ith entry
    var highest_row_i = i,
        highest_row_abs = abs(original[i, i]),
        current_row_abs;
    for (var ii = i+1; ii < n; ii++) {
      current_row_abs = abs(original[ii, i]);
      if (current_row_abs > highest_row_abs) {
        highest_row_i = ii;
        highest_row_abs = current_row_abs;
      }
    }
    //It is singular if the entire remaining column is 0
    if (highest_row_abs == 0) {
      return undefined;
    }
    //Swap the row on both the original and the result
    if (i != highest_row_i) {
      for (var j = 0; j < n; j++) {
        var tmp;
        tmp = original[i, j];
        original[i, j] = original[highest_row_i, j];
        original[highest_row_i, j] = tmp;
        tmp = result[i, j];
        result[i, j] = result[highest_row_i, j];
        result[highest_row_i, j] = tmp;
      }
    }
    //Scale down ith row on both the original and the result
    var scale_factor = original[i, i];
    for (var j = i+1; j < n; j++) {
      original[i, j] /= scale_factor;
    }
    for (var j = 0; j < n; j++) {
      result[i, j] /= scale_factor;
    }
    original[i, i] = 1;
    //Do row subtraction on every other row, on the original and the result
    for (var ii = 0; ii < n; ii++) {
      if (ii != i) {
        var factor = original[ii, i];
        for (var j = i+1; j < n; j++) {
          original[ii, j] -= factor*original[i, j];
        }
        for (var j = 0; j < n; j++) {
          result[ii, j] -= factor*result[i, j];
        }
        original[ii, i] = 0;
      }
    }
  }
  //Done --- copy result to output
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n; j++) {
      argument1[@ i, j] = result[i, j];
    }
  }
  return argument1;
}

#define rnn_encode_string
///rnn_encode_string(M)
{
  var result = "",
      n = array_height_2d(argument0);
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n; j++) {
      if (j > 0) result += ",";
      result += string_format(argument0[i, j], 15, 14);
    }
    if (i < n-1) {
      result += ";";
    }
  }
  return string_replace_all(result, ' ', '');
}

#define rnn_decode_string
///rnn_decode_string(str)
{
  var str = argument0,
      n_dim = string_count(';', str);
  var cpos, spos, rowstr, result;
  for (var i = 0; i < n_dim; i++) {
    spos = string_pos(';', str);
    rowstr = string_copy(str, 1, spos-1);
    str = string_delete(str, 1, spos);
    for (var j = 0; j < n_dim; j++) {
      cpos = string_pos(',', rowstr);
      result[i, j] = real(string_copy(rowstr, 1, cpos-1));
      rowstr = string_delete(rowstr, 1, cpos);
    }
    result[i, n_dim] = real(rowstr);
  }
  for (var j = 0; j < n_dim; j++) {
    cpos = string_pos(',', str);
    result[n_dim, j] = real(string_copy(str, 1, cpos-1));
    str = string_delete(str, 1, cpos);
  }
  result[n_dim, n_dim] = real(str);
  return result;
}

#define rnn_decode_string_to
///rnn_decode_string_to(str, Mout)
{
  var str = argument0,
      n_dim = string_count(';', str);
  var cpos, spos, rowstr;
  for (var i = 0; i < n_dim; i++) {
    spos = string_pos(';', str);
    rowstr = string_copy(str, 1, spos-1);
    str = string_delete(str, 1, spos);
    for (var j = 0; j < n_dim; j++) {
      cpos = string_pos(',', rowstr);
      argument1[@ i, j] = real(string_copy(rowstr, 1, cpos-1));
      rowstr = string_delete(rowstr, 1, cpos);
    }
    argument1[@ i, n_dim] = real(rowstr);
  }
  for (var j = 0; j < n_dim; j++) {
    cpos = string_pos(',', str);
    argument1[@ n_dim, j] = real(string_copy(str, 1, cpos-1));
    str = string_delete(str, 1, cpos);
  }
  argument1[@ n_dim, n_dim] = real(str);
  return argument1;
}

#define rnn_encode_base64
///rnn_encode_base64(M)
{
  var n = array_height_2d(argument0),
      buffer = buffer_create(8*n*n, buffer_fixed, 1);
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n; j++) {
      buffer_write(buffer, buffer_f64, argument0[i, j]);
    }
  }
  var result = buffer_base64_encode(buffer, 0, 8*n*n);
  buffer_delete(buffer);
  return result;
}

#define rnn_decode_base64
///rnn_decode_base64(enc, n)
{
  var buffer = buffer_create(8*argument1*argument1, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  var result;
  for (var i = 0; i < argument1; i++) {
    for (var j = 0; j < argument1; j++) {
      result[i, j] = buffer_read(buffer, buffer_f64);
    }
  }
  buffer_delete(buffer);
  return result;
}

#define rnn_decode_base64_to
///rnn_decode_base64_to(enc, n, Mout)
{
  var buffer = buffer_create(8*argument1*argument1, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  var result;
  for (var i = 0; i < argument1; i++) {
    for (var j = 0; j < argument1; j++) {
      argument2[@ i, j] = buffer_read(buffer, buffer_f64);
    }
  }
  buffer_delete(buffer);
  return argument2;
}

