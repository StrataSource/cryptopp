# cryptopp.cmake

set(CRYPTOPP_DIR ${CMAKE_CURRENT_LIST_DIR})

set(
	CRYPTOPP_SOURCE_FILES
	"${CRYPTOPP_DIR}/allocate.cpp"
	"${CRYPTOPP_DIR}/3way.cpp"
	"${CRYPTOPP_DIR}/adler32.cpp"
	"${CRYPTOPP_DIR}/algebra.cpp"
	"${CRYPTOPP_DIR}/algparam.cpp"
	"${CRYPTOPP_DIR}/arc4.cpp"
	"${CRYPTOPP_DIR}/asn.cpp"
	"${CRYPTOPP_DIR}/authenc.cpp"
	"${CRYPTOPP_DIR}/base32.cpp"
	"${CRYPTOPP_DIR}/base64.cpp"
	"${CRYPTOPP_DIR}/basecode.cpp"
	"${CRYPTOPP_DIR}/bfinit.cpp"
	"${CRYPTOPP_DIR}/blowfish.cpp"
	"${CRYPTOPP_DIR}/blumshub.cpp"
	"${CRYPTOPP_DIR}/camellia.cpp"
	"${CRYPTOPP_DIR}/cast.cpp"
	"${CRYPTOPP_DIR}/casts.cpp"
	"${CRYPTOPP_DIR}/cbcmac.cpp"
	"${CRYPTOPP_DIR}/ccm.cpp"
	"${CRYPTOPP_DIR}/channels.cpp"
	"${CRYPTOPP_DIR}/cmac.cpp"
	"${CRYPTOPP_DIR}/cpu.cpp"
	"${CRYPTOPP_DIR}/crc.cpp"
	"${CRYPTOPP_DIR}/cryptlib.cpp"
	"${CRYPTOPP_DIR}/default.cpp"
	"${CRYPTOPP_DIR}/des.cpp"
	"${CRYPTOPP_DIR}/dessp.cpp"
	"${CRYPTOPP_DIR}/dh.cpp"
	"${CRYPTOPP_DIR}/dll.cpp"
	"${CRYPTOPP_DIR}/dsa.cpp"
	"${CRYPTOPP_DIR}/eax.cpp"
	"${CRYPTOPP_DIR}/ec2n.cpp"
	"${CRYPTOPP_DIR}/eccrypto.cpp"
	"${CRYPTOPP_DIR}/ecp.cpp"
	"${CRYPTOPP_DIR}/elgamal.cpp"
	"${CRYPTOPP_DIR}/emsa2.cpp"
	"${CRYPTOPP_DIR}/eprecomp.cpp"
	"${CRYPTOPP_DIR}/esign.cpp"
	"${CRYPTOPP_DIR}/files.cpp"
	"${CRYPTOPP_DIR}/filters.cpp"
	"${CRYPTOPP_DIR}/fips140.cpp"
	"${CRYPTOPP_DIR}/gcm.cpp"
	"${CRYPTOPP_DIR}/gf256.cpp"
	"${CRYPTOPP_DIR}/gf2n.cpp"
	"${CRYPTOPP_DIR}/gf2_32.cpp"
	"${CRYPTOPP_DIR}/gfpcrypt.cpp"
	"${CRYPTOPP_DIR}/gost.cpp"
	"${CRYPTOPP_DIR}/gzip.cpp"
	"${CRYPTOPP_DIR}/hex.cpp"
	"${CRYPTOPP_DIR}/hmac.cpp"
	"${CRYPTOPP_DIR}/hrtimer.cpp"
	"${CRYPTOPP_DIR}/ida.cpp"
	"${CRYPTOPP_DIR}/idea.cpp"
	"${CRYPTOPP_DIR}/integer.cpp"
	"${CRYPTOPP_DIR}/iterhash.cpp"
	"${CRYPTOPP_DIR}/luc.cpp"
	"${CRYPTOPP_DIR}/mars.cpp"
	"${CRYPTOPP_DIR}/marss.cpp"
	"${CRYPTOPP_DIR}/md2.cpp"
	"${CRYPTOPP_DIR}/md4.cpp"
	"${CRYPTOPP_DIR}/md5.cpp"
	"${CRYPTOPP_DIR}/misc.cpp"
	"${CRYPTOPP_DIR}/modes.cpp"
	"${CRYPTOPP_DIR}/mqueue.cpp"
	"${CRYPTOPP_DIR}/mqv.cpp"
	"${CRYPTOPP_DIR}/nbtheory.cpp"
	"${CRYPTOPP_DIR}/oaep.cpp"
	"${CRYPTOPP_DIR}/osrng.cpp"
	"${CRYPTOPP_DIR}/panama.cpp"
	"${CRYPTOPP_DIR}/pch.cpp"
	"${CRYPTOPP_DIR}/pkcspad.cpp"
	"${CRYPTOPP_DIR}/polynomi.cpp"
	"${CRYPTOPP_DIR}/pssr.cpp"
	"${CRYPTOPP_DIR}/pubkey.cpp"
	"${CRYPTOPP_DIR}/queue.cpp"
	"${CRYPTOPP_DIR}/rabin.cpp"
	"${CRYPTOPP_DIR}/randpool.cpp"
	"${CRYPTOPP_DIR}/rc2.cpp"
	"${CRYPTOPP_DIR}/rc5.cpp"
	"${CRYPTOPP_DIR}/rc6.cpp"
	"${CRYPTOPP_DIR}/rdtables.cpp"
	"${CRYPTOPP_DIR}/rijndael.cpp"
	"${CRYPTOPP_DIR}/ripemd.cpp"
	"${CRYPTOPP_DIR}/rng.cpp"
	"${CRYPTOPP_DIR}/rsa.cpp"
	"${CRYPTOPP_DIR}/rw.cpp"
	"${CRYPTOPP_DIR}/safer.cpp"
	"${CRYPTOPP_DIR}/salsa.cpp"
	"${CRYPTOPP_DIR}/seal.cpp"
	"${CRYPTOPP_DIR}/seed.cpp"
	"${CRYPTOPP_DIR}/serpent.cpp"
	"${CRYPTOPP_DIR}/sha.cpp"
	"${CRYPTOPP_DIR}/shacal2.cpp"
	"${CRYPTOPP_DIR}/shark.cpp"
	"${CRYPTOPP_DIR}/sharkbox.cpp"
	"${CRYPTOPP_DIR}/simple.cpp"
	"${CRYPTOPP_DIR}/skipjack.cpp"
	"${CRYPTOPP_DIR}/sosemanuk.cpp"
	"${CRYPTOPP_DIR}/square.cpp"
	"${CRYPTOPP_DIR}/squaretb.cpp"
	"${CRYPTOPP_DIR}/strciphr.cpp"
	"${CRYPTOPP_DIR}/tea.cpp"
	"${CRYPTOPP_DIR}/tftables.cpp"
	"${CRYPTOPP_DIR}/tiger.cpp"
	"${CRYPTOPP_DIR}/tigertab.cpp"
	"${CRYPTOPP_DIR}/ttmac.cpp"
	"${CRYPTOPP_DIR}/twofish.cpp"
	"${CRYPTOPP_DIR}/vmac.cpp"
	"${CRYPTOPP_DIR}/wake.cpp"
	"${CRYPTOPP_DIR}/whrlpool.cpp"
	"${CRYPTOPP_DIR}/xtr.cpp"
	"${CRYPTOPP_DIR}/xtrcrypt.cpp"
	"${CRYPTOPP_DIR}/zdeflate.cpp"
	"${CRYPTOPP_DIR}/zinflate.cpp"
	"${CRYPTOPP_DIR}/zlib.cpp"
	"${CRYPTOPP_DIR}/sse_simd.cpp"
	"$<$<AND:$<NOT:${CLANG_CL}>,${IS_WINDOWS}>:${CRYPTOPP_DIR}/x64masm.asm>"
	"$<$<AND:$<NOT:${CLANG_CL}>,${IS_WINDOWS}>:${CRYPTOPP_DIR}/x64dll.asm>"
)

