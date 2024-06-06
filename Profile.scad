include <BOSL2/std.scad>

$fn=64;

length = 240;
height = 10;
width = 60;
laminate_gap = 15;
laminate_thickness = 7;

module profile(l=700, h=10, w=60, gap=15, lam=7) {
    linear_extrude(l) {
        trapezoid(h=h, w1=w, w2=w/3, rounding=[w/2,w/2,1,1], anchor=BOTTOM);
        //rect([gap, lam], rounding=[0, 0, 1, 1], anchor=TOP);
        trapezoid(h=lam, w1=gap*0.66, w2=gap, rounding=[0,0,1,1], anchor=TOP);
    }
}

rotate([90, 0, 0])
profile(l=length, h=height, w=width, gap=laminate_gap, lam=laminate_thickness);