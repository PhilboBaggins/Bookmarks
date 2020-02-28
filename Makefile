
# SUB_PROJECTS := All folders that don't start with an underscore
SUB_PROJECTS := $(filter-out $(wildcard ./_*/),$(filter %/, $(wildcard ./*/)))

.PHONY : all clean

all:
	@for dir in $(SUB_PROJECTS); do \
		echo "Building in $$dir"; \
		make -C "$$dir" all; \
		echo; \
	done

clean:
	@for dir in $(SUB_PROJECTS); do \
		echo "Cleaning in $$dir"; \
		make -C "$$dir" clean; \
		echo; \
	done
