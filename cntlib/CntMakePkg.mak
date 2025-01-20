GUID_CntMakePkg_Makefile := 3854825c-da7c-4d4d-9f60-7d93e0b826e6

include cntlib/CntTchPkg/CntTchPkg.mak

PACKAGES_RECORDS_LIST += "$(subst , ,$(PACKAGE_RECORD_CntTchPkg))"

TARGET_LIST_PKGS += mk_pkgs_info
TARGET_LIST_PKGS += mk_pkg_CntTchPkg

mk_pkgs: $(TARGET_LIST_PKGS)

mk_pkgs_info: 
	@echo "PACKAGES:"
	@for pkg_list in $(PACKAGES_RECORDS_LIST); do \
		echo "   > $$pkg_list"; \
	done