#include "lwc_crypto_hash.h"
#include "api.h"


hash_ctx lwc_hash_ctx = {
	"knot512hash",
	"avr8_lowrom",
	CRYPTO_BYTES,
	crypto_hash,
};

