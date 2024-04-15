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


#define SIMPLE_CPP_BY_CRIPT_MIN_HASH_STR_LEN    60

CPPUTILS_BEGIN_C


SIMPCPPBCRPT_EXPORT void SimpleCppBcryptGenerateSalt(char* a_salt, size_t a_salt_size);
SIMPCPPBCRPT_EXPORT void SimpleCppBcryptGenerateHashRaw(const char* a_salt, int a_cost, char* a_buffer_for_hash, size_t a_buffer_size);
SIMPCPPBCRPT_EXPORT void SimpleCppBcryptGenerateHash(int a_cost, char* a_buffer_for_hash, size_t a_buffer_size);
SIMPCPPBCRPT_EXPORT void SimpleCppBcryptNodeBcryptRaw(const char* a_key, size_t a_key_len, const char* a_hash, char* a_encrypted);
SIMPCPPBCRPT_EXPORT void SimpleCppBcryptNodeBcrypt(const char* a_key, size_t a_key_len, int a_cost, char* a_encrypted);
SIMPCPPBCRPT_EXPORT bool SimpleCppBcryptVerify(const char* a_password, const char* a_hash);
SIMPCPPBCRPT_EXPORT bool SimpleCppBcryptVerifyRaw(const char* a_password, size_t a_passwordLen, const char* a_hash);


CPPUTILS_END_C



#endif  //  #ifndef SIMPLE_CPP_BCRYPT_INCLUDE_SIMPLE_CPP_BCRYPT_H
