include <BOSL2/std.scad>
include <BOSL2/joiners.scad>

$fn=128;

length = 700/3;
height = 10;
width = 60;

module profile(l=700, h=10, w=60) {
    p = trapezoid(h=h, w1=w, w2=w/3, rounding=[w/2,w/2,1,1]);
    
    diff()
    linear_sweep(p, height=l, orient=RIGHT, spin=90, center=true)
    tag("remove") {
        xflip_copy()
        attach([BOT,TOP]) right(6) snap_pin_socket("standard");
        
        attach(FRONT)
        zrot(90)
        text3d("Carlmut Industries™", font="Liberation Sans:style=Bold Italic", h=2, size=12, center=true);
    }
    
    
}

profile(l=length, h=height, w=width);