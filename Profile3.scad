include <BOSL2/std.scad>
include <BOSL2/joiners.scad>

$fn=64;

length = 700/3;
height = 10;
width = 60;

module profile(l=700, h=10, w=60) {
    p = trapezoid(h=h, w1=w, w2=w/3, rounding=[w/2,w/2,1,1]);
    
    diff("socket")
    linear_sweep(p, height=l, orient=RIGHT, spin=90, center=true)
    tag("socket"){
        attach([BOT,TOP]) snap_pin_socket("standard");
    }
}

profile(l=length, h=height, w=width);