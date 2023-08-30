

TEMPLATE = subdirs
#CONFIG += ordered

include ( "$${PWD}/../../prj/common/common_qt/flagsandsys_common_private.pri" )


SUBDIRS		+=	"$${simpleCppBcryptRepositoryRoot}/prj/tests/any_quick_test_qt/any_quick_test.pro"
SUBDIRS		+=	"$${simpleCppBcryptRepositoryRoot}/prj/tests/simplecppbcrypt_unit_test_mult/simplecppbcrypt_unit_test.pro"

cinternalFromHere{
        SUBDIRS	+= "$${cinternalRepoRoot}/workspaces/cinternal_all_qt/cinternal_all.pro"
}


OTHER_FILES += $$files($${simpleCppBcryptRepositoryRoot}/scripts/*.sh,true)
OTHER_FILES += $$files($${simpleCppBcryptRepositoryRoot}/scripts/*.bat,true)
OTHER_FILES += $$files($${simpleCppBcryptRepositoryRoot}/scripts/.cicd/*.sh,true)
OTHER_FILES += $$files($${simpleCppBcryptRepositoryRoot}/scripts/.cicd/*.bat,true)
OTHER_FILES += $$files($${simpleCppBcryptRepositoryRoot}/scripts/.raw/*.sh,true)
OTHER_FILES += $$files($${simpleCppBcryptRepositoryRoot}/scripts/.raw/*.bat,true)
OTHER_FILES += $$files($${simpleCppBcryptRepositoryRoot}/docs/*.md,true)
OTHER_FILES += $$files($${simpleCppBcryptRepositoryRoot}/docs/*.txt,true)
OTHER_FILES += $$files($${simpleCppBcryptRepositoryRoot}/.github/*.yml,true)
OTHER_FILES += $$files($${simpleCppBcryptRepositoryRoot}/prj/common/common_mkfl/*.Makefile)


OTHER_FILES	+=	\
        "$${simpleCppBcryptRepositoryRoot}/.gitattributes"						\
	"$${simpleCppBcryptRepositoryRoot}/.gitignore"						\
	"$${simpleCppBcryptRepositoryRoot}/.gitmodules"						\
	"$${simpleCppBcryptRepositoryRoot}/LICENSE"							\
	"$${simpleCppBcryptRepositoryRoot}/README.md"
