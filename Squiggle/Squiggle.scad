
include <../_common/BookmarksCommon.scad>
use <../_openscad-common/RoundedRect.scad>

$fn = 64;

function SquiggleFunc(x) = 5 * sin(25 * x);

module Squiggle(length, step = 0.5)
{
    rotate([0, 0, 270])
    for (i = [0 : step : length - step])
    {
        hull()
        {
            translate([SquiggleFunc(i),        i,      , 0]) circle(step * 2);
            translate([SquiggleFunc(i + step), i + step, 0]) circle(step * 2);
        }
    }
}

module SquiggleBookmark(size)
{
    difference()
    {
        RoundedRect2D(size, 10);

        translate([size[0] * 0.1, size[1] * 0.93])
        Squiggle(size[0] * 0.8);
    }
}

SquiggleBookmark(BOOKMARK_SIZE_NORMAL);
