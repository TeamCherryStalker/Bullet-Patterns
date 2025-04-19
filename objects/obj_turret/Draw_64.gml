draw_set_font(fnt_info);
draw_set_color(c_white);

var _bullet_time = "Tempo de lançamento das balas: " + string(shooting_time);
var _bullet_amount = "Quantidade de feixes a serem lançados: " + string(bullet_amount);
var _division = "Quantidade de divisões em um feixe: " + string((division_amount*100)/3);
var _angle = "Valor máximo do ângulo: " + string(angle);
var _angle_curvarture = "Velocidade e direção da rotação: " + string(angle_curvarture);
var _wrong = "Margem de erro na direção das balas: " + string(wrong_bullet);
var _additional_spd = "Velocidade adicional para as balas: "  + string(additional_spd);
var _curve = "Valor da curvatura: " + string(curve);

draw_text(12,12,_bullet_time);
draw_text(12,36,_bullet_amount);
draw_text(12,60,_division);
draw_text(12,84,_angle);
draw_text(12,108,_angle_curvarture);
draw_text(12,132,_wrong);
draw_text(12,156,_additional_spd);
draw_text(12,180,_curve);
