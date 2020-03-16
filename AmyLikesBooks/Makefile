NAME := AmyLikesBooks
ALL := $(NAME).dxf $(NAME).svg $(NAME).png $(NAME)-with-cutout-lines.dxf

.PHONY : all clean

all: $(ALL)

$(NAME).dxf $(NAME).svg: $(NAME).scad
	openscad -o $@ $<

$(NAME)-with-cutout-lines.dxf: $(NAME).dxf
	@chmod 755 ../_common/add-outer-cutout.py
	../_common/add-outer-cutout.py -o $@ $<

$(NAME).png: $(NAME).svg
	convert $< $@

clean:
	rm -f $(ALL)
