
# SUB_PROJECTS := All folders that don't start with an underscore
SUB_PROJECTS := $(filter-out $(wildcard ./_*/),$(filter %/, $(wildcard ./*/)))

.PHONY : all clean

all:
	@for dir in $(SUB_PROJECTS); do \
		make -C "$$dir" all; \
	done

clean:
	@for dir in $(SUB_PROJECTS); do \
		make -C "$$dir" clean; \
	done
