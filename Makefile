CC = gcc

INCLUDES += -I"."

SOURCES += cntlib/*.c

CFLAGS += -Wall
CFLAGS += -Wextra
CFLAGS += -Werror
CFLAGS += -g
CFLAGS += -O0

AR := ar
ARFLAGS := rcs

BUILD_DIR := build

EXAMPLE_LIST += mk_exhello
EXAMPLE_LIST += mk_book

TARGET_LIST += mk_info
TARGET_LIST += mk_pkgs
TARGET_LIST += $(EXAMPLE_LIST)
TARGET_LIST += mk_done

all: $(TARGET_LIST)

include doc/Book/Book.mak
include examples/HelloWorld/HelloWorld.mak
include cntlib/CntMakePkg.mak

mk_info:
	@echo "cntlib"
	@echo "version: 0.0.4"
	@echo "The following packages are required for successful compilation:"
	@echo "gcc, pandoc, texlive, typst"
	@echo ""
	@echo "MIT license"
	@echo "Copyright (c) 2024-2025 Orcali"
	@echo "=============================="

mk_done:
	@echo ""
	@echo "done"

clean:
	rm -rf $(BUILD_DIR)