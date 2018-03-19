/*
   Alan Steremberg
   3/19/2018
   
   Add captive nuts to the MiSTer Case
*/
include <nutsnbolts/cyl_head_bolt.scad>;
include <nutsnbolts/materials.scad>;

x=-9.9;
y=8.3;
width=61.34;
length=100.44;

module captivenut()
{
    rotate([180,0,0]) nutcatch_parallel("M3", l=5);
    translate([0, 0, 50]) hole_through(name="M3", l=50+5, cl=0.1, h=10, hcl=0.4);
}
difference() {
        translate([0,-10,-38]) import("originalstl/MiSTer_Uni_52_Bottom.stl");
        translate([x,y,0]) captivenut();
        translate([x-length,y,0]) captivenut();
        translate([x,y+width,0]) captivenut();
        translate([x-length,y+width,0]) captivenut();
}

if (0)
difference() {
        translate([-15, -15, 0]) cube([80, 30, 50]);
        rotate([180,0,0]) nutcatch_parallel("M5", l=5);
        translate([0, 0, 50]) hole_through(name="M5", l=50+5, cl=0.1, h=10, hcl=0.4);
}
