NAME := Squiggle
ALL := $(NAME).dxf $(NAME).svg

.PHONY : all clean

all: $(ALL)

$(ALL): $(NAME).scad
	openscad -o $@ $<

clean:
	rm -f $(ALL)
