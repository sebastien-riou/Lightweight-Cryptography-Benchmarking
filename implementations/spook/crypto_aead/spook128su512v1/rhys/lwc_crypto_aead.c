#include "lwc_crypto_aead.h"
#include "api.h"
#include "spook.h"


aead_ctx lwc_aead_cipher = {
	"spook128su512v1",
	"rhys",
	CRYPTO_KEYBYTES,
	CRYPTO_NPUBBYTES,
	CRYPTO_ABYTES,
	spook_128_512_su_aead_encrypt,
	spook_128_512_su_aead_decrypt
};