set(
	CRYPTOPP_HEADER_FILES
)

if (NOT ${IS_LINUX})
	list(APPEND CRYPTOPP_SOURCE_FILES ${CRYPTOPP_HEADER_FILES})
endif()

add_library(
	cryptopp STATIC
	${CRYPTOPP_SOURCE_FILES}
)

target_precompile_headers(
	cryptopp PRIVATE
	"${CRYPTOPP_DIR}/pch.h"
)

target_include_directories(
	cryptopp PUBLIC
	"${CRYPTOPP_DIR}/../"
)

set_source_files_properties(
	"${CRYPTOPP_DIR}/dll.cpp"
	"${CRYPTOPP_DIR}/iterhash.cpp"
	PROPERTIES SKIP_PRECOMPILE_HEADERS ON
)

set_property(TARGET cryptopp PROPERTY FOLDER "${SLN_FOLDER_PREFIX}Libs")

target_include_directories(
	cryptopp PUBLIC

	"${CRYPTOPP_DIR}"
)

target_compile_definitions(
	cryptopp PRIVATE

	CRYPTOPP_DISABLE_AVX
	CRYPTOPP_DISABLE_AVX2
	CRYPTOPP_DISABLE_AESNI
	CRYPTOPP_DISABLE_SSSE3
)

