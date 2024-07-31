// the point of this file is to be a sort of DSL for constructing keycaps.
// when you create a method chain you are just changing the parameters
// key.scad uses, it doesn't generate anything itself until the end. This
// lets it remain easy to use key.scad like before (except without key profiles)
// without having to rely on this file. Unfortunately that means setting tons of
// special variables, but that's a limitation of SCAD we have to work around

include <./includes.scad>


$stem_type = "rounded_cherry";
$stem_inset = -1;
$rounded_cherry_stem_d=5.65;
//$inner_shape_type="dished";
$stem_inner_slop = 0.01;
$stem_slop = 0.1;
$stabilizer_type = "cherry_stabilizer";
$stem_support_type = "disabled";


// example key
$key_length = 1.25;
mt3_row(3) legend("rA5.65", size=2.3) key();
//color("RosyBrown",0.5) cube(size=[5.6,5.6,0.9], center=true);

// example row
/* for (x = [0:1:4]) {
  translate_u(0,-x) dcs_row(x) key();
} */

// example layout
/* preonic_default("dcs") key(); */
