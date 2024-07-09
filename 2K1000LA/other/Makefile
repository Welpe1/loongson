.PHONY:clean all
CC=gcc
SRC_DIR=src
OUTPUT_DIR=output

SRCS=$(wildcard $(SRC_DIR)/*.c)

RM_FLAGS=-fr

all:  
	mkdir -p $(OUTPUT_DIR)  
	@echo "ok"  
	@echo "SRCS=$(SRCS)"  
	@for item in $(SRCS); do \  
		echo "
$$
item"; \  
		OBJ=$(patsubst $(SRC_DIR)/%.c,$(OUTPUT_DIR)/%,
$$
item); \  
		echo "OBJ=
$$
OBJ"; \  
		$(CC) 
$$
item -o 
$$
OBJ; \  
	done
clean:
	rm $(RM_FLAGS)	$(OUTPUT_DIR)
