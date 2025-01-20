
GUID_CntTchPkg := "f271645d-8e76-411d-8ed3-049298220f08"
NAME_CntTchPkg := "CntTchPkg"
VERSION_CntTchPkg := "0.0.0"

PACKAGE_RECORD_CntTchPkg += $(NAME_CntTchPkg)
PACKAGE_RECORD_CntTchPkg += $(VERSION_CntTchPkg)
PACKAGE_RECORD_CntTchPkg += $(GUID_CntTchPkg)

PATH_SOURCE_CntTchPkg := cntlib/CntTchPkg

SOURCE_CntTchPkg += $(PATH_SOURCE_CntTchPkg)/CheckSum/CheckSum.c

DIR_CntTchPkg := build/packages/CntTchPkg
OBJDIR_CntTchPkg := $(DIR_CntTchPkg)/objects

mk_pkg_CntTchPkg: mk_pkg_CntTchPkg_dir
	$(CC) $(CFLAGS) -c $(SOURCE_CntTchPkg) -o $(OBJDIR_CntTchPkg)/CheckSum.o
	$(AR) $(ARFLAGS) $(DIR_CntTchPkg)/CntTchPkg.a $(OBJDIR_CntTchPkg)/*.o

mk_pkg_CntTchPkg_dir:
	@mkdir -p $(OBJDIR_CntTchPkg)