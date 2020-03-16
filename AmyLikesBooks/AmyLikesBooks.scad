
include <../_common/BookmarksCommon.scad>
use <../_openscad-common/VerticalText.scad>
use <../_openscad-common/RoundedRect.scad>

FONT = "Liberation mono";

module AmyLikesBooks(size)
{
    difference()
    {
        RoundedRect2D(size, 10);

        translate([
            size[0] * 0.333,
            (size[1] + 10) * 0.75])
        VerticalText("AMY",
            height=size[1] * 0.5 / 3,
            spacing=10,
            font=FONT);

        translate([size[0] * 0.75, size[1] * 0.5])
        rotate([0, 0, 90])
        resize([0, size[0] * 0.25], auto = true)
        text("-likes books-", font=FONT, halign = "center", valign = "center");
    }
}

// Leave space around design to draw cut lines (in a different colour, using a separate script)
translate([1, 1])
AmyLikesBooks(BOOKMARK_SIZE_NORMAL - [2, 2]);
