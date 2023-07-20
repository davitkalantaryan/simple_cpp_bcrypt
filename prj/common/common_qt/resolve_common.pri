#
# name:			sys_common.pri
# path:			${repositoryRoot}/prj/common/common_qt/sys_common.pri
# created on:		2022 Jan 16
# created by:		Davit Kalantaryan (davit.kalantaryan@desy.de)  
# usage:		Use this qt include file to calculate some platform specific stuff
#


message("!!! $${PWD}/resolve_common.pri")


isEmpty( simpleCppBcryptRepositoryRoot ) {
        simpleCppBcryptRepositoryRoot = $$(simpleCppBcryptRepositoryRoot)
        isEmpty(simpleCppBcryptRepositoryRoot) {
            simpleCppBcryptRepositoryRoot = $${PWD}/../../..
        }
}

isEmpty( repositoryRoot ) {
        repositoryRoot = $$(repositoryRoot)
        isEmpty(repositoryRoot) {
            repositoryRoot = $${simpleCppBcryptRepositoryRoot}
        }
}

isEmpty(artifactRoot) {
    artifactRoot = $$(artifactRoot)
    isEmpty(artifactRoot) {
        artifactRoot = $${repositoryRoot}
    }
}


isEmpty( cinternalRepoRoot ) {
        cinternalRepoRoot = $$(cinternalRepoRoot)
        isEmpty(cinternalRepoRoot) {
            cinternalRepoRoot=$${simpleCppBcryptRepositoryRoot}/contrib/cinternal
        }
}
