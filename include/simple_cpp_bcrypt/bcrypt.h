//
// file:			bcrypt.h
// path:			include/simple_cpp_bcrypt/bcrypt.h
// created on:		2023 May 08
// created by:		Davit Kalantaryan (davit.kalantaryan@gmail.com)
//

#ifndef SIMPLE_CPP_BCRYPT_INCLUDE_SIMPLE_CPP_BCRYPT_H
#define SIMPLE_CPP_BCRYPT_INCLUDE_SIMPLE_CPP_BCRYPT_H


#include <simple_cpp_bcrypt/export_symbols.h>
#include <stdbool.h>
#include <stddef.h>


CPPUTILS_BEGIN_C


SIMPCPPBCRPT_EXPORT bool SimpleCppBcryptVerify(const char* a_password, const char* a_hash);
SIMPCPPBCRPT_EXPORT bool SimpleCppBcryptVerifyRaw(const char* a_password, size_t a_passwordLen, const char* a_hash);


CPPUTILS_END_C



#endif  //  #ifndef SIMPLE_CPP_BCRYPT_INCLUDE_SIMPLE_CPP_BCRYPT_H
