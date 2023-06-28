#
# repo:                 simpleCppBcrypt
# name:			flags_common.pri
# path:			${repositoryRoot}/prj/common/common_qt/flags_common.pri
# created on:		2022 Oct 19
# created by:		Davit Kalantaryan (davit.kalantaryan@gmail.com)
# usage:		Use this qt include file to calculate some platform specific stuff
#


message("!!! $${PWD}/flags_common.pri")
simpleCppBcryptFlagsCommonIncluded = 1

include ( "$${PWD}/resolve_common.pri" )
isEmpty( cinternalFlagsCommonIncluded ) {
	include ( "$${cinternalRepoRoot}/prj/common/common_qt/flags_common.pri" )
	cinternalFlagsCommonIncluded = 1
}
INCLUDEPATH += $${simpleCppBcryptRepositoryRoot}/include
