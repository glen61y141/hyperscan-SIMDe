/* %ecx */
#define bit_SSE3 (1 << 0)
#define bit_SSSE3 (1 << 9)
#define bit_SSE4_1 (1 << 19)
// #define bit_SSE4_2 (1 << 20)

#define __cpuid_count(level, count, eax, ebx, ecx, edx) {\
  eax = 0;\
  ebx = 0;\
  ecx = 0;\
  edx = 0;\
  if(level == 1 && count == 0) {\
    ecx = bit_SSE3 | bit_SSSE3 | bit_SSE4_1;\
  }\
}
