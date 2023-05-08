//
// file:			main_any_quick_test.c
// path:			src/tests/main_any_quick_test.c
// created on:		2023 May 08
// created by:		Davit Kalantaryan (davit.kalantaryan@gmail.com)
//


#include <simple_cpp_bcrypt/bcrypt.h>
#include <stdio.h>


#define PLAIN_PASSWORD	"1f2c87d747cebad1f8854f4e9be3fa79dc272cdbcc275b54a1e661f03ce68b2a"
#define HASHED_PASSWORD	"$2y$13$em3ZxWrM5LjrZu7tHRKMPetbZfLhR1bQ6GPe470rJeaQxI3QBhTp."


int main(void)
{
	bool bComparision;

	bComparision = SimpleCppBcryptVerify(PLAIN_PASSWORD, HASHED_PASSWORD);
	if (bComparision) {
		printf("Pasword matches!\n");
	}
	else {
		printf("Password does not match!\n");
	}

	return 0;
}
