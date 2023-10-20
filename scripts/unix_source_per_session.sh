

if [ $# -eq 0 ]; then
	if [ $0 != "/bin/bash" -a $0 != "bash" -a $0 != "-bash" ]; then
		sourcePath_local=`bash -c "source $0 1"`
	else
		sourcePath_local=${BASH_SOURCE[0]}
	fi
else
	if [ $# -eq 1 ]; then
		echo ${BASH_SOURCE[0]}
		return 0
	else
		sourcePath_local=${1}
	fi
fi


makeMainJob (){

	local sourcePath=${sourcePath_local}
	unset sourcePath_local
	echo sourcePath=$sourcePath

	local currentDirectory=`pwd`
	echo currentDirectory=$currentDirectory

	# in mac short directory calculation based on n'readlink' or 'realpath' will not work
	local scriptDirectory=`dirname "${sourcePath}"`
	local scriptFileName=`basename "${sourcePath}"`
	cd "${scriptDirectory}"
	local fileOrigin=`readlink "${scriptFileName}"` || :
	while [ ! -z "${fileOrigin}" ]
	do
		local scriptDirectory=`dirname "${fileOrigin}"`
		local scriptFileName=`basename "${fileOrigin}"`
		cd "${scriptDirectory}"
		local fileOrigin=`readlink "${scriptFileName}"`  || :
	done
	cd ..
	simpleCppBcryptRepositoryRoot=`pwd`
	export simpleCppBcryptRepositoryRoot
	echo simpleCppBcryptRepositoryRoot=$simpleCppBcryptRepositoryRoot

        source ${simpleCppBcryptRepositoryRoot}/contrib/cinternal/scripts/unix_source_per_session.sh ${simpleCppBcryptRepositoryRoot}/contrib/cinternal/scripts/unix_source_per_session.sh ${simpleCppBcryptRepositoryRoot}/contrib/cinternal/scripts/unix_source_per_session.sh

	case "$LD_LIBRARY_PATH" in
	        ${simpleCppBcryptRepositoryRoot}/sys/$lsbCode/Debug/lib:${simpleCppBcryptRepositoryRoot}/sys/$lsbCode/Release/lib:* )
		        echo "LD_LIBRARY_PATH for simple cpp bcrypt has been already set"
			;;
		* )
		        export LD_LIBRARY_PATH=${simpleCppBcryptRepositoryRoot}/sys/$lsbCode/Debug/lib:${simpleCppBcryptRepositoryRoot}/sys/$lsbCode/Release/lib::$LD_LIBRARY_PATH
			;;
	esac

	cd ${currentDirectory}
}


makeMainJob
return 0
