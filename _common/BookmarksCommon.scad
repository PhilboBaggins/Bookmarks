
BOOKMARK_SIZE_NORMAL = [50, 175];
BOOKMARK_SIZE_LARGE = [55, 210];

module AllBookmarkBlanks()
{
    translate([ 0, 0]) square(BOOKMARK_SIZE_NORMAL);
    translate([60, 0]) square(BOOKMARK_SIZE_LARGE);
}
