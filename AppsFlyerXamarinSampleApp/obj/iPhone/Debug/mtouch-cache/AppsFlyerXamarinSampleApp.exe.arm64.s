.subsections_via_symbols
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,17
	.byte 1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0
	.byte 11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73
	.byte 19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13
	.byte 0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13
	.byte 15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0
	.byte 0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 8,1
	.asciz "Mono AOT Compiler 4.0.1 (mono-4.0.0-branch/ed1d3ec Thu May 21 21:49:41 EDT 2015)"
	.asciz "AppsFlyerXamarinSampleApp.exe"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,8,5
	.asciz "intptr"
LDIE_U:

	.byte 4,8,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,8,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,8,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,8,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,120,30
	.align 3
Lcie0_end:
.text
	.align 3
methods:
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_Application__ctor
AppsFlyerXamarinSampleApp_Application__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #32]
.word 0xf9000fb0
.word 0xf9400fb0
.word 0xf9400210
.word 0xf90013b0
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xf9400231
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xf9400231
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xf9400231
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_0:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_Application_Main_string__
AppsFlyerXamarinSampleApp_Application_Main_string__:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #40]
.word 0xf9000fb0
.word 0xf9400fb0
.word 0xf9400210
.word 0xf90013b0
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b0
.word 0xf9400210
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xf9400231
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xf9400231
.word 0xf9400ba0
.word 0xf9001ba0
.word 0xd2800000

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf9408631
.word 0xb4000051
.word 0xf9400231
.word 0xf9401ba0
.word 0xf9401fa2
.word 0xd2800001
bl _p_1
.word 0xf9400fb1
.word 0xf940a631
.word 0xb4000051
.word 0xf9400231
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xf9400231
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_1:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_AppDelegate__ctor
AppsFlyerXamarinSampleApp_AppDelegate__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #56]
.word 0xf9000fb0
.word 0xf9400fb0
.word 0xf9400210
.word 0xf90013b0
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xf9400231
.word 0xf9400ba0
bl _p_2
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xf9400231
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xf9400231
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_AppDelegate_get_Window
AppsFlyerXamarinSampleApp_AppDelegate_get_Window:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #64]
.word 0xf90013b0
.word 0xf94013b0
.word 0xf9400210
.word 0xf90017b0
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xf9400231
.word 0xf94017b0
.word 0xf9400210
.word 0xf94013b1
.word 0xf9405231
.word 0xb4000051
.word 0xf9400231
.word 0xf9400fa0
.word 0xf9401400
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xf9400231
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_AppDelegate_set_Window_UIKit_UIWindow
AppsFlyerXamarinSampleApp_AppDelegate_set_Window_UIKit_UIWindow:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #72]
.word 0xf90013b0
.word 0xf94013b0
.word 0xf9400210
.word 0xf90017b0
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xf9400231
.word 0xf94017b0
.word 0xf9400210
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xf9400231
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409631
.word 0xb4000051
.word 0xf9400231
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary
AppsFlyerXamarinSampleApp_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary:
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xf90017a1
.word 0xf9001ba2

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #80]
.word 0xf9001fb0
.word 0xf9401fb0
.word 0xf9400210
.word 0xf90023b0
.word 0xd280001a
.word 0xd2800019
.word 0xf9401fb1
.word 0xf9404631
.word 0xb4000051
.word 0xf9400231
.word 0xf94023b0
.word 0xf9400210
.word 0xf9401fb1
.word 0xf9405e31
.word 0xb4000051
.word 0xf9400231
.word 0xf9401fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xf9400231
bl _p_3
.word 0xf9401fb1
.word 0xf9408231
.word 0xb4000051
.word 0xf9400231
bl _p_4
.word 0xf9004fa0
.word 0xf9401fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xf9400231
.word 0xf9404fa0
.word 0xf9004ba0
.word 0xaa0003fa
.word 0xf9401fb1
.word 0xf940b631
.word 0xb4000051
.word 0xf9400231
.word 0xf9404ba0
.word 0xf90047a0
.word 0xd2800020
.word 0xf9401fb1
.word 0xf940d231
.word 0xb4000051
.word 0xf9400231
.word 0xf94047a2
.word 0xaa0203e0
.word 0xd2800021
.word 0xf9400042
.word 0xf940ec50
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf940fa31
.word 0xb4000051
.word 0xf9400231
.word 0xaa1a03e0
.word 0xf90043a0

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x0, [x16, #88]
.word 0xf9003fa0
.word 0xf9401fb1
.word 0xf9412231
.word 0xb4000051
.word 0xf9400231
.word 0xf9403fa1
.word 0xf94043a2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9411c50
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9414a31
.word 0xb4000051
.word 0xf9400231
.word 0xaa1a03e0
.word 0xf9003ba0

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x0, [x16, #96]
.word 0xf90037a0
.word 0xf9401fb1
.word 0xf9417231
.word 0xb4000051
.word 0xf9400231
.word 0xf94037a1
.word 0xf9403ba2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9412450
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9419a31
.word 0xb4000051
.word 0xf9400231
.word 0xaa1a03e0
.word 0xf90033a0
.word 0xf9401fb1
.word 0xf941b231
.word 0xb4000051
.word 0xf9400231
.word 0xf94033a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9413830
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf941d631
.word 0xb4000051
.word 0xf9400231
bl _p_4
.word 0xf9002fa0
.word 0xf9401fb1
.word 0xf941ee31
.word 0xb4000051
.word 0xf9400231

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x0, [x16, #104]
bl _p_5
.word 0xf9002ba0
bl _p_6
.word 0xf9401fb1
.word 0xf9421631
.word 0xb4000051
.word 0xf9400231
.word 0xf9402ba1
.word 0xf9402fa2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9414050
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9423e31
.word 0xb4000051
.word 0xf9400231
.word 0xd2800039
.word 0xf9401fb1
.word 0xf9425231
.word 0xb4000051
.word 0xf9400231
.word 0xd2800020
.word 0xd2800020
.word 0xf9401fb1
.word 0xf9426a31
.word 0xb4000051
.word 0xf9400231
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_5:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_AppDelegate_OnResignActivation_UIKit_UIApplication
AppsFlyerXamarinSampleApp_AppDelegate_OnResignActivation_UIKit_UIApplication:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #112]
.word 0xf90013b0
.word 0xf94013b0
.word 0xf9400210
.word 0xf90017b0
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xf9400231
.word 0xf94017b0
.word 0xf9400210
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf9406e31
.word 0xb4000051
.word 0xf9400231
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_6:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_AppDelegate_DidEnterBackground_UIKit_UIApplication
AppsFlyerXamarinSampleApp_AppDelegate_DidEnterBackground_UIKit_UIApplication:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #120]
.word 0xf90013b0
.word 0xf94013b0
.word 0xf9400210
.word 0xf90017b0
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xf9400231
.word 0xf94017b0
.word 0xf9400210
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf9406e31
.word 0xb4000051
.word 0xf9400231
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_7:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_AppDelegate_WillEnterForeground_UIKit_UIApplication
AppsFlyerXamarinSampleApp_AppDelegate_WillEnterForeground_UIKit_UIApplication:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #128]
.word 0xf90013b0
.word 0xf94013b0
.word 0xf9400210
.word 0xf90017b0
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xf9400231
.word 0xf94017b0
.word 0xf9400210
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf9406e31
.word 0xb4000051
.word 0xf9400231
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_8:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_AppDelegate_OnActivated_UIKit_UIApplication
AppsFlyerXamarinSampleApp_AppDelegate_OnActivated_UIKit_UIApplication:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #136]
.word 0xf90013b0
.word 0xf94013b0
.word 0xf9400210
.word 0xf90017b0
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xf9400231
.word 0xf94017b0
.word 0xf9400210
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf9406e31
.word 0xb4000051
.word 0xf9400231
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_9:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_AppDelegate_WillTerminate_UIKit_UIApplication
AppsFlyerXamarinSampleApp_AppDelegate_WillTerminate_UIKit_UIApplication:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #144]
.word 0xf90013b0
.word 0xf94013b0
.word 0xf9400210
.word 0xf90017b0
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xf9400231
.word 0xf94017b0
.word 0xf9400210
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf9406e31
.word 0xb4000051
.word 0xf9400231
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_a:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_ViewController__ctor_intptr
AppsFlyerXamarinSampleApp_ViewController__ctor_intptr:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #152]
.word 0xf90013b0
.word 0xf94013b0
.word 0xf9400210
.word 0xf90017b0
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xf9400231
.word 0xf94017b0
.word 0xf9400210
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xf9400231
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_7
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf9407a31
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xf9400231
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_b:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_ViewController_ViewDidLoad
AppsFlyerXamarinSampleApp_ViewController_ViewDidLoad:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #160]
.word 0xf9000fb0
.word 0xf9400fb0
.word 0xf9400210
.word 0xf90013b0
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b0
.word 0xf9400210
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xf9400231
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xf9400231
.word 0xf9400ba0
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xf9400231
.word 0xf9401ba0
bl _p_8
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xf9400231
.word 0xf9400fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xf9400231
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_c:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_ViewController_DidReceiveMemoryWarning
AppsFlyerXamarinSampleApp_ViewController_DidReceiveMemoryWarning:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #168]
.word 0xf9000fb0
.word 0xf9400fb0
.word 0xf9400210
.word 0xf90013b0
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b0
.word 0xf9400210
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xf9400231
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xf9400231
.word 0xf9400ba0
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xf9400231
.word 0xf9401ba0
bl _p_9
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xf9400231
.word 0xf9400fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xf9400231
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_d:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_ViewController_UIButton3_TouchUpInside_UIKit_UIButton
AppsFlyerXamarinSampleApp_ViewController_UIButton3_TouchUpInside_UIKit_UIButton:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #176]
.word 0xf90013b0
.word 0xf94013b0
.word 0xf9400210
.word 0xf90017b0
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xf9400231
.word 0xf94017b0
.word 0xf9400210
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xf9400231
bl _p_4
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xf9400231

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x0, [x16, #184]
.word 0xf9001ba0

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x0, [x16, #192]
.word 0xf9001fa0
.word 0xf94013b1
.word 0xf940a631
.word 0xb4000051
.word 0xf9400231
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xf94023a3
.word 0xaa0303e0
.word 0xf9400063
.word 0xf9413470
.word 0xd63f0200
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xf9400231
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_e:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_ViewController_UIButton54_TouchUpInside_UIKit_UIButton
AppsFlyerXamarinSampleApp_ViewController_UIButton54_TouchUpInside_UIKit_UIButton:
.word 0xa9b37bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023ba
.word 0xf90027a0
.word 0xf9002ba1

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #200]
.word 0xf9002fb0
.word 0xf9402fb0
.word 0xf9400210
.word 0xf90033b0
.word 0xd280001a
.word 0xf9402fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xf9400231
.word 0xf94033b0
.word 0xf9400210
.word 0xf9402fb1
.word 0xf9406231
.word 0xb4000051
.word 0xf9400231
.word 0xf9402fb1
.word 0xf9407231
.word 0xb4000051
.word 0xf9400231

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xf9004ba0

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x0, [x16, #216]
.word 0xf9004fa0
.word 0xd28000c0

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x0, [x16, #224]
.word 0xd28000c1
bl _p_10
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xf90067a0
.word 0xaa1903e0
.word 0xd2800000

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x2, [x16, #232]
.word 0xaa1903e0
.word 0xd2800001
.word 0xf9400323
.word 0xf9404070
.word 0xd63f0200
.word 0xf94067a0
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xf90063a0
.word 0xaa1803e0
.word 0xd2800020

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x2, [x16, #240]
.word 0xaa1803e0
.word 0xd2800021
.word 0xf9400303
.word 0xf9404070
.word 0xd63f0200
.word 0xf94063a0
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xf9005fa0
.word 0xaa1703e0
.word 0xd2800040

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x2, [x16, #248]
.word 0xaa1703e0
.word 0xd2800041
.word 0xf94002e3
.word 0xf9404070
.word 0xd63f0200
.word 0xf9405fa0
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xf9005ba0
.word 0xaa1603e0
.word 0xd2800060

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x2, [x16, #256]
.word 0xaa1603e0
.word 0xd2800061
.word 0xf94002c3
.word 0xf9404070
.word 0xd63f0200
.word 0xf9405ba0
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xf90057a0
.word 0xaa1503e0
.word 0xd2800080

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x2, [x16, #264]
.word 0xaa1503e0
.word 0xd2800081
.word 0xf94002a3
.word 0xf9404070
.word 0xd63f0200
.word 0xf94057a0
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xf90053a0
.word 0xaa1403e0
.word 0xd28000a0

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x2, [x16, #272]
.word 0xaa1403e0
.word 0xd28000a1
.word 0xf9400283
.word 0xf9404070
.word 0xd63f0200
.word 0xf9402fb1
.word 0xf9420631
.word 0xb4000051
.word 0xf9400231

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x0, [x16, #280]
bl _p_5
.word 0xf9404ba1
.word 0xf9404fa2
.word 0xf94053a3
.word 0xf90047a0
bl _p_11
.word 0xf9402fb1
.word 0xf9423a31
.word 0xb4000051
.word 0xf9400231
.word 0xf94047a0
.word 0xaa0003fa
.word 0xf9402fb1
.word 0xf9425231
.word 0xb4000051
.word 0xf9400231
bl _p_4
.word 0xf90043a0
.word 0xf9402fb1
.word 0xf9426a31
.word 0xb4000051
.word 0xf9400231

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x0, [x16, #288]
.word 0xf9003ba0
.word 0xaa1a03e0
.word 0xf9003fa0
.word 0xf9402fb1
.word 0xf9429231
.word 0xb4000051
.word 0xf9400231
.word 0xf9403ba1
.word 0xf9403fa2
.word 0xf94043a3
.word 0xaa0303e0
.word 0xf9400063
.word 0xf9413070
.word 0xd63f0200
.word 0xf9402fb1
.word 0xf942be31
.word 0xb4000051
.word 0xf9400231
.word 0xf9402fb1
.word 0xf942ce31
.word 0xb4000051
.word 0xf9400231
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0xf94023ba
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_f:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_ViewController_ReleaseDesignerOutlets
AppsFlyerXamarinSampleApp_ViewController_ReleaseDesignerOutlets:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #296]
.word 0xf9000fb0
.word 0xf9400fb0
.word 0xf9400210
.word 0xf90013b0
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b0
.word 0xf9400210
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xf9400231
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xf9400231
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xf9400231
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_10:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate__ctor
AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #304]
.word 0xf9000fb0
.word 0xf9400fb0
.word 0xf9400210
.word 0xf90013b0
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xf9400231
.word 0xf9400ba0
bl _p_12
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xf9400231
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xf9400231
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_11:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttribution_Foundation_NSDictionary
AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttribution_Foundation_NSDictionary:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #312]
.word 0xf90013b0
.word 0xf94013b0
.word 0xf9400210
.word 0xf90017b0
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xf9400231
.word 0xf94017b0
.word 0xf9400210
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf9406e31
.word 0xb4000051
.word 0xf9400231
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_12:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttributionFailure_Foundation_NSError
AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttributionFailure_Foundation_NSError:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #320]
.word 0xf90013b0
.word 0xf94013b0
.word 0xf9400210
.word 0xf90017b0
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xf9400231
.word 0xf94017b0
.word 0xf9400210
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf9406e31
.word 0xb4000051
.word 0xf9400231
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_13:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataReceived_Foundation_NSDictionary
AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataReceived_Foundation_NSDictionary:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #328]
.word 0xf90013b0
.word 0xf94013b0
.word 0xf9400210
.word 0xf90017b0
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xf9400231
.word 0xf94017b0
.word 0xf9400210
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xf9400231

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x0, [x16, #336]
.word 0xf9001fa0
.word 0xf9400fa0
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xf9400231
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9409830
.word 0xd63f0200
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xf9400231
.word 0xf9401fa0
.word 0xf94023a1
bl _p_13
.word 0xf9001ba0
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xf9400231
.word 0xf9401ba0
bl _p_14
.word 0xf94013b1
.word 0xf940e631
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf940f631
.word 0xb4000051
.word 0xf9400231
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_14:
.text
	.align 4
	.no_dead_strip AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataRequestFailure_Foundation_NSError
AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataRequestFailure_Foundation_NSError:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #344]
.word 0xf90013b0
.word 0xf94013b0
.word 0xf9400210
.word 0xf90017b0
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xf9400231
.word 0xf94017b0
.word 0xf9400210
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xf9400231
.word 0xf94013b1
.word 0xf9406e31
.word 0xb4000051
.word 0xf9400231
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_15:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl AppsFlyerXamarinSampleApp_Application__ctor
bl AppsFlyerXamarinSampleApp_Application_Main_string__
bl AppsFlyerXamarinSampleApp_AppDelegate__ctor
bl AppsFlyerXamarinSampleApp_AppDelegate_get_Window
bl AppsFlyerXamarinSampleApp_AppDelegate_set_Window_UIKit_UIWindow
bl AppsFlyerXamarinSampleApp_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary
bl AppsFlyerXamarinSampleApp_AppDelegate_OnResignActivation_UIKit_UIApplication
bl AppsFlyerXamarinSampleApp_AppDelegate_DidEnterBackground_UIKit_UIApplication
bl AppsFlyerXamarinSampleApp_AppDelegate_WillEnterForeground_UIKit_UIApplication
bl AppsFlyerXamarinSampleApp_AppDelegate_OnActivated_UIKit_UIApplication
bl AppsFlyerXamarinSampleApp_AppDelegate_WillTerminate_UIKit_UIApplication
bl AppsFlyerXamarinSampleApp_ViewController__ctor_intptr
bl AppsFlyerXamarinSampleApp_ViewController_ViewDidLoad
bl AppsFlyerXamarinSampleApp_ViewController_DidReceiveMemoryWarning
bl AppsFlyerXamarinSampleApp_ViewController_UIButton3_TouchUpInside_UIKit_UIButton
bl AppsFlyerXamarinSampleApp_ViewController_UIButton54_TouchUpInside_UIKit_UIButton
bl AppsFlyerXamarinSampleApp_ViewController_ReleaseDesignerOutlets
bl AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate__ctor
bl AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttribution_Foundation_NSDictionary
bl AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttributionFailure_Foundation_NSError
bl AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataReceived_Foundation_NSDictionary
bl AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataRequestFailure_Foundation_NSError
bl method_addresses
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:

	.long 0
.section __TEXT, __const
	.align 3
method_info_offsets:

	.long 23,10,3,2
	.short 0, 10, 20
	.byte 1,3,4,3,3,3,6,3,3,3,35,3,3,3,3,5,14,3,3,3,78,4,255,255,255,255,174
.section __TEXT, __const
	.align 3
extra_method_table:

	.long 11,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0
.section __TEXT, __const
	.align 3
extra_method_info_offsets:

	.long 0
.section __TEXT, __const
	.align 3
class_name_table:

	.short 11, 1, 0, 0, 0, 0, 0, 5
	.short 0, 0, 0, 0, 0, 0, 0, 2
	.short 0, 3, 11, 0, 0, 0, 0, 4
	.short 0
.section __TEXT, __const
	.align 3
got_info_offsets:

	.long 44,10,5,2
	.short 0, 10, 20, 30, 41
	.byte 85,2,1,1,1,1,1,3,1,1,98,1,3,3,3,1,1,1,1,1,114,1,1,1,3,3,1,4,4,7,128,143
	.byte 4,4,4,4,4,4,4,1,1,128,174,1,1,4
.section __TEXT, __const
	.align 3
ex_info_offsets:

	.long 23,10,3,2
	.short 0, 12, 24
	.byte 129,35,31,66,35,41,55,128,236,44,44,44,131,163,44,58,58,58,82,128,254,38,35,44,134,110,91,255,255,255,249,55
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 13,12,31,0,68,14,48,157,6,158,5,68,13,29,13,12,31,0,68,14,64,157,8,158,7,68,13,29,16,12,31,0
	.byte 68,14,48,157,6,158,5,68,13,29,68,153,4,19,12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,153,18,154
	.byte 17,13,12,31,0,68,14,80,157,10,158,9,68,13,29,32,12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,148
	.byte 24,149,23,68,150,22,151,21,68,152,20,153,19,68,154,18
.section __TEXT, __const
	.align 3
class_info_offsets:

	.long 5,10,1,2
	.short 0
	.byte 134,245,7,23,128,195,129,5

.text
	.align 4
plt:
_mono_aot_AppsFlyerXamarinSampleApp_plt:
	.no_dead_strip plt_UIKit_UIApplication_Main_string___string_string
plt_UIKit_UIApplication_Main_string___string_string:
_p_1:
adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #360]
br x16
.word 181
	.no_dead_strip plt_UIKit_UIApplicationDelegate__ctor
plt_UIKit_UIApplicationDelegate__ctor:
_p_2:
adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #368]
br x16
.word 186
	.no_dead_strip plt_Xamarin_Calabash_Start
plt_Xamarin_Calabash_Start:
_p_3:
adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #376]
br x16
.word 191
	.no_dead_strip plt_AppsFlyerXamarinBinding_AppsFlyerTracker_SharedTracker
plt_AppsFlyerXamarinBinding_AppsFlyerTracker_SharedTracker:
_p_4:
adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #384]
br x16
.word 196
	.no_dead_strip plt__jit_icall_mono_object_new_specific
plt__jit_icall_mono_object_new_specific:
_p_5:
adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #392]
br x16
.word 201
	.no_dead_strip plt_AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate__ctor
plt_AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate__ctor:
_p_6:
adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #400]
br x16
.word 228
	.no_dead_strip plt_UIKit_UIViewController__ctor_intptr
plt_UIKit_UIViewController__ctor_intptr:
_p_7:
adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #408]
br x16
.word 230
	.no_dead_strip plt_UIKit_UIViewController_ViewDidLoad
plt_UIKit_UIViewController_ViewDidLoad:
_p_8:
adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #416]
br x16
.word 235
	.no_dead_strip plt_UIKit_UIViewController_DidReceiveMemoryWarning
plt_UIKit_UIViewController_DidReceiveMemoryWarning:
_p_9:
adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #424]
br x16
.word 240
	.no_dead_strip plt__jit_icall_mono_array_new_specific
plt__jit_icall_mono_array_new_specific:
_p_10:
adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #432]
br x16
.word 245
	.no_dead_strip plt_Foundation_NSDictionary__ctor_object_object_object__
plt_Foundation_NSDictionary__ctor_object_object_object__:
_p_11:
adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #440]
br x16
.word 271
	.no_dead_strip plt_AppsFlyerXamarinBinding_AppsFlyerTrackerDelegate__ctor
plt_AppsFlyerXamarinBinding_AppsFlyerTrackerDelegate__ctor:
_p_12:
adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #448]
br x16
.word 276
	.no_dead_strip plt_string_Concat_string_string
plt_string_Concat_string_string:
_p_13:
adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #456]
br x16
.word 281
	.no_dead_strip plt_System_Console_WriteLine_string
plt_System_Console_WriteLine_string:
_p_14:
adrp x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGE+0
add x16, x16, _mono_aot_AppsFlyerXamarinSampleApp_got@PAGEOFF
ldr x16, [x16, #464]
br x16
.word 286
plt_end:
.section __TEXT, __const
	.align 3
image_table:

	.long 5
	.asciz "AppsFlyerXamarinSampleApp"
	.asciz "A38DFCD0-37AE-4199-9F04-2FF6AF05C175"
	.asciz ""
	.asciz ""
	.align 3

	.long 0,0,0,0,0
	.asciz "mscorlib"
	.asciz "5ABA7FA6-2064-48C8-9159-9B9F8936BC69"
	.asciz ""
	.asciz "7cec85d7bea7798e"
	.align 3

	.long 1,2,0,5,0
	.asciz "Xamarin.iOS"
	.asciz "11808BA3-8313-418B-9BB3-AD93B0A5A557"
	.asciz ""
	.asciz "84e04ff9cfb79065"
	.align 3

	.long 1,0,0,0,0
	.asciz "Calabash"
	.asciz "BEED8D80-0393-477B-937D-CE60C96AC463"
	.asciz ""
	.asciz ""
	.align 3

	.long 0,13,0,0,0
	.asciz "AppsFlyerXamarinBinding"
	.asciz "D40C5499-970A-4B89-834F-2C99316C96AE"
	.asciz ""
	.asciz ""
	.align 3

	.long 0,1,0,5636,22662
.data
	.align 3
_mono_aot_AppsFlyerXamarinSampleApp_got:
	.space 472
got_end:
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "A38DFCD0-37AE-4199-9F04-2FF6AF05C175"
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "AppsFlyerXamarinSampleApp"
.data
	.align 3
_mono_aot_file_info:

	.long 111,0
	.align 3
	.quad _mono_aot_AppsFlyerXamarinSampleApp_got
	.align 3
	.quad 0
	.align 3
	.quad methods
	.align 3
	.quad jit_code_start
	.align 3
	.quad jit_code_end
	.align 3
	.quad 0
	.align 3
	.quad blob
	.align 3
	.quad class_name_table
	.align 3
	.quad class_info_offsets
	.align 3
	.quad method_info_offsets
	.align 3
	.quad ex_info_offsets
	.align 3
	.quad method_addresses
	.align 3
	.quad extra_method_info_offsets
	.align 3
	.quad extra_method_table
	.align 3
	.quad got_info_offsets
	.align 3
	.quad 0
	.align 3
	.quad unwind_info
	.align 3
	.quad mem_end
	.align 3
	.quad image_table
	.align 3
	.quad plt
	.align 3
	.quad plt_end
	.align 3
	.quad assembly_guid
	.align 3
	.quad runtime_version
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad globals
	.align 3
	.quad assembly_name
	.align 3
	.quad unbox_trampolines
	.align 3
	.quad unbox_trampolines_end
	.align 3
	.quad unbox_trampoline_addresses

	.long 44,472,15,23,6,387000831,0,2458
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,128,8,8,15
	.long 0,0,0,0,0
	.globl _mono_aot_module_AppsFlyerXamarinSampleApp_info
	.align 3
_mono_aot_module_AppsFlyerXamarinSampleApp_info:
	.align 3
	.quad _mono_aot_file_info
.section __TEXT, __const
	.align 3
blob:

	.byte 0,0,1,4,0,2,5,6,0,1,7,0,1,8,0,1,9,0,4,10,11,12,13,0,1,14,0,1,15,0,1,16
	.byte 0,1,17,0,1,18,0,1,19,0,1,20,0,1,21,0,3,22,23,24,0,12,25,26,27,28,29,30,31,32,33,34
	.byte 35,36,0,1,37,0,1,38,0,1,39,0,1,40,0,2,41,42,0,1,43,12,0,40,43,48,41,41,17,0,1,41
	.byte 41,41,41,17,0,25,17,0,71,14,1,5,41,41,41,41,41,41,41,41,41,17,0,91,17,0,121,41,17,0,128,167
	.byte 17,0,128,195,14,6,1,2,130,92,1,17,0,128,209,17,0,128,241,17,0,128,255,17,0,129,23,17,0,129,31,17
	.byte 0,129,61,14,2,4,2,17,0,129,101,41,41,41,41,41,17,0,129,131,41,3,194,0,3,245,3,194,0,3,251,3
	.byte 195,0,0,1,3,196,0,0,38,7,24,109,111,110,111,95,111,98,106,101,99,116,95,110,101,119,95,115,112,101,99,105
	.byte 102,105,99,0,3,18,3,194,0,4,56,3,194,0,4,64,3,194,0,4,58,7,23,109,111,110,111,95,97,114,114,97
	.byte 121,95,110,101,119,95,115,112,101,99,105,102,105,99,0,3,194,0,0,23,3,196,0,0,22,3,193,0,13,221,3,193
	.byte 0,11,250,10,0,1,12,1,80,0,0,14,40,1,0,0,32,2,0,14,92,60,104,208,0,0,29,16,0,2,1,60
	.byte 6,32,10,14,1,27,1,80,0,0,2,48,0,1,2,2,32,0,1,3,14,88,1,1,4,10,64,0,0,0,32,2
	.byte 0,34,128,188,56,128,200,208,0,0,29,16,0,11,0,56,1,24,1,24,1,4,5,16,0,24,0,0,0,4,0,0
	.byte 5,4,1,32,10,0,1,12,1,80,0,0,14,48,1,0,0,32,2,0,18,96,60,108,208,0,0,29,16,0,4,1
	.byte 60,0,0,0,4,6,32,10,28,1,12,1,96,0,0,2,48,0,0,0,64,2,0,24,120,64,128,136,208,0,0,29
	.byte 24,25,0,6,0,64,1,28,5,4,6,4,1,4,1,16,10,0,1,13,1,88,0,0,2,48,0,0,0,144,1,2
	.byte 0,37,128,156,60,128,168,208,0,0,29,24,208,0,0,29,16,0,10,0,60,2,32,0,4,0,4,0,4,0,12,0
	.byte 12,0,4,0,8,6,16,10,45,1,92,1,120,0,0,2,48,0,1,2,2,32,0,1,3,10,40,0,1,4,10,48
	.byte 1,1,5,2,56,0,1,6,4,56,1,1,7,10,80,0,1,8,12,80,1,1,9,10,80,0,1,10,12,80,1,1
	.byte 11,10,80,0,1,12,2,48,1,1,13,10,72,0,1,14,10,48,1,1,15,10,80,1,1,16,10,80,0,1,17,14
	.byte 40,0,0,0,48,2,0,128,138,130,112,76,130,128,208,0,0,29,40,208,0,0,29,48,208,0,0,29,32,26,25,0
	.byte 57,0,76,1,24,0,16,5,4,0,16,0,8,5,24,1,4,0,24,1,0,1,4,0,20,0,4,0,4,0,4,5
	.byte 8,0,16,1,8,5,16,0,24,0,4,0,0,0,4,5,8,0,16,1,8,5,16,0,24,0,4,0,0,0,4,5
	.byte 8,0,16,1,8,0,20,0,4,0,4,5,8,0,16,5,8,0,16,0,12,0,0,0,4,0,4,0,0,5,4,0
	.byte 24,0,4,0,0,0,4,5,8,0,16,7,4,0,16,1,4,1,20,10,0,1,17,1,88,0,0,2,48,0,1,2
	.byte 2,32,0,0,0,32,2,0,22,116,60,128,128,208,0,0,29,24,208,0,0,29,16,0,3,0,60,1,24,1,32,10
	.byte 0,1,17,1,88,0,0,2,48,0,1,2,2,32,0,0,0,32,2,0,22,116,60,128,128,208,0,0,29,24,208,0
	.byte 0,29,16,0,3,0,60,1,24,1,32,10,0,1,17,1,88,0,0,2,48,0,1,2,2,32,0,0,0,32,2,0
	.byte 22,116,60,128,128,208,0,0,29,24,208,0,0,29,16,0,3,0,60,1,24,1,32,10,0,1,17,1,88,0,0,2
	.byte 48,0,1,2,2,32,0,0,0,32,2,0,22,116,60,128,128,208,0,0,29,24,208,0,0,29,16,0,3,0,60,1
	.byte 24,1,32,10,0,1,17,1,88,0,0,2,48,0,1,2,2,32,0,0,0,32,2,0,22,116,60,128,128,208,0,0
	.byte 29,24,208,0,0,29,16,0,3,0,60,1,24,1,32,10,0,1,22,1,88,0,0,2,48,0,1,2,14,56,0,1
	.byte 3,2,32,0,0,0,32,2,0,31,128,144,60,128,156,208,0,0,29,24,208,0,0,29,16,0,7,0,60,2,32,0
	.byte 0,0,0,5,4,1,16,1,32,10,14,1,27,1,80,0,0,2,48,0,1,2,2,32,0,1,3,2,48,1,1,4
	.byte 10,48,0,0,0,32,2,0,26,128,160,56,128,172,208,0,0,29,16,0,7,0,56,1,24,1,24,0,20,0,0,5
	.byte 4,1,32,10,14,1,27,1,80,0,0,2,48,0,1,2,2,32,0,1,3,2,48,1,1,4,10,48,0,0,0,32
	.byte 2,0,26,128,160,56,128,172,208,0,0,29,16,0,7,0,56,1,24,1,24,0,20,0,0,5,4,1,32,10,65,1
	.byte 32,1,88,0,0,2,48,0,1,2,2,32,0,1,3,10,48,1,1,4,20,96,1,1,5,10,88,0,0,0,32,2
	.byte 0,45,128,232,60,128,244,208,0,0,29,24,208,0,0,29,16,0,14,0,60,1,24,0,16,0,8,5,16,5,16,5
	.byte 16,0,28,0,4,0,0,0,0,0,4,5,8,1,32,10,79,1,50,1,128,1,0,0,2,48,0,1,2,2,32,0
	.byte 1,3,128,1,168,6,1,1,4,10,104,1,1,5,2,48,0,1,6,10,48,1,1,7,12,80,1,1,8,10,88,0
	.byte 0,0,32,2,0,128,198,130,212,80,130,240,208,0,0,29,80,208,0,0,29,72,26,0,90,0,80,1,24,0,16,5
	.byte 16,5,16,6,24,0,4,0,8,1,4,1,4,5,12,0,4,0,4,0,0,0,4,1,12,0,4,0,8,1,4,1
	.byte 4,5,12,0,4,0,4,0,0,0,4,1,12,0,4,0,8,1,4,1,4,5,12,0,4,0,4,0,0,0,4,1
	.byte 12,0,4,0,8,1,4,1,4,5,12,0,4,0,4,0,0,0,4,1,12,0,4,0,8,1,4,1,4,5,12,0
	.byte 4,0,4,0,0,0,4,1,12,0,4,0,8,1,4,1,4,5,12,0,4,0,4,0,0,0,4,1,8,0,16,0
	.byte 12,0,0,0,16,0,4,0,0,0,0,0,0,0,0,0,4,5,20,1,4,0,16,0,8,5,16,5,16,1,8,0
	.byte 28,0,4,0,0,0,0,0,4,5,8,1,32,10,0,1,17,1,80,0,0,2,48,0,1,2,2,32,0,0,0,32
	.byte 2,0,16,112,56,124,208,0,0,29,16,0,3,0,56,1,24,1,32,10,0,1,12,1,80,0,0,14,48,1,0,0
	.byte 32,2,0,18,96,60,108,208,0,0,29,16,0,4,1,60,0,0,0,4,6,32,10,0,1,17,1,88,0,0,2,48
	.byte 0,1,2,2,32,0,0,0,32,2,0,22,116,60,128,128,208,0,0,29,24,208,0,0,29,16,0,3,0,60,1,24
	.byte 1,32,10,0,1,17,1,88,0,0,2,48,0,1,2,2,32,0,0,0,32,2,0,22,116,60,128,128,208,0,0,29
	.byte 24,208,0,0,29,16,0,3,0,60,1,24,1,32,10,65,1,37,1,88,0,0,2,48,0,1,2,2,32,0,1,3
	.byte 12,80,1,1,4,10,80,1,1,5,10,64,1,1,6,10,48,0,0,0,32,2,0,49,128,252,60,129,8,208,0,0
	.byte 29,24,208,0,0,29,16,0,16,0,60,1,24,0,16,6,24,0,20,0,4,0,4,0,12,5,24,0,0,0,0,5
	.byte 8,0,20,0,0,5,4,1,32,10,0,1,17,1,88,0,0,2,48,0,1,2,2,32,0,0,0,32,2,0,22,116
	.byte 60,128,128,208,0,0,29,24,208,0,0,29,16,0,3,0,60,1,24,1,32,0,128,144,16,0,0,1,4,128,144,16
	.byte 0,0,1,193,0,13,107,193,0,13,104,193,0,13,103,193,0,13,102,52,128,162,194,0,1,110,48,0,0,8,194,0
	.byte 1,137,194,0,1,134,194,0,1,110,194,0,1,135,194,0,1,136,194,0,1,127,194,0,1,111,194,0,1,143,194,0
	.byte 1,144,194,0,1,147,194,0,1,148,194,0,1,149,194,0,1,145,194,0,1,146,194,0,1,120,194,0,1,150,194,0
	.byte 1,124,194,0,1,121,194,0,1,125,194,0,1,152,194,0,1,156,194,0,1,151,194,0,1,155,194,0,1,153,194,0
	.byte 1,154,194,0,1,157,194,0,1,157,194,0,1,156,194,0,1,155,194,0,1,154,194,0,1,153,194,0,1,152,194,0
	.byte 1,151,194,0,1,150,194,0,1,149,194,0,1,148,194,0,1,147,194,0,1,146,194,0,1,145,194,0,1,144,194,0
	.byte 1,143,194,0,1,142,194,0,1,139,194,0,1,120,5,4,11,9,7,10,6,8,64,128,130,194,0,1,110,40,0,0
	.byte 8,194,0,1,137,194,0,1,134,194,0,1,110,194,0,1,135,194,0,1,136,194,0,1,127,194,0,1,111,194,0,1
	.byte 143,194,0,1,144,194,0,1,147,194,0,1,148,194,0,1,149,194,0,1,145,194,0,1,146,194,0,1,120,194,0,1
	.byte 150,194,0,1,124,194,0,1,121,194,0,1,125,194,0,1,152,194,0,1,156,194,0,1,151,194,0,1,155,194,0,1
	.byte 153,194,0,1,154,194,0,1,157,194,0,1,157,194,0,1,156,194,0,1,155,194,0,1,154,194,0,1,153,194,0,1
	.byte 152,194,0,1,151,194,0,1,150,194,0,1,149,194,0,1,148,194,0,1,147,194,0,1,146,194,0,1,145,194,0,1
	.byte 144,194,0,1,143,194,0,4,57,194,0,4,69,194,0,1,120,194,0,4,59,194,0,4,61,194,0,4,62,194,0,4
	.byte 60,194,0,4,65,194,0,4,66,194,0,4,67,194,0,4,63,194,0,4,68,194,0,4,68,194,0,4,67,194,0,4
	.byte 66,194,0,4,65,13,194,0,4,63,194,0,4,62,194,0,4,61,194,0,4,60,194,0,4,59,14,48,128,130,194,0
	.byte 1,110,40,0,0,8,194,0,1,137,194,0,1,134,194,0,1,110,194,0,1,135,194,0,1,136,194,0,1,127,194,0
	.byte 1,111,194,0,1,143,194,0,1,144,194,0,1,147,194,0,1,148,194,0,1,149,194,0,1,145,194,0,1,146,194,0
	.byte 1,120,194,0,1,150,194,0,1,124,194,0,1,121,194,0,1,125,194,0,1,152,194,0,1,156,194,0,1,151,194,0
	.byte 1,155,194,0,1,153,194,0,1,154,194,0,1,157,194,0,1,157,194,0,1,156,194,0,1,155,194,0,1,154,194,0
	.byte 1,153,194,0,1,152,194,0,1,151,194,0,1,150,194,0,1,149,194,0,1,148,194,0,1,147,194,0,1,146,194,0
	.byte 1,145,194,0,1,144,194,0,1,143,194,0,1,142,194,0,1,139,194,0,1,120,22,21,20,19,115,103,101,110,0
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.data
	.align 3
globals:
	.align 3
	.quad Lglobals_hash

	.long 0,0
.section __DWARF, __debug_info,regular,debug
LTDIE_1:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
	.asciz "System_Object"

LDIFF_SYM3=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM3
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM4=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM5=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_0:

	.byte 5
	.asciz "AppsFlyerXamarinSampleApp_Application"

	.byte 16,16
LDIFF_SYM6=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM6
	.byte 2,35,0,0,7
	.asciz "AppsFlyerXamarinSampleApp_Application"

LDIFF_SYM7=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM7
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM8=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM9=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM9
	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.Application:.ctor"
	.asciz "AppsFlyerXamarinSampleApp_Application__ctor"

	.byte 0,0
	.quad AppsFlyerXamarinSampleApp_Application__ctor
	.quad Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM10=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM11=Lfde0_end - Lfde0_start
	.long LDIFF_SYM11
Lfde0_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_Application__ctor

LDIFF_SYM12=Lme_0 - AppsFlyerXamarinSampleApp_Application__ctor
	.long LDIFF_SYM12
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.Application:Main"
	.asciz "AppsFlyerXamarinSampleApp_Application_Main_string__"

	.byte 1,9
	.quad AppsFlyerXamarinSampleApp_Application_Main_string__
	.quad Lme_1

	.byte 2,118,16,3
	.asciz "args"

LDIFF_SYM13=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM13
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM14=Lfde1_end - Lfde1_start
	.long LDIFF_SYM14
Lfde1_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_Application_Main_string__

LDIFF_SYM15=Lme_1 - AppsFlyerXamarinSampleApp_Application_Main_string__
	.long LDIFF_SYM15
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_5:

	.byte 8
	.asciz "_Flags"

	.byte 1
LDIFF_SYM16=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 9
	.asciz "Disposed"

	.byte 1,9
	.asciz "NativeRef"

	.byte 2,9
	.asciz "IsDirectBinding"

	.byte 4,9
	.asciz "RegisteredToggleRef"

	.byte 8,9
	.asciz "InFinalizerQueue"

	.byte 16,0,7
	.asciz "_Flags"

LDIFF_SYM17=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM17
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM18=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM18
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM19=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM19
LTDIE_4:

	.byte 5
	.asciz "Foundation_NSObject"

	.byte 40,16
LDIFF_SYM20=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM20
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM21=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM21
	.byte 2,35,16,6
	.asciz "class_handle"

LDIFF_SYM22=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM22
	.byte 2,35,24,6
	.asciz "flags"

LDIFF_SYM23=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM23
	.byte 2,35,32,0,7
	.asciz "Foundation_NSObject"

LDIFF_SYM24=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM24
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM25=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM25
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM26=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM26
LTDIE_3:

	.byte 5
	.asciz "UIKit_UIApplicationDelegate"

	.byte 40,16
LDIFF_SYM27=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM27
	.byte 2,35,0,0,7
	.asciz "UIKit_UIApplicationDelegate"

LDIFF_SYM28=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM28
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM29=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM29
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM30=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM30
LTDIE_8:

	.byte 5
	.asciz "UIKit_UIResponder"

	.byte 40,16
LDIFF_SYM31=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM31
	.byte 2,35,0,0,7
	.asciz "UIKit_UIResponder"

LDIFF_SYM32=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM32
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM33=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM33
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM34=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM34
LTDIE_7:

	.byte 5
	.asciz "UIKit_UIView"

	.byte 40,16
LDIFF_SYM35=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM35
	.byte 2,35,0,0,7
	.asciz "UIKit_UIView"

LDIFF_SYM36=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM36
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM37=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM37
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM38=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM38
LTDIE_6:

	.byte 5
	.asciz "UIKit_UIWindow"

	.byte 40,16
LDIFF_SYM39=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM39
	.byte 2,35,0,0,7
	.asciz "UIKit_UIWindow"

LDIFF_SYM40=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM40
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM41=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM41
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM42=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM42
LTDIE_2:

	.byte 5
	.asciz "AppsFlyerXamarinSampleApp_AppDelegate"

	.byte 48,16
LDIFF_SYM43=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM43
	.byte 2,35,0,6
	.asciz "<Window>k__BackingField"

LDIFF_SYM44=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2,35,40,0,7
	.asciz "AppsFlyerXamarinSampleApp_AppDelegate"

LDIFF_SYM45=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM45
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM46=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM46
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM47=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM47
	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppDelegate:.ctor"
	.asciz "AppsFlyerXamarinSampleApp_AppDelegate__ctor"

	.byte 0,0
	.quad AppsFlyerXamarinSampleApp_AppDelegate__ctor
	.quad Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM48=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM48
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM49=Lfde2_end - Lfde2_start
	.long LDIFF_SYM49
Lfde2_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_AppDelegate__ctor

LDIFF_SYM50=Lme_2 - AppsFlyerXamarinSampleApp_AppDelegate__ctor
	.long LDIFF_SYM50
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppDelegate:get_Window"
	.asciz "AppsFlyerXamarinSampleApp_AppDelegate_get_Window"

	.byte 2,16
	.quad AppsFlyerXamarinSampleApp_AppDelegate_get_Window
	.quad Lme_3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM51=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM51
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM52=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM52
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM53=Lfde3_end - Lfde3_start
	.long LDIFF_SYM53
Lfde3_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_AppDelegate_get_Window

LDIFF_SYM54=Lme_3 - AppsFlyerXamarinSampleApp_AppDelegate_get_Window
	.long LDIFF_SYM54
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4
	.align 3
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppDelegate:set_Window"
	.asciz "AppsFlyerXamarinSampleApp_AppDelegate_set_Window_UIKit_UIWindow"

	.byte 2,17
	.quad AppsFlyerXamarinSampleApp_AppDelegate_set_Window_UIKit_UIWindow
	.quad Lme_4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM55=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM55
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM56=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM56
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM57=Lfde4_end - Lfde4_start
	.long LDIFF_SYM57
Lfde4_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_AppDelegate_set_Window_UIKit_UIWindow

LDIFF_SYM58=Lme_4 - AppsFlyerXamarinSampleApp_AppDelegate_set_Window_UIKit_UIWindow
	.long LDIFF_SYM58
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde4_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_9:

	.byte 5
	.asciz "UIKit_UIApplication"

	.byte 40,16
LDIFF_SYM59=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM59
	.byte 2,35,0,0,7
	.asciz "UIKit_UIApplication"

LDIFF_SYM60=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM60
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM61=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM61
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM62=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM62
LTDIE_10:

	.byte 5
	.asciz "Foundation_NSDictionary"

	.byte 40,16
LDIFF_SYM63=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM63
	.byte 2,35,0,0,7
	.asciz "Foundation_NSDictionary"

LDIFF_SYM64=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM64
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM65=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM65
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM66=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM66
LTDIE_11:

	.byte 5
	.asciz "AppsFlyerXamarinBinding_AppsFlyerTracker"

	.byte 48,16
LDIFF_SYM67=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 2,35,0,6
	.asciz "__mt_WeakDelegate_var"

LDIFF_SYM68=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 2,35,40,0,7
	.asciz "AppsFlyerXamarinBinding_AppsFlyerTracker"

LDIFF_SYM69=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM69
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM70=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM70
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM71=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM71
LTDIE_13:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM72=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM72
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM73=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM73
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM74=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM74
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM75=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM75
LTDIE_12:

	.byte 5
	.asciz "System_Boolean"

	.byte 17,16
LDIFF_SYM76=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM76
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM77=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM77
	.byte 2,35,16,0,7
	.asciz "System_Boolean"

LDIFF_SYM78=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM78
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM79=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM79
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM80=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM80
	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppDelegate:FinishedLaunching"
	.asciz "AppsFlyerXamarinSampleApp_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary"

	.byte 2,21
	.quad AppsFlyerXamarinSampleApp_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary
	.quad Lme_5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM81=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM81
	.byte 2,141,32,3
	.asciz "application"

LDIFF_SYM82=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM82
	.byte 2,141,40,3
	.asciz "launchOptions"

LDIFF_SYM83=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM83
	.byte 2,141,48,11
	.asciz "tracker"

LDIFF_SYM84=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM84
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM85=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM85
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM86=Lfde5_end - Lfde5_start
	.long LDIFF_SYM86
Lfde5_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary

LDIFF_SYM87=Lme_5 - AppsFlyerXamarinSampleApp_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary
	.long LDIFF_SYM87
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,153,18,154,17
	.align 3
Lfde5_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppDelegate:OnResignActivation"
	.asciz "AppsFlyerXamarinSampleApp_AppDelegate_OnResignActivation_UIKit_UIApplication"

	.byte 2,43
	.quad AppsFlyerXamarinSampleApp_AppDelegate_OnResignActivation_UIKit_UIApplication
	.quad Lme_6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM88=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM88
	.byte 2,141,16,3
	.asciz "application"

LDIFF_SYM89=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM89
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM90=Lfde6_end - Lfde6_start
	.long LDIFF_SYM90
Lfde6_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_AppDelegate_OnResignActivation_UIKit_UIApplication

LDIFF_SYM91=Lme_6 - AppsFlyerXamarinSampleApp_AppDelegate_OnResignActivation_UIKit_UIApplication
	.long LDIFF_SYM91
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppDelegate:DidEnterBackground"
	.asciz "AppsFlyerXamarinSampleApp_AppDelegate_DidEnterBackground_UIKit_UIApplication"

	.byte 2,51
	.quad AppsFlyerXamarinSampleApp_AppDelegate_DidEnterBackground_UIKit_UIApplication
	.quad Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM92=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM92
	.byte 2,141,16,3
	.asciz "application"

LDIFF_SYM93=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM93
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM94=Lfde7_end - Lfde7_start
	.long LDIFF_SYM94
Lfde7_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_AppDelegate_DidEnterBackground_UIKit_UIApplication

LDIFF_SYM95=Lme_7 - AppsFlyerXamarinSampleApp_AppDelegate_DidEnterBackground_UIKit_UIApplication
	.long LDIFF_SYM95
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppDelegate:WillEnterForeground"
	.asciz "AppsFlyerXamarinSampleApp_AppDelegate_WillEnterForeground_UIKit_UIApplication"

	.byte 2,57
	.quad AppsFlyerXamarinSampleApp_AppDelegate_WillEnterForeground_UIKit_UIApplication
	.quad Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM96=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM96
	.byte 2,141,16,3
	.asciz "application"

LDIFF_SYM97=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM97
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM98=Lfde8_end - Lfde8_start
	.long LDIFF_SYM98
Lfde8_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_AppDelegate_WillEnterForeground_UIKit_UIApplication

LDIFF_SYM99=Lme_8 - AppsFlyerXamarinSampleApp_AppDelegate_WillEnterForeground_UIKit_UIApplication
	.long LDIFF_SYM99
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde8_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppDelegate:OnActivated"
	.asciz "AppsFlyerXamarinSampleApp_AppDelegate_OnActivated_UIKit_UIApplication"

	.byte 2,63
	.quad AppsFlyerXamarinSampleApp_AppDelegate_OnActivated_UIKit_UIApplication
	.quad Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM100=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM100
	.byte 2,141,16,3
	.asciz "application"

LDIFF_SYM101=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM101
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM102=Lfde9_end - Lfde9_start
	.long LDIFF_SYM102
Lfde9_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_AppDelegate_OnActivated_UIKit_UIApplication

LDIFF_SYM103=Lme_9 - AppsFlyerXamarinSampleApp_AppDelegate_OnActivated_UIKit_UIApplication
	.long LDIFF_SYM103
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppDelegate:WillTerminate"
	.asciz "AppsFlyerXamarinSampleApp_AppDelegate_WillTerminate_UIKit_UIApplication"

	.byte 2,69
	.quad AppsFlyerXamarinSampleApp_AppDelegate_WillTerminate_UIKit_UIApplication
	.quad Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM104=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM104
	.byte 2,141,16,3
	.asciz "application"

LDIFF_SYM105=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM105
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM106=Lfde10_end - Lfde10_start
	.long LDIFF_SYM106
Lfde10_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_AppDelegate_WillTerminate_UIKit_UIApplication

LDIFF_SYM107=Lme_a - AppsFlyerXamarinSampleApp_AppDelegate_WillTerminate_UIKit_UIApplication
	.long LDIFF_SYM107
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde10_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_15:

	.byte 5
	.asciz "UIKit_UIViewController"

	.byte 40,16
LDIFF_SYM108=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM108
	.byte 2,35,0,0,7
	.asciz "UIKit_UIViewController"

LDIFF_SYM109=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM109
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM110=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM110
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM111=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM111
LTDIE_14:

	.byte 5
	.asciz "AppsFlyerXamarinSampleApp_ViewController"

	.byte 40,16
LDIFF_SYM112=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM112
	.byte 2,35,0,0,7
	.asciz "AppsFlyerXamarinSampleApp_ViewController"

LDIFF_SYM113=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM113
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM114=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM114
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM115=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM115
	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.ViewController:.ctor"
	.asciz "AppsFlyerXamarinSampleApp_ViewController__ctor_intptr"

	.byte 3,10
	.quad AppsFlyerXamarinSampleApp_ViewController__ctor_intptr
	.quad Lme_b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM116=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM116
	.byte 2,141,16,3
	.asciz "handle"

LDIFF_SYM117=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM117
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM118=Lfde11_end - Lfde11_start
	.long LDIFF_SYM118
Lfde11_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_ViewController__ctor_intptr

LDIFF_SYM119=Lme_b - AppsFlyerXamarinSampleApp_ViewController__ctor_intptr
	.long LDIFF_SYM119
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.ViewController:ViewDidLoad"
	.asciz "AppsFlyerXamarinSampleApp_ViewController_ViewDidLoad"

	.byte 3,15
	.quad AppsFlyerXamarinSampleApp_ViewController_ViewDidLoad
	.quad Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM120=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM120
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM121=Lfde12_end - Lfde12_start
	.long LDIFF_SYM121
Lfde12_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_ViewController_ViewDidLoad

LDIFF_SYM122=Lme_c - AppsFlyerXamarinSampleApp_ViewController_ViewDidLoad
	.long LDIFF_SYM122
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.ViewController:DidReceiveMemoryWarning"
	.asciz "AppsFlyerXamarinSampleApp_ViewController_DidReceiveMemoryWarning"

	.byte 3,21
	.quad AppsFlyerXamarinSampleApp_ViewController_DidReceiveMemoryWarning
	.quad Lme_d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM123=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM123
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM124=Lfde13_end - Lfde13_start
	.long LDIFF_SYM124
Lfde13_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_ViewController_DidReceiveMemoryWarning

LDIFF_SYM125=Lme_d - AppsFlyerXamarinSampleApp_ViewController_DidReceiveMemoryWarning
	.long LDIFF_SYM125
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde13_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_17:

	.byte 5
	.asciz "UIKit_UIControl"

	.byte 40,16
LDIFF_SYM126=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM126
	.byte 2,35,0,0,7
	.asciz "UIKit_UIControl"

LDIFF_SYM127=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM127
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM128=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM128
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM129=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM129
LTDIE_16:

	.byte 5
	.asciz "UIKit_UIButton"

	.byte 40,16
LDIFF_SYM130=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM130
	.byte 2,35,0,0,7
	.asciz "UIKit_UIButton"

LDIFF_SYM131=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM131
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM132=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM132
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM133=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM133
	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.ViewController:UIButton3_TouchUpInside"
	.asciz "AppsFlyerXamarinSampleApp_ViewController_UIButton3_TouchUpInside_UIKit_UIButton"

	.byte 3,27
	.quad AppsFlyerXamarinSampleApp_ViewController_UIButton3_TouchUpInside_UIKit_UIButton
	.quad Lme_e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM134=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM134
	.byte 2,141,16,3
	.asciz "sender"

LDIFF_SYM135=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM136=Lfde14_end - Lfde14_start
	.long LDIFF_SYM136
Lfde14_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_ViewController_UIButton3_TouchUpInside_UIKit_UIButton

LDIFF_SYM137=Lme_e - AppsFlyerXamarinSampleApp_ViewController_UIButton3_TouchUpInside_UIKit_UIButton
	.long LDIFF_SYM137
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.ViewController:UIButton54_TouchUpInside"
	.asciz "AppsFlyerXamarinSampleApp_ViewController_UIButton54_TouchUpInside_UIKit_UIButton"

	.byte 3,33
	.quad AppsFlyerXamarinSampleApp_ViewController_UIButton54_TouchUpInside_UIKit_UIButton
	.quad Lme_f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM138=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM138
	.byte 3,141,200,0,3
	.asciz "sender"

LDIFF_SYM139=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM139
	.byte 3,141,208,0,11
	.asciz "addToCartEvent"

LDIFF_SYM140=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM140
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM141=Lfde15_end - Lfde15_start
	.long LDIFF_SYM141
Lfde15_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_ViewController_UIButton54_TouchUpInside_UIKit_UIButton

LDIFF_SYM142=Lme_f - AppsFlyerXamarinSampleApp_ViewController_UIButton54_TouchUpInside_UIKit_UIButton
	.long LDIFF_SYM142
	.long 0
	.byte 12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,148,24,149,23,68,150,22,151,21,68,152,20,153,19,68,154,18
	.align 3
Lfde15_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.ViewController:ReleaseDesignerOutlets"
	.asciz "AppsFlyerXamarinSampleApp_ViewController_ReleaseDesignerOutlets"

	.byte 4,26
	.quad AppsFlyerXamarinSampleApp_ViewController_ReleaseDesignerOutlets
	.quad Lme_10

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM143=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM143
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM144=Lfde16_end - Lfde16_start
	.long LDIFF_SYM144
Lfde16_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_ViewController_ReleaseDesignerOutlets

LDIFF_SYM145=Lme_10 - AppsFlyerXamarinSampleApp_ViewController_ReleaseDesignerOutlets
	.long LDIFF_SYM145
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde16_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_19:

	.byte 5
	.asciz "AppsFlyerXamarinBinding_AppsFlyerTrackerDelegate"

	.byte 40,16
LDIFF_SYM146=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM146
	.byte 2,35,0,0,7
	.asciz "AppsFlyerXamarinBinding_AppsFlyerTrackerDelegate"

LDIFF_SYM147=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM147
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM148=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM148
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM149=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM149
LTDIE_18:

	.byte 5
	.asciz "AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate"

	.byte 40,16
LDIFF_SYM150=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM150
	.byte 2,35,0,0,7
	.asciz "AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate"

LDIFF_SYM151=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM151
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM152=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM152
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM153=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM153
	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppsFlyerConversionDataDelegate:.ctor"
	.asciz "AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate__ctor"

	.byte 0,0
	.quad AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate__ctor
	.quad Lme_11

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM154=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM154
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM155=Lfde17_end - Lfde17_start
	.long LDIFF_SYM155
Lfde17_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate__ctor

LDIFF_SYM156=Lme_11 - AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate__ctor
	.long LDIFF_SYM156
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde17_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppsFlyerConversionDataDelegate:OnAppOpenAttribution"
	.asciz "AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttribution_Foundation_NSDictionary"

	.byte 5,11
	.quad AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttribution_Foundation_NSDictionary
	.quad Lme_12

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM157=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM157
	.byte 2,141,16,3
	.asciz "attributionData"

LDIFF_SYM158=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM158
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM159=Lfde18_end - Lfde18_start
	.long LDIFF_SYM159
Lfde18_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttribution_Foundation_NSDictionary

LDIFF_SYM160=Lme_12 - AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttribution_Foundation_NSDictionary
	.long LDIFF_SYM160
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde18_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_20:

	.byte 5
	.asciz "Foundation_NSError"

	.byte 40,16
LDIFF_SYM161=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM161
	.byte 2,35,0,0,7
	.asciz "Foundation_NSError"

LDIFF_SYM162=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM162
LTDIE_20_POINTER:

	.byte 13
LDIFF_SYM163=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM163
LTDIE_20_REFERENCE:

	.byte 14
LDIFF_SYM164=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM164
	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppsFlyerConversionDataDelegate:OnAppOpenAttributionFailure"
	.asciz "AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttributionFailure_Foundation_NSError"

	.byte 5,15
	.quad AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttributionFailure_Foundation_NSError
	.quad Lme_13

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM165=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM165
	.byte 2,141,16,3
	.asciz "error"

LDIFF_SYM166=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM166
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM167=Lfde19_end - Lfde19_start
	.long LDIFF_SYM167
Lfde19_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttributionFailure_Foundation_NSError

LDIFF_SYM168=Lme_13 - AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttributionFailure_Foundation_NSError
	.long LDIFF_SYM168
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde19_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppsFlyerConversionDataDelegate:OnConversionDataReceived"
	.asciz "AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataReceived_Foundation_NSDictionary"

	.byte 5,19
	.quad AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataReceived_Foundation_NSDictionary
	.quad Lme_14

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM169=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM169
	.byte 2,141,16,3
	.asciz "installData"

LDIFF_SYM170=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM170
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM171=Lfde20_end - Lfde20_start
	.long LDIFF_SYM171
Lfde20_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataReceived_Foundation_NSDictionary

LDIFF_SYM172=Lme_14 - AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataReceived_Foundation_NSDictionary
	.long LDIFF_SYM172
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde20_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppsFlyerConversionDataDelegate:OnConversionDataRequestFailure"
	.asciz "AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataRequestFailure_Foundation_NSError"

	.byte 5,23
	.quad AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataRequestFailure_Foundation_NSError
	.quad Lme_15

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM173=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM173
	.byte 2,141,16,3
	.asciz "error"

LDIFF_SYM174=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM174
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM175=Lfde21_end - Lfde21_start
	.long LDIFF_SYM175
Lfde21_start:

	.long 0
	.align 3
	.quad AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataRequestFailure_Foundation_NSError

LDIFF_SYM176=Lme_15 - AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataRequestFailure_Foundation_NSError
	.long LDIFF_SYM176
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde21_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:

	.long Ldebug_line_end - . -4
	.short 2
	.long Ldebug_line_header_end - . -4
	.byte 1,1,251,14,13,0,1,1,1,1,0,0,0,1,0,0,1
.section __DWARF, __debug_line,regular,debug
	.asciz "/Users/golan/Documents/Dev/AppsFlyerXamarinBinding/AppsFlyerXamarinSampleApp"

	.byte 0
	.asciz "Main.cs"

	.byte 1,0,0
	.asciz "AppDelegate.cs"

	.byte 1,0,0
	.asciz "ViewController.cs"

	.byte 1,0,0
	.asciz "ViewController.designer.cs"

	.byte 1,0,0
	.asciz "AppsFlyerConversionDataDelegate.cs"

	.byte 1,0,0
	.asciz "<unknown>"

	.byte 0,0,0,0
Ldebug_line_header_end:
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad AppsFlyerXamarinSampleApp_Application_Main_string__

	.byte 4,1,1,10,3,8,2,56,1,8,119,3,1,2,204,0,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad AppsFlyerXamarinSampleApp_AppDelegate_get_Window

	.byte 4,2,1,10,3,15,2,192,0,1,2,200,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad AppsFlyerXamarinSampleApp_AppDelegate_set_Window_UIKit_UIWindow

	.byte 4,2,1,10,3,16,2,60,1,2,236,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad AppsFlyerXamarinSampleApp_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary

	.byte 4,2,1,10,3,20,2,204,0,1,8,122,8,63,3,2,2,52,1,3,1,2,196,0,1,3,1,2,208,0,1,3
	.byte 1,2,208,0,1,3,2,2,60,1,3,2,2,232,0,1,8,61,2,56,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad AppsFlyerXamarinSampleApp_AppDelegate_OnResignActivation_UIKit_UIApplication

	.byte 4,2,1,10,3,42,2,60,1,8,121,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad AppsFlyerXamarinSampleApp_AppDelegate_DidEnterBackground_UIKit_UIApplication

	.byte 4,2,1,10,3,50,2,60,1,8,119,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad AppsFlyerXamarinSampleApp_AppDelegate_WillEnterForeground_UIKit_UIApplication

	.byte 4,2,1,10,3,56,2,60,1,8,119,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad AppsFlyerXamarinSampleApp_AppDelegate_OnActivated_UIKit_UIApplication

	.byte 4,2,1,10,3,62,2,60,1,8,119,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad AppsFlyerXamarinSampleApp_AppDelegate_WillTerminate_UIKit_UIApplication

	.byte 4,2,1,10,3,196,0,2,60,1,8,118,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad AppsFlyerXamarinSampleApp_ViewController__ctor_intptr

	.byte 4,3,1,10,3,9,2,60,1,3,1,2,36,1,243,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad AppsFlyerXamarinSampleApp_ViewController_ViewDidLoad

	.byte 4,3,1,10,3,14,2,56,1,8,117,3,2,2,48,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad AppsFlyerXamarinSampleApp_ViewController_DidReceiveMemoryWarning

	.byte 4,3,1,10,3,20,2,56,1,8,117,3,2,2,48,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad AppsFlyerXamarinSampleApp_ViewController_UIButton3_TouchUpInside_UIKit_UIButton

	.byte 4,3,1,10,3,26,2,60,1,8,117,3,2,2,244,0,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad AppsFlyerXamarinSampleApp_ViewController_UIButton54_TouchUpInside_UIKit_UIButton

	.byte 4,3,1,10,3,32,2,208,0,1,8,117,3,2,2,224,3,1,3,1,2,236,0,1,2,60,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad AppsFlyerXamarinSampleApp_ViewController_ReleaseDesignerOutlets

	.byte 4,4,1,10,3,25,2,56,1,8,117,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttribution_Foundation_NSDictionary

	.byte 4,5,1,10,3,10,2,60,1,8,118,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttributionFailure_Foundation_NSError

	.byte 4,5,1,10,3,14,2,60,1,8,118,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataReceived_Foundation_NSDictionary

	.byte 4,5,1,10,3,18,2,60,1,8,117,3,1,2,136,1,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,9,2
	.quad AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataRequestFailure_Foundation_NSError

	.byte 4,5,1,10,3,22,2,60,1,8,118,2,44,1,0,1,1,0,1,1
Ldebug_line_end:
.text
	.align 3
mem_end:
