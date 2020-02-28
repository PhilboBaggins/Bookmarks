
include <../_common/BookmarksCommon.scad>
use <../_openscad-common/VerticalText.scad>
use <../_openscad-common/RoundedRect.scad>

FONT = "Liberation mono";

module AmyLikesBooks()
{
    difference()
    {
        RoundedRect2D(BOOKMARK_SIZE_NORMAL, 10);

        translate([
            BOOKMARK_SIZE_NORMAL[0] * 0.333,
            (BOOKMARK_SIZE_NORMAL[1] + 10) * 0.75])
        VerticalText("AMY",
            height=BOOKMARK_SIZE_NORMAL[1] * 0.5 / 3,
            spacing=10,
            font=FONT);

        translate([BOOKMARK_SIZE_NORMAL[0] * 0.75, BOOKMARK_SIZE_NORMAL[1] * 0.5])
        rotate([0, 0, 90])
        resize([0, BOOKMARK_SIZE_NORMAL[0] * 0.25], auto = true)
        text("-likes books-", font=FONT, halign = "center", valign = "center");
    }
}

AmyLikesBooks();
