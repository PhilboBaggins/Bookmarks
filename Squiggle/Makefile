NAME := Squiggle
ALL := $(NAME).dxf $(NAME).svg $(NAME).png

.PHONY : all clean

all: $(ALL)

$(NAME).dxf $(NAME).svg: $(NAME).scad
	openscad -o $@ $<

$(NAME).png: $(NAME).svg
	convert $< $@

clean:
	rm -f $(ALL)
