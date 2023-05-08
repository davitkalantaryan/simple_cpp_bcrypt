//
// file:			export_symbols.h
// path:			include/simple_cpp_bcrypt/export_symbols.h
// created on:		2023 May 08
// created by:		Davit Kalantaryan (davit.kalantaryan@gmail.com)
//

#ifndef SIMPLE_CPP_BCRYPT_INCLUDE_SIMPLE_CPP_EXPORT_SYMBOLS_H
#define SIMPLE_CPP_BCRYPT_INCLUDE_SIMPLE_CPP_EXPORT_SYMBOLS_H

#include <cinternal/internal_header.h>


#ifndef SIMPCPPBCRPT_EXPORT
#if defined(SIMPCPPBCRPT_COMPILING_SHARED_LIB)
#define SIMPCPPBCRPT_EXPORT CPPUTILS_DLL_PUBLIC
#elif defined(SIMPCPPBCRPT_USING_STATIC_LIB_OR_OBJECTS)
#define SIMPCPPBCRPT_EXPORT
#elif defined(SIMPCPPBCRPT_LOAD_FROM_DLL)
#define SIMPCPPBCRPT_EXPORT CPPUTILS_IMPORT_FROM_DLL
#else
#define SIMPCPPBCRPT_EXPORT CPPUTILS_DLL_PRIVATE
#endif
#endif


#endif  // #ifndef SIMPLE_CPP_BCRYPT_INCLUDE_SIMPLE_CPP_EXPORT_SYMBOLS_H
