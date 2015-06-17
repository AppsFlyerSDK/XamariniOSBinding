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
	.byte 4,1
	.asciz "Mono AOT Compiler 4.0.1 (mono-4.0.0-branch/ed1d3ec Thu May 21 21:49:22 EDT 2015)"
	.asciz "AppsFlyerXamarinSampleApp.exe"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0
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

	.byte 4,4,5
	.asciz "intptr"
LDIE_U:

	.byte 4,4,7
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

	.byte 4,4,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,4,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,4,1
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

	.byte 1,124,14
	.align 2
Lcie0_end:
.text
	.align 3
methods:
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_Application__ctor
AppsFlyerXamarinSampleApp_Application__ctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 4
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,8,0,157,229,0,224,157,229,80,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,96,224,158,229
	.byte 0,0,94,227,0,224,158,21,20,208,141,226,0,1,189,232,128,128,189,232

Lme_0:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_Application_Main_string__
AppsFlyerXamarinSampleApp_Application_Main_string__:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,28,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 8
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 100,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229,16,0,141,229,0,0,160,227,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 12
	.byte 0,0,159,231,20,0,141,229,0,224,157,229,148,224,158,229,0,0,94,227,0,224,158,21,16,0,157,229,20,32,157,229
	.byte 0,16,160,227
bl _p_1

	.byte 0,224,157,229,180,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,196,224,158,229,0,0,94,227,0,224,158,21
	.byte 28,208,141,226,0,1,189,232,128,128,189,232

Lme_1:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_AppDelegate__ctor
AppsFlyerXamarinSampleApp_AppDelegate__ctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 16
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,8,0,157,229
bl _p_2

	.byte 0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,100,224,158,229,0,0,94,227,0,224,158,21
	.byte 20,208,141,226,0,1,189,232,128,128,189,232

Lme_2:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_AppDelegate_get_Window
AppsFlyerXamarinSampleApp_AppDelegate_get_Window:

	.byte 128,64,45,233,13,112,160,225,64,1,45,233,16,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 20
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,96,160,227,0,224,157,229,64,224,158,229
	.byte 0,0,94,227,0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21
	.byte 8,0,157,229,20,0,144,229,0,96,160,225,0,224,157,229,116,224,158,229,0,0,94,227,0,224,158,21,16,208,141,226
	.byte 64,1,189,232,128,128,189,232

Lme_3:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_AppDelegate_set_Window_UIKit_UIWindow
AppsFlyerXamarinSampleApp_AppDelegate_set_Window_UIKit_UIWindow:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 24
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,8,16,157,229
	.byte 12,0,157,229,20,0,129,229,20,16,129,226,161,20,160,225,0,32,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . -4
	.byte 2,32,159,231,2,16,129,224,1,32,160,227,0,32,193,229,0,224,157,229,152,224,158,229,0,0,94,227,0,224,158,21
	.byte 20,208,141,226,0,1,189,232,128,128,189,232

Lme_4:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary
AppsFlyerXamarinSampleApp_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary:

	.byte 128,64,45,233,13,112,160,225,0,5,45,233,64,208,77,226,12,0,141,229,16,16,141,229,20,32,141,229,0,0,159,229
	.byte 0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 28
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,160,160,227,0,0,160,227,8,0,205,229
	.byte 0,224,157,229,80,224,158,229,0,0,94,227,0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,104,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21
bl _p_3

	.byte 0,224,157,229,140,224,158,229,0,0,94,227,0,224,158,21
bl _p_4

	.byte 60,0,141,229,0,224,157,229,164,224,158,229,0,0,94,227,0,224,158,21,60,0,157,229,56,0,141,229,0,160,160,225
	.byte 0,224,157,229,192,224,158,229,0,0,94,227,0,224,158,21,56,0,157,229,52,0,141,229,1,0,160,227,0,224,157,229
	.byte 220,224,158,229,0,0,94,227,0,224,158,21,52,32,157,229,2,0,160,225,1,16,160,227,0,32,146,229,15,224,160,225
	.byte 240,240,146,229,0,224,157,229,4,225,158,229,0,0,94,227,0,224,158,21,10,0,160,225,48,0,141,229,0,0,159,229
	.byte 0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 32
	.byte 0,0,159,231,44,0,141,229,0,224,157,229,48,225,158,229,0,0,94,227,0,224,158,21,44,16,157,229,48,32,157,229
	.byte 2,0,160,225,0,32,146,229,15,224,160,225,32,241,146,229,0,224,157,229,88,225,158,229,0,0,94,227,0,224,158,21
	.byte 10,0,160,225,40,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 36
	.byte 0,0,159,231,36,0,141,229,0,224,157,229,132,225,158,229,0,0,94,227,0,224,158,21,36,16,157,229,40,32,157,229
	.byte 2,0,160,225,0,32,146,229,15,224,160,225,40,241,146,229,0,224,157,229,172,225,158,229,0,0,94,227,0,224,158,21
	.byte 10,0,160,225,32,0,141,229,0,224,157,229,196,225,158,229,0,0,94,227,0,224,158,21,32,16,157,229,1,0,160,225
	.byte 0,16,145,229,15,224,160,225,60,241,145,229,0,224,157,229,232,225,158,229,0,0,94,227,0,224,158,21
bl _p_4

	.byte 28,0,141,229,0,224,157,229,0,226,158,229,0,0,94,227,0,224,158,21,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 40
	.byte 0,0,159,231
bl _p_5

	.byte 24,0,141,229
bl _p_6

	.byte 0,224,157,229,44,226,158,229,0,0,94,227,0,224,158,21,24,16,157,229,28,32,157,229,2,0,160,225,0,32,146,229
	.byte 15,224,160,225,68,241,146,229,0,224,157,229,84,226,158,229,0,0,94,227,0,224,158,21,1,0,160,227,8,0,205,229
	.byte 0,224,157,229,108,226,158,229,0,0,94,227,0,224,158,21,8,0,221,229,0,224,157,229,128,226,158,229,0,0,94,227
	.byte 0,224,158,21,64,208,141,226,0,5,189,232,128,128,189,232

Lme_5:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_AppDelegate_OnResignActivation_UIKit_UIApplication
AppsFlyerXamarinSampleApp_AppDelegate_OnResignActivation_UIKit_UIApplication:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 44
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 104,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226
	.byte 0,1,189,232,128,128,189,232

Lme_6:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_AppDelegate_DidEnterBackground_UIKit_UIApplication
AppsFlyerXamarinSampleApp_AppDelegate_DidEnterBackground_UIKit_UIApplication:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 48
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 104,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226
	.byte 0,1,189,232,128,128,189,232

Lme_7:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_AppDelegate_WillEnterForeground_UIKit_UIApplication
AppsFlyerXamarinSampleApp_AppDelegate_WillEnterForeground_UIKit_UIApplication:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 52
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 104,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226
	.byte 0,1,189,232,128,128,189,232

Lme_8:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_AppDelegate_OnActivated_UIKit_UIApplication
AppsFlyerXamarinSampleApp_AppDelegate_OnActivated_UIKit_UIApplication:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 56
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 104,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226
	.byte 0,1,189,232,128,128,189,232

Lme_9:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_AppDelegate_WillTerminate_UIKit_UIApplication
AppsFlyerXamarinSampleApp_AppDelegate_WillTerminate_UIKit_UIApplication:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 60
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 104,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226
	.byte 0,1,189,232,128,128,189,232

Lme_a:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_ViewController__ctor_intptr
AppsFlyerXamarinSampleApp_ViewController__ctor_intptr:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 64
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229
	.byte 12,16,157,229
bl _p_7

	.byte 0,224,157,229,116,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,132,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,224,157,229,148,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226,0,1,189,232,128,128,189,232

Lme_b:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_ViewController_ViewDidLoad
AppsFlyerXamarinSampleApp_ViewController_ViewDidLoad:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,28,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 68
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 100,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229,16,0,141,229,0,224,157,229,124,224,158,229,0,0,94,227
	.byte 0,224,158,21,16,0,157,229
bl _p_8

	.byte 0,224,157,229,148,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,164,224,158,229,0,0,94,227,0,224,158,21
	.byte 28,208,141,226,0,1,189,232,128,128,189,232

Lme_c:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_ViewController_DidReceiveMemoryWarning
AppsFlyerXamarinSampleApp_ViewController_DidReceiveMemoryWarning:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,28,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 72
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 100,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229,16,0,141,229,0,224,157,229,124,224,158,229,0,0,94,227
	.byte 0,224,158,21,16,0,157,229
bl _p_9

	.byte 0,224,157,229,148,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,164,224,158,229,0,0,94,227,0,224,158,21
	.byte 28,208,141,226,0,1,189,232,128,128,189,232

Lme_d:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_ViewController_UIButton3_TouchUpInside_UIKit_UIButton
AppsFlyerXamarinSampleApp_ViewController_UIButton3_TouchUpInside_UIKit_UIButton:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,36,208,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 76
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 104,224,158,229,0,0,94,227,0,224,158,21
bl _p_4

	.byte 24,0,141,229,0,224,157,229,128,224,158,229,0,0,94,227,0,224,158,21,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 80
	.byte 0,0,159,231,16,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 84
	.byte 0,0,159,231,20,0,141,229,0,224,157,229,184,224,158,229,0,0,94,227,0,224,158,21,16,16,157,229,20,32,157,229
	.byte 24,48,157,229,3,0,160,225,0,48,147,229,15,224,160,225,56,241,147,229,0,224,157,229,228,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,224,157,229,244,224,158,229,0,0,94,227,0,224,158,21,36,208,141,226,0,1,189,232,128,128,189,232

Lme_e:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_ViewController_UIButton54_TouchUpInside_UIKit_UIButton
AppsFlyerXamarinSampleApp_ViewController_UIButton54_TouchUpInside_UIKit_UIButton:

	.byte 128,64,45,233,13,112,160,225,112,13,45,233,72,208,77,226,16,0,141,229,20,16,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 88
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,160,160,227,0,224,157,229,68,224,158,229
	.byte 0,0,94,227,0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,92,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,224,157,229,108,224,158,229,0,0,94,227,0,224,158,21,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 92
	.byte 0,0,159,231,40,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 96
	.byte 0,0,159,231,44,0,141,229,6,0,160,227,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 100
	.byte 0,0,159,231,6,16,160,227
bl _p_10

	.byte 0,96,160,225,68,0,141,229,6,0,160,225,0,0,160,227,0,32,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 104
	.byte 2,32,159,231,6,0,160,225,0,16,160,227,0,48,150,229,15,224,160,225,68,240,147,229,68,0,157,229,0,80,160,225
	.byte 64,0,141,229,5,0,160,225,1,0,160,227,0,32,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 108
	.byte 2,32,159,231,5,0,160,225,1,16,160,227,0,48,149,229,15,224,160,225,68,240,147,229,64,0,157,229,0,64,160,225
	.byte 60,0,141,229,4,0,160,225,2,0,160,227,0,32,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 112
	.byte 2,32,159,231,4,0,160,225,2,16,160,227,0,48,148,229,15,224,160,225,68,240,147,229,60,0,157,229,0,176,160,225
	.byte 56,0,141,229,11,0,160,225,3,0,160,227,0,32,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 116
	.byte 2,32,159,231,11,0,160,225,3,16,160,227,0,48,155,229,15,224,160,225,68,240,147,229,56,0,157,229,8,0,141,229
	.byte 52,0,141,229,8,48,157,229,4,0,160,227,0,32,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 120
	.byte 2,32,159,231,3,0,160,225,4,16,160,227,0,48,147,229,15,224,160,225,68,240,147,229,52,0,157,229,12,0,141,229
	.byte 48,0,141,229,12,48,157,229,5,0,160,227,0,32,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 124
	.byte 2,32,159,231,3,0,160,225,5,16,160,227,0,48,147,229,15,224,160,225,68,240,147,229,0,224,157,229,12,226,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 128
	.byte 0,0,159,231
bl _p_5

	.byte 40,16,157,229,44,32,157,229,48,48,157,229,36,0,141,229
bl _p_11

	.byte 0,224,157,229,68,226,158,229,0,0,94,227,0,224,158,21,36,0,157,229,0,160,160,225,0,224,157,229,92,226,158,229
	.byte 0,0,94,227,0,224,158,21
bl _p_4

	.byte 32,0,141,229,0,224,157,229,116,226,158,229,0,0,94,227,0,224,158,21,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 132
	.byte 0,0,159,231,24,0,141,229,10,0,160,225,28,0,141,229,0,224,157,229,160,226,158,229,0,0,94,227,0,224,158,21
	.byte 24,16,157,229,28,32,157,229,32,48,157,229,3,0,160,225,0,48,147,229,15,224,160,225,52,241,147,229,0,224,157,229
	.byte 204,226,158,229,0,0,94,227,0,224,158,21,0,224,157,229,220,226,158,229,0,0,94,227,0,224,158,21,72,208,141,226
	.byte 112,13,189,232,128,128,189,232

Lme_f:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_ViewController_ReleaseDesignerOutlets
AppsFlyerXamarinSampleApp_ViewController_ReleaseDesignerOutlets:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 136
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 100,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,116,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226
	.byte 0,1,189,232,128,128,189,232

Lme_10:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate__ctor
AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate__ctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 140
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,8,0,157,229
bl _p_12

	.byte 0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,100,224,158,229,0,0,94,227,0,224,158,21
	.byte 20,208,141,226,0,1,189,232,128,128,189,232

Lme_11:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttribution_Foundation_NSDictionary
AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttribution_Foundation_NSDictionary:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 144
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 104,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226
	.byte 0,1,189,232,128,128,189,232

Lme_12:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttributionFailure_Foundation_NSError
AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttributionFailure_Foundation_NSError:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 148
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 104,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226
	.byte 0,1,189,232,128,128,189,232

Lme_13:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataReceived_Foundation_NSDictionary
AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataReceived_Foundation_NSDictionary:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,36,208,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 152
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 104,224,158,229,0,0,94,227,0,224,158,21,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 156
	.byte 0,0,159,231,20,0,141,229,12,0,157,229,28,0,141,229,0,224,157,229,148,224,158,229,0,0,94,227,0,224,158,21
	.byte 28,16,157,229,1,0,160,225,0,16,145,229,15,224,160,225,156,240,145,229,24,0,141,229,0,224,157,229,188,224,158,229
	.byte 0,0,94,227,0,224,158,21,20,0,157,229,24,16,157,229
bl _p_13

	.byte 16,0,141,229,0,224,157,229,220,224,158,229,0,0,94,227,0,224,158,21,16,0,157,229
bl _p_14

	.byte 0,224,157,229,244,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,4,225,158,229,0,0,94,227,0,224,158,21
	.byte 36,208,141,226,0,1,189,232,128,128,189,232

Lme_14:
.text
	.align 2
	.no_dead_strip AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataRequestFailure_Foundation_NSError
AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataRequestFailure_Foundation_NSError:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 160
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 104,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226
	.byte 0,1,189,232,128,128,189,232

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
	.byte 129,35,31,62,33,37,53,128,224,45,45,45,131,143,45,54,56,56,78,128,211,39,33,45,134,37,85,255,255,255,249,134
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 18,12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32,18,12,13,0,72,14,8,135,2,68,14,12,136
	.byte 3,142,1,68,14,40,20,12,13,0,72,14,8,135,2,68,14,16,134,4,136,3,142,1,68,14,32,20,12,13,0,72
	.byte 14,8,135,2,68,14,16,136,4,138,3,142,1,68,14,80,18,12,13,0,72,14,8,135,2,68,14,12,136,3,142,1
	.byte 68,14,48,28,12,13,0,72,14,8,135,2,68,14,32,132,8,133,7,134,6,136,5,138,4,139,3,142,1,68,14,104
.section __TEXT, __const
	.align 3
class_info_offsets:

	.long 5,10,1,2
	.short 0
	.byte 134,167,7,23,128,195,129,5

.text
	.align 4
plt:
_mono_aot_AppsFlyerXamarinSampleApp_plt:
	.no_dead_strip plt_UIKit_UIApplication_Main_string___string_string
plt_UIKit_UIApplication_Main_string___string_string:
_p_1:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 176,181
	.no_dead_strip plt_UIKit_UIApplicationDelegate__ctor
plt_UIKit_UIApplicationDelegate__ctor:
_p_2:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 180,186
	.no_dead_strip plt_Xamarin_Calabash_Start
plt_Xamarin_Calabash_Start:
_p_3:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 184,191
	.no_dead_strip plt_AppsFlyerXamarinBinding_AppsFlyerTracker_SharedTracker
plt_AppsFlyerXamarinBinding_AppsFlyerTracker_SharedTracker:
_p_4:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 188,196
	.no_dead_strip plt__jit_icall_mono_object_new_specific
plt__jit_icall_mono_object_new_specific:
_p_5:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 192,201
	.no_dead_strip plt_AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate__ctor
plt_AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate__ctor:
_p_6:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 196,228
	.no_dead_strip plt_UIKit_UIViewController__ctor_intptr
plt_UIKit_UIViewController__ctor_intptr:
_p_7:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 200,230
	.no_dead_strip plt_UIKit_UIViewController_ViewDidLoad
plt_UIKit_UIViewController_ViewDidLoad:
_p_8:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 204,235
	.no_dead_strip plt_UIKit_UIViewController_DidReceiveMemoryWarning
plt_UIKit_UIViewController_DidReceiveMemoryWarning:
_p_9:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 208,240
	.no_dead_strip plt__jit_icall_mono_array_new_specific
plt__jit_icall_mono_array_new_specific:
_p_10:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 212,245
	.no_dead_strip plt_Foundation_NSDictionary__ctor_object_object_object__
plt_Foundation_NSDictionary__ctor_object_object_object__:
_p_11:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 216,271
	.no_dead_strip plt_AppsFlyerXamarinBinding_AppsFlyerTrackerDelegate__ctor
plt_AppsFlyerXamarinBinding_AppsFlyerTrackerDelegate__ctor:
_p_12:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 220,276
	.no_dead_strip plt_string_Concat_string_string
plt_string_Concat_string_string:
_p_13:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 224,281
	.no_dead_strip plt_System_Console_WriteLine_string
plt_System_Console_WriteLine_string:
_p_14:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_AppsFlyerXamarinSampleApp_got - . + 228,286
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
	.asciz "EDB175E4-DFF7-4F36-9F7B-A3BEBF793389"
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
	.space 236
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
	.align 2
	.long _mono_aot_AppsFlyerXamarinSampleApp_got
	.align 2
	.long 0
	.align 2
	.long methods
	.align 2
	.long jit_code_start
	.align 2
	.long jit_code_end
	.align 2
	.long 0
	.align 2
	.long blob
	.align 2
	.long class_name_table
	.align 2
	.long class_info_offsets
	.align 2
	.long method_info_offsets
	.align 2
	.long ex_info_offsets
	.align 2
	.long method_addresses
	.align 2
	.long extra_method_info_offsets
	.align 2
	.long extra_method_table
	.align 2
	.long got_info_offsets
	.align 2
	.long 0
	.align 2
	.long unwind_info
	.align 2
	.long mem_end
	.align 2
	.long image_table
	.align 2
	.long plt
	.align 2
	.long plt_end
	.align 2
	.long assembly_guid
	.align 2
	.long runtime_version
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long globals
	.align 2
	.long assembly_name
	.align 2
	.long unbox_trampolines
	.align 2
	.long unbox_trampolines_end
	.align 2
	.long unbox_trampoline_addresses

	.long 44,236,15,23,6,387000831,0,2380
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,128,4,4,15
	.long 0,0,0,0,0
	.globl _mono_aot_module_AppsFlyerXamarinSampleApp_info
	.align 2
_mono_aot_module_AppsFlyerXamarinSampleApp_info:
	.align 2
	.long _mono_aot_file_info
.section __TEXT, __const
	.align 3
blob:

	.byte 0,0,1,4,0,2,5,6,0,1,7,0,1,8,0,1,9,0,4,10,11,12,13,0,1,14,0,1,15,0,1,16
	.byte 0,1,17,0,1,18,0,1,19,0,1,20,0,1,21,0,3,22,23,24,0,12,25,26,27,28,29,30,31,32,33,34
	.byte 35,36,0,1,37,0,1,38,0,1,39,0,1,40,0,2,41,42,0,1,43,12,0,40,43,48,41,41,17,0,1,41
	.byte 41,41,41,17,0,25,17,0,71,14,1,5,41,41,41,41,41,41,41,41,41,17,0,91,17,0,121,41,17,0,128,167
	.byte 17,0,128,195,14,6,1,2,130,92,1,17,0,128,209,17,0,128,241,17,0,128,255,17,0,129,23,17,0,129,31,17
	.byte 0,129,61,14,2,4,2,17,0,129,101,41,41,41,41,41,17,0,129,131,41,3,194,0,3,243,3,194,0,3,249,3
	.byte 195,0,0,1,3,196,0,0,38,7,24,109,111,110,111,95,111,98,106,101,99,116,95,110,101,119,95,115,112,101,99,105
	.byte 102,105,99,0,3,18,3,194,0,4,54,3,194,0,4,62,3,194,0,4,56,7,23,109,111,110,111,95,97,114,114,97
	.byte 121,95,110,101,119,95,115,112,101,99,105,102,105,99,0,3,194,0,0,23,3,196,0,0,22,3,193,0,13,220,3,193
	.byte 0,11,250,10,0,1,12,1,104,0,0,14,40,1,0,0,32,2,0,14,104,72,116,208,0,0,13,8,0,2,1,72
	.byte 6,32,10,19,1,27,1,104,0,0,2,48,0,1,2,2,32,0,1,3,14,96,1,1,4,10,64,0,0,0,32,2
	.byte 0,30,128,204,68,128,216,208,0,0,13,8,0,9,0,68,1,24,1,24,1,4,5,20,0,24,0,4,5,4,1,32
	.byte 10,0,1,12,1,104,0,0,14,48,1,0,0,32,2,0,16,108,72,120,208,0,0,13,8,0,3,1,72,0,4,6
	.byte 32,10,38,1,12,1,112,0,0,2,48,0,0,0,56,2,0,20,124,72,128,136,208,0,0,13,8,6,0,4,0,72
	.byte 1,28,5,4,8,20,10,0,1,13,1,112,0,0,2,48,0,0,0,128,1,2,0,35,128,160,72,128,172,208,0,0
	.byte 13,12,208,0,0,13,8,0,9,0,72,2,32,0,4,0,4,0,4,0,16,0,8,0,4,6,16,10,59,1,93,1
	.byte 144,1,0,0,2,48,0,1,2,2,32,0,1,3,10,40,0,1,4,10,48,1,1,5,2,56,0,1,6,4,56,1
	.byte 1,7,10,80,0,1,8,12,88,1,1,9,10,80,0,1,10,12,88,1,1,11,10,80,0,1,12,2,48,1,1,13
	.byte 10,72,0,1,14,10,48,1,1,15,10,88,1,1,16,10,80,0,1,17,14,48,0,0,0,40,2,0,126,130,136,88
	.byte 130,148,208,0,0,13,16,208,0,0,13,20,208,0,0,13,12,10,208,0,0,13,8,0,49,0,88,1,24,0,16,5
	.byte 4,0,16,0,8,5,24,1,4,1,24,1,4,0,20,0,4,0,4,0,4,5,8,0,16,1,8,5,20,0,24,0
	.byte 4,0,4,5,8,0,16,1,8,5,20,0,24,0,4,0,4,5,8,0,16,1,8,0,20,0,4,0,4,5,8,0
	.byte 16,5,8,0,16,0,16,0,4,0,4,5,4,0,24,0,4,0,4,5,8,0,20,7,4,2,36,10,0,1,17,1
	.byte 112,0,0,2,48,0,1,2,2,32,0,0,0,32,2,0,23,128,128,72,128,140,208,0,0,13,12,208,0,0,13,8
	.byte 0,3,0,72,1,24,1,32,10,0,1,17,1,112,0,0,2,48,0,1,2,2,32,0,0,0,32,2,0,23,128,128
	.byte 72,128,140,208,0,0,13,12,208,0,0,13,8,0,3,0,72,1,24,1,32,10,0,1,17,1,112,0,0,2,48,0
	.byte 1,2,2,32,0,0,0,32,2,0,23,128,128,72,128,140,208,0,0,13,12,208,0,0,13,8,0,3,0,72,1,24
	.byte 1,32,10,0,1,17,1,112,0,0,2,48,0,1,2,2,32,0,0,0,32,2,0,23,128,128,72,128,140,208,0,0
	.byte 13,12,208,0,0,13,8,0,3,0,72,1,24,1,32,10,0,1,17,1,112,0,0,2,48,0,1,2,2,32,0,0
	.byte 0,32,2,0,23,128,128,72,128,140,208,0,0,13,12,208,0,0,13,8,0,3,0,72,1,24,1,32,10,0,1,22
	.byte 1,112,0,0,2,48,0,1,2,14,56,0,1,3,2,32,0,0,0,32,2,0,27,128,156,72,128,168,208,0,0,13
	.byte 12,208,0,0,13,8,0,5,0,72,2,32,5,4,1,16,1,32,10,19,1,27,1,104,0,0,2,48,0,1,2,2
	.byte 32,0,1,3,2,48,1,1,4,10,48,0,0,0,32,2,0,24,128,172,68,128,184,208,0,0,13,8,0,6,0,68
	.byte 1,24,1,24,0,20,5,4,1,32,10,19,1,27,1,104,0,0,2,48,0,1,2,2,32,0,1,3,2,48,1,1
	.byte 4,10,48,0,0,0,32,2,0,24,128,172,68,128,184,208,0,0,13,8,0,6,0,68,1,24,1,24,0,20,5,4
	.byte 1,32,10,80,1,32,1,112,0,0,2,48,0,1,2,2,32,0,1,3,10,48,1,1,4,20,112,1,1,5,10,88
	.byte 0,0,0,32,2,0,41,128,252,72,129,8,208,0,0,13,12,208,0,0,13,8,0,12,0,72,1,24,0,16,0,8
	.byte 5,16,5,20,5,20,0,28,0,4,0,4,5,8,1,32,10,99,1,49,1,120,0,0,2,48,0,1,2,2,32,0
	.byte 1,3,128,1,192,6,1,1,4,10,112,1,1,5,2,48,0,1,6,10,48,1,1,7,12,88,1,1,8,10,88,0
	.byte 0,0,32,2,0,128,156,130,228,76,130,240,208,0,0,13,20,208,0,0,13,16,10,0,69,0,76,1,24,0,16,5
	.byte 20,5,20,6,28,0,8,1,4,1,4,5,16,0,4,0,4,0,4,1,12,0,8,1,4,1,4,5,16,0,4,0
	.byte 4,0,4,1,12,0,8,1,4,1,4,5,16,0,4,0,4,0,4,1,12,0,8,1,4,1,4,5,16,0,4,0
	.byte 4,0,4,1,12,1,12,1,4,5,16,0,4,0,4,0,4,1,12,1,12,1,4,5,16,0,4,0,4,0,4,1
	.byte 8,0,16,0,16,0,16,0,4,0,4,5,20,1,4,0,16,0,8,5,16,5,20,1,8,0,28,0,4,0,4,5
	.byte 8,1,32,10,0,1,17,1,104,0,0,2,48,0,1,2,2,32,0,0,0,32,2,0,17,124,68,128,136,208,0,0
	.byte 13,8,0,3,0,68,1,24,1,32,10,0,1,12,1,104,0,0,14,48,1,0,0,32,2,0,16,108,72,120,208,0
	.byte 0,13,8,0,3,1,72,0,4,6,32,10,0,1,17,1,112,0,0,2,48,0,1,2,2,32,0,0,0,32,2,0
	.byte 23,128,128,72,128,140,208,0,0,13,12,208,0,0,13,8,0,3,0,72,1,24,1,32,10,0,1,17,1,112,0,0
	.byte 2,48,0,1,2,2,32,0,0,0,32,2,0,23,128,128,72,128,140,208,0,0,13,12,208,0,0,13,8,0,3,0
	.byte 72,1,24,1,32,10,80,1,37,1,112,0,0,2,48,0,1,2,2,32,0,1,3,12,88,1,1,4,10,80,1,1
	.byte 5,10,64,1,1,6,10,48,0,0,0,32,2,0,43,129,12,72,129,24,208,0,0,13,12,208,0,0,13,8,0,13
	.byte 0,72,1,24,0,16,6,28,0,20,0,4,0,4,0,12,5,24,5,8,0,20,5,4,1,32,10,0,1,17,1,112
	.byte 0,0,2,48,0,1,2,2,32,0,0,0,32,2,0,23,128,128,72,128,140,208,0,0,13,12,208,0,0,13,8,0
	.byte 3,0,72,1,24,1,32,0,128,144,8,0,0,1,4,128,144,8,0,0,1,193,0,13,106,193,0,13,103,193,0,13
	.byte 102,193,0,13,101,52,128,162,194,0,1,110,24,0,0,4,194,0,1,137,194,0,1,134,194,0,1,110,194,0,1,135
	.byte 194,0,1,136,194,0,1,127,194,0,1,111,194,0,1,143,194,0,1,144,194,0,1,147,194,0,1,148,194,0,1,149
	.byte 194,0,1,145,194,0,1,146,194,0,1,120,194,0,1,150,194,0,1,124,194,0,1,121,194,0,1,125,194,0,1,152
	.byte 194,0,1,156,194,0,1,151,194,0,1,155,194,0,1,153,194,0,1,154,194,0,1,157,194,0,1,157,194,0,1,156
	.byte 194,0,1,155,194,0,1,154,194,0,1,153,194,0,1,152,194,0,1,151,194,0,1,150,194,0,1,149,194,0,1,148
	.byte 194,0,1,147,194,0,1,146,194,0,1,145,194,0,1,144,194,0,1,143,194,0,1,142,194,0,1,139,194,0,1,120
	.byte 5,4,11,9,7,10,6,8,64,128,130,194,0,1,110,20,0,0,4,194,0,1,137,194,0,1,134,194,0,1,110,194
	.byte 0,1,135,194,0,1,136,194,0,1,127,194,0,1,111,194,0,1,143,194,0,1,144,194,0,1,147,194,0,1,148,194
	.byte 0,1,149,194,0,1,145,194,0,1,146,194,0,1,120,194,0,1,150,194,0,1,124,194,0,1,121,194,0,1,125,194
	.byte 0,1,152,194,0,1,156,194,0,1,151,194,0,1,155,194,0,1,153,194,0,1,154,194,0,1,157,194,0,1,157,194
	.byte 0,1,156,194,0,1,155,194,0,1,154,194,0,1,153,194,0,1,152,194,0,1,151,194,0,1,150,194,0,1,149,194
	.byte 0,1,148,194,0,1,147,194,0,1,146,194,0,1,145,194,0,1,144,194,0,1,143,194,0,4,55,194,0,4,67,194
	.byte 0,1,120,194,0,4,57,194,0,4,59,194,0,4,60,194,0,4,58,194,0,4,63,194,0,4,64,194,0,4,65,194
	.byte 0,4,61,194,0,4,66,194,0,4,66,194,0,4,65,194,0,4,64,194,0,4,63,13,194,0,4,61,194,0,4,60
	.byte 194,0,4,59,194,0,4,58,194,0,4,57,14,48,128,130,194,0,1,110,20,0,0,4,194,0,1,137,194,0,1,134
	.byte 194,0,1,110,194,0,1,135,194,0,1,136,194,0,1,127,194,0,1,111,194,0,1,143,194,0,1,144,194,0,1,147
	.byte 194,0,1,148,194,0,1,149,194,0,1,145,194,0,1,146,194,0,1,120,194,0,1,150,194,0,1,124,194,0,1,121
	.byte 194,0,1,125,194,0,1,152,194,0,1,156,194,0,1,151,194,0,1,155,194,0,1,153,194,0,1,154,194,0,1,157
	.byte 194,0,1,157,194,0,1,156,194,0,1,155,194,0,1,154,194,0,1,153,194,0,1,152,194,0,1,151,194,0,1,150
	.byte 194,0,1,149,194,0,1,148,194,0,1,147,194,0,1,146,194,0,1,145,194,0,1,144,194,0,1,143,194,0,1,142
	.byte 194,0,1,139,194,0,1,120,22,21,20,19,115,103,101,110,0
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.data
	.align 3
globals:
	.align 2
	.long Lglobals_hash

	.long 0,0
.section __DWARF, __debug_info,regular,debug
LTDIE_1:

	.byte 17
	.asciz "System_Object"

	.byte 8,7
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

	.byte 8,16
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
	.long AppsFlyerXamarinSampleApp_Application__ctor
	.long Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM10=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM11=Lfde0_end - Lfde0_start
	.long LDIFF_SYM11
Lfde0_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_Application__ctor

LDIFF_SYM12=Lme_0 - AppsFlyerXamarinSampleApp_Application__ctor
	.long LDIFF_SYM12
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.Application:Main"
	.asciz "AppsFlyerXamarinSampleApp_Application_Main_string__"

	.byte 1,9
	.long AppsFlyerXamarinSampleApp_Application_Main_string__
	.long Lme_1

	.byte 2,118,16,3
	.asciz "args"

LDIFF_SYM13=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM13
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM14=Lfde1_end - Lfde1_start
	.long LDIFF_SYM14
Lfde1_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_Application_Main_string__

LDIFF_SYM15=Lme_1 - AppsFlyerXamarinSampleApp_Application_Main_string__
	.long LDIFF_SYM15
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,40
	.align 2
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

	.byte 20,16
LDIFF_SYM20=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM20
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM21=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM21
	.byte 2,35,8,6
	.asciz "class_handle"

LDIFF_SYM22=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM22
	.byte 2,35,12,6
	.asciz "flags"

LDIFF_SYM23=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM23
	.byte 2,35,16,0,7
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

	.byte 20,16
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

	.byte 20,16
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

	.byte 20,16
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

	.byte 20,16
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

	.byte 24,16
LDIFF_SYM43=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM43
	.byte 2,35,0,6
	.asciz "<Window>k__BackingField"

LDIFF_SYM44=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2,35,20,0,7
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
	.long AppsFlyerXamarinSampleApp_AppDelegate__ctor
	.long Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM48=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM48
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM49=Lfde2_end - Lfde2_start
	.long LDIFF_SYM49
Lfde2_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_AppDelegate__ctor

LDIFF_SYM50=Lme_2 - AppsFlyerXamarinSampleApp_AppDelegate__ctor
	.long LDIFF_SYM50
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppDelegate:get_Window"
	.asciz "AppsFlyerXamarinSampleApp_AppDelegate_get_Window"

	.byte 2,16
	.long AppsFlyerXamarinSampleApp_AppDelegate_get_Window
	.long Lme_3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM51=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM51
	.byte 2,125,8,11
	.asciz "V_0"

LDIFF_SYM52=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM52
	.byte 1,86,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM53=Lfde3_end - Lfde3_start
	.long LDIFF_SYM53
Lfde3_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_AppDelegate_get_Window

LDIFF_SYM54=Lme_3 - AppsFlyerXamarinSampleApp_AppDelegate_get_Window
	.long LDIFF_SYM54
	.byte 12,13,0,72,14,8,135,2,68,14,16,134,4,136,3,142,1,68,14,32
	.align 2
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppDelegate:set_Window"
	.asciz "AppsFlyerXamarinSampleApp_AppDelegate_set_Window_UIKit_UIWindow"

	.byte 2,17
	.long AppsFlyerXamarinSampleApp_AppDelegate_set_Window_UIKit_UIWindow
	.long Lme_4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM55=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM55
	.byte 2,125,8,3
	.asciz "value"

LDIFF_SYM56=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM56
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM57=Lfde4_end - Lfde4_start
	.long LDIFF_SYM57
Lfde4_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_AppDelegate_set_Window_UIKit_UIWindow

LDIFF_SYM58=Lme_4 - AppsFlyerXamarinSampleApp_AppDelegate_set_Window_UIKit_UIWindow
	.long LDIFF_SYM58
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde4_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_9:

	.byte 5
	.asciz "UIKit_UIApplication"

	.byte 20,16
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

	.byte 20,16
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

	.byte 24,16
LDIFF_SYM67=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 2,35,0,6
	.asciz "__mt_WeakDelegate_var"

LDIFF_SYM68=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 2,35,20,0,7
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

	.byte 8,16
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

	.byte 9,16
LDIFF_SYM76=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM76
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM77=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM77
	.byte 2,35,8,0,7
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
	.long AppsFlyerXamarinSampleApp_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary
	.long Lme_5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM81=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM81
	.byte 2,125,12,3
	.asciz "application"

LDIFF_SYM82=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM82
	.byte 2,125,16,3
	.asciz "launchOptions"

LDIFF_SYM83=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM83
	.byte 2,125,20,11
	.asciz "tracker"

LDIFF_SYM84=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM84
	.byte 1,90,11
	.asciz "V_1"

LDIFF_SYM85=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM85
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM86=Lfde5_end - Lfde5_start
	.long LDIFF_SYM86
Lfde5_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary

LDIFF_SYM87=Lme_5 - AppsFlyerXamarinSampleApp_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary
	.long LDIFF_SYM87
	.byte 12,13,0,72,14,8,135,2,68,14,16,136,4,138,3,142,1,68,14,80
	.align 2
Lfde5_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppDelegate:OnResignActivation"
	.asciz "AppsFlyerXamarinSampleApp_AppDelegate_OnResignActivation_UIKit_UIApplication"

	.byte 2,43
	.long AppsFlyerXamarinSampleApp_AppDelegate_OnResignActivation_UIKit_UIApplication
	.long Lme_6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM88=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM88
	.byte 2,125,8,3
	.asciz "application"

LDIFF_SYM89=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM89
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM90=Lfde6_end - Lfde6_start
	.long LDIFF_SYM90
Lfde6_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_AppDelegate_OnResignActivation_UIKit_UIApplication

LDIFF_SYM91=Lme_6 - AppsFlyerXamarinSampleApp_AppDelegate_OnResignActivation_UIKit_UIApplication
	.long LDIFF_SYM91
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppDelegate:DidEnterBackground"
	.asciz "AppsFlyerXamarinSampleApp_AppDelegate_DidEnterBackground_UIKit_UIApplication"

	.byte 2,51
	.long AppsFlyerXamarinSampleApp_AppDelegate_DidEnterBackground_UIKit_UIApplication
	.long Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM92=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM92
	.byte 2,125,8,3
	.asciz "application"

LDIFF_SYM93=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM93
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM94=Lfde7_end - Lfde7_start
	.long LDIFF_SYM94
Lfde7_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_AppDelegate_DidEnterBackground_UIKit_UIApplication

LDIFF_SYM95=Lme_7 - AppsFlyerXamarinSampleApp_AppDelegate_DidEnterBackground_UIKit_UIApplication
	.long LDIFF_SYM95
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppDelegate:WillEnterForeground"
	.asciz "AppsFlyerXamarinSampleApp_AppDelegate_WillEnterForeground_UIKit_UIApplication"

	.byte 2,57
	.long AppsFlyerXamarinSampleApp_AppDelegate_WillEnterForeground_UIKit_UIApplication
	.long Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM96=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM96
	.byte 2,125,8,3
	.asciz "application"

LDIFF_SYM97=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM97
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM98=Lfde8_end - Lfde8_start
	.long LDIFF_SYM98
Lfde8_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_AppDelegate_WillEnterForeground_UIKit_UIApplication

LDIFF_SYM99=Lme_8 - AppsFlyerXamarinSampleApp_AppDelegate_WillEnterForeground_UIKit_UIApplication
	.long LDIFF_SYM99
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde8_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppDelegate:OnActivated"
	.asciz "AppsFlyerXamarinSampleApp_AppDelegate_OnActivated_UIKit_UIApplication"

	.byte 2,63
	.long AppsFlyerXamarinSampleApp_AppDelegate_OnActivated_UIKit_UIApplication
	.long Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM100=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM100
	.byte 2,125,8,3
	.asciz "application"

LDIFF_SYM101=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM101
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM102=Lfde9_end - Lfde9_start
	.long LDIFF_SYM102
Lfde9_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_AppDelegate_OnActivated_UIKit_UIApplication

LDIFF_SYM103=Lme_9 - AppsFlyerXamarinSampleApp_AppDelegate_OnActivated_UIKit_UIApplication
	.long LDIFF_SYM103
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppDelegate:WillTerminate"
	.asciz "AppsFlyerXamarinSampleApp_AppDelegate_WillTerminate_UIKit_UIApplication"

	.byte 2,69
	.long AppsFlyerXamarinSampleApp_AppDelegate_WillTerminate_UIKit_UIApplication
	.long Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM104=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM104
	.byte 2,125,8,3
	.asciz "application"

LDIFF_SYM105=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM105
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM106=Lfde10_end - Lfde10_start
	.long LDIFF_SYM106
Lfde10_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_AppDelegate_WillTerminate_UIKit_UIApplication

LDIFF_SYM107=Lme_a - AppsFlyerXamarinSampleApp_AppDelegate_WillTerminate_UIKit_UIApplication
	.long LDIFF_SYM107
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde10_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_15:

	.byte 5
	.asciz "UIKit_UIViewController"

	.byte 20,16
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

	.byte 20,16
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
	.long AppsFlyerXamarinSampleApp_ViewController__ctor_intptr
	.long Lme_b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM116=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM116
	.byte 2,125,8,3
	.asciz "handle"

LDIFF_SYM117=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM117
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM118=Lfde11_end - Lfde11_start
	.long LDIFF_SYM118
Lfde11_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_ViewController__ctor_intptr

LDIFF_SYM119=Lme_b - AppsFlyerXamarinSampleApp_ViewController__ctor_intptr
	.long LDIFF_SYM119
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.ViewController:ViewDidLoad"
	.asciz "AppsFlyerXamarinSampleApp_ViewController_ViewDidLoad"

	.byte 3,15
	.long AppsFlyerXamarinSampleApp_ViewController_ViewDidLoad
	.long Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM120=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM120
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM121=Lfde12_end - Lfde12_start
	.long LDIFF_SYM121
Lfde12_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_ViewController_ViewDidLoad

LDIFF_SYM122=Lme_c - AppsFlyerXamarinSampleApp_ViewController_ViewDidLoad
	.long LDIFF_SYM122
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,40
	.align 2
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.ViewController:DidReceiveMemoryWarning"
	.asciz "AppsFlyerXamarinSampleApp_ViewController_DidReceiveMemoryWarning"

	.byte 3,21
	.long AppsFlyerXamarinSampleApp_ViewController_DidReceiveMemoryWarning
	.long Lme_d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM123=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM123
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM124=Lfde13_end - Lfde13_start
	.long LDIFF_SYM124
Lfde13_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_ViewController_DidReceiveMemoryWarning

LDIFF_SYM125=Lme_d - AppsFlyerXamarinSampleApp_ViewController_DidReceiveMemoryWarning
	.long LDIFF_SYM125
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,40
	.align 2
Lfde13_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_17:

	.byte 5
	.asciz "UIKit_UIControl"

	.byte 20,16
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

	.byte 20,16
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
	.long AppsFlyerXamarinSampleApp_ViewController_UIButton3_TouchUpInside_UIKit_UIButton
	.long Lme_e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM134=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM134
	.byte 2,125,8,3
	.asciz "sender"

LDIFF_SYM135=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM136=Lfde14_end - Lfde14_start
	.long LDIFF_SYM136
Lfde14_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_ViewController_UIButton3_TouchUpInside_UIKit_UIButton

LDIFF_SYM137=Lme_e - AppsFlyerXamarinSampleApp_ViewController_UIButton3_TouchUpInside_UIKit_UIButton
	.long LDIFF_SYM137
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,48
	.align 2
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.ViewController:UIButton54_TouchUpInside"
	.asciz "AppsFlyerXamarinSampleApp_ViewController_UIButton54_TouchUpInside_UIKit_UIButton"

	.byte 3,33
	.long AppsFlyerXamarinSampleApp_ViewController_UIButton54_TouchUpInside_UIKit_UIButton
	.long Lme_f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM138=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM138
	.byte 2,125,16,3
	.asciz "sender"

LDIFF_SYM139=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM139
	.byte 2,125,20,11
	.asciz "addToCartEvent"

LDIFF_SYM140=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM140
	.byte 1,90,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM141=Lfde15_end - Lfde15_start
	.long LDIFF_SYM141
Lfde15_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_ViewController_UIButton54_TouchUpInside_UIKit_UIButton

LDIFF_SYM142=Lme_f - AppsFlyerXamarinSampleApp_ViewController_UIButton54_TouchUpInside_UIKit_UIButton
	.long LDIFF_SYM142
	.byte 12,13,0,72,14,8,135,2,68,14,32,132,8,133,7,134,6,136,5,138,4,139,3,142,1,68,14,104
	.align 2
Lfde15_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.ViewController:ReleaseDesignerOutlets"
	.asciz "AppsFlyerXamarinSampleApp_ViewController_ReleaseDesignerOutlets"

	.byte 4,26
	.long AppsFlyerXamarinSampleApp_ViewController_ReleaseDesignerOutlets
	.long Lme_10

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM143=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM143
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM144=Lfde16_end - Lfde16_start
	.long LDIFF_SYM144
Lfde16_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_ViewController_ReleaseDesignerOutlets

LDIFF_SYM145=Lme_10 - AppsFlyerXamarinSampleApp_ViewController_ReleaseDesignerOutlets
	.long LDIFF_SYM145
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde16_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_19:

	.byte 5
	.asciz "AppsFlyerXamarinBinding_AppsFlyerTrackerDelegate"

	.byte 20,16
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

	.byte 20,16
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
	.long AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate__ctor
	.long Lme_11

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM154=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM154
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM155=Lfde17_end - Lfde17_start
	.long LDIFF_SYM155
Lfde17_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate__ctor

LDIFF_SYM156=Lme_11 - AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate__ctor
	.long LDIFF_SYM156
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde17_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppsFlyerConversionDataDelegate:OnAppOpenAttribution"
	.asciz "AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttribution_Foundation_NSDictionary"

	.byte 5,11
	.long AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttribution_Foundation_NSDictionary
	.long Lme_12

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM157=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM157
	.byte 2,125,8,3
	.asciz "attributionData"

LDIFF_SYM158=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM158
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM159=Lfde18_end - Lfde18_start
	.long LDIFF_SYM159
Lfde18_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttribution_Foundation_NSDictionary

LDIFF_SYM160=Lme_12 - AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttribution_Foundation_NSDictionary
	.long LDIFF_SYM160
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde18_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_20:

	.byte 5
	.asciz "Foundation_NSError"

	.byte 20,16
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
	.long AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttributionFailure_Foundation_NSError
	.long Lme_13

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM165=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM165
	.byte 2,125,8,3
	.asciz "error"

LDIFF_SYM166=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM166
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM167=Lfde19_end - Lfde19_start
	.long LDIFF_SYM167
Lfde19_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttributionFailure_Foundation_NSError

LDIFF_SYM168=Lme_13 - AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttributionFailure_Foundation_NSError
	.long LDIFF_SYM168
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde19_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppsFlyerConversionDataDelegate:OnConversionDataReceived"
	.asciz "AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataReceived_Foundation_NSDictionary"

	.byte 5,19
	.long AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataReceived_Foundation_NSDictionary
	.long Lme_14

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM169=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM169
	.byte 2,125,8,3
	.asciz "installData"

LDIFF_SYM170=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM170
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM171=Lfde20_end - Lfde20_start
	.long LDIFF_SYM171
Lfde20_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataReceived_Foundation_NSDictionary

LDIFF_SYM172=Lme_14 - AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataReceived_Foundation_NSDictionary
	.long LDIFF_SYM172
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,48
	.align 2
Lfde20_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "AppsFlyerXamarinSampleApp.AppsFlyerConversionDataDelegate:OnConversionDataRequestFailure"
	.asciz "AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataRequestFailure_Foundation_NSError"

	.byte 5,23
	.long AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataRequestFailure_Foundation_NSError
	.long Lme_15

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM173=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM173
	.byte 2,125,8,3
	.asciz "error"

LDIFF_SYM174=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM174
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM175=Lfde21_end - Lfde21_start
	.long LDIFF_SYM175
Lfde21_start:

	.long 0
	.align 2
	.long AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataRequestFailure_Foundation_NSError

LDIFF_SYM176=Lme_15 - AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataRequestFailure_Foundation_NSError
	.long LDIFF_SYM176
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
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

	.byte 0,5,2
	.long AppsFlyerXamarinSampleApp_Application_Main_string__

	.byte 4,1,1,10,3,8,2,196,0,1,8,119,3,1,2,208,0,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long AppsFlyerXamarinSampleApp_AppDelegate_get_Window

	.byte 4,2,1,10,3,15,2,200,0,1,2,192,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long AppsFlyerXamarinSampleApp_AppDelegate_set_Window_UIKit_UIWindow

	.byte 4,2,1,10,3,16,2,200,0,1,2,228,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long AppsFlyerXamarinSampleApp_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary

	.byte 4,2,1,10,3,20,2,216,0,1,8,122,8,63,3,2,2,52,1,3,1,2,196,0,1,3,1,2,212,0,1,3
	.byte 1,2,212,0,1,3,2,2,60,1,3,2,2,236,0,1,8,117,2,48,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long AppsFlyerXamarinSampleApp_AppDelegate_OnResignActivation_UIKit_UIApplication

	.byte 4,2,1,10,3,42,2,200,0,1,8,121,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long AppsFlyerXamarinSampleApp_AppDelegate_DidEnterBackground_UIKit_UIApplication

	.byte 4,2,1,10,3,50,2,200,0,1,8,119,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long AppsFlyerXamarinSampleApp_AppDelegate_WillEnterForeground_UIKit_UIApplication

	.byte 4,2,1,10,3,56,2,200,0,1,8,119,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long AppsFlyerXamarinSampleApp_AppDelegate_OnActivated_UIKit_UIApplication

	.byte 4,2,1,10,3,62,2,200,0,1,8,119,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long AppsFlyerXamarinSampleApp_AppDelegate_WillTerminate_UIKit_UIApplication

	.byte 4,2,1,10,3,196,0,2,200,0,1,8,118,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long AppsFlyerXamarinSampleApp_ViewController__ctor_intptr

	.byte 4,3,1,10,3,9,2,200,0,1,3,1,2,36,1,243,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long AppsFlyerXamarinSampleApp_ViewController_ViewDidLoad

	.byte 4,3,1,10,3,14,2,196,0,1,8,117,3,2,2,48,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long AppsFlyerXamarinSampleApp_ViewController_DidReceiveMemoryWarning

	.byte 4,3,1,10,3,20,2,196,0,1,8,117,3,2,2,48,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long AppsFlyerXamarinSampleApp_ViewController_UIButton3_TouchUpInside_UIKit_UIButton

	.byte 4,3,1,10,3,26,2,200,0,1,8,117,3,2,2,252,0,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long AppsFlyerXamarinSampleApp_ViewController_UIButton54_TouchUpInside_UIKit_UIButton

	.byte 4,3,1,10,3,32,2,204,0,1,8,117,3,2,2,240,3,1,3,1,2,240,0,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long AppsFlyerXamarinSampleApp_ViewController_ReleaseDesignerOutlets

	.byte 4,4,1,10,3,25,2,196,0,1,8,117,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttribution_Foundation_NSDictionary

	.byte 4,5,1,10,3,10,2,200,0,1,8,118,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnAppOpenAttributionFailure_Foundation_NSError

	.byte 4,5,1,10,3,14,2,200,0,1,8,118,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataReceived_Foundation_NSDictionary

	.byte 4,5,1,10,3,18,2,200,0,1,8,117,3,1,2,140,1,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long AppsFlyerXamarinSampleApp_AppsFlyerConversionDataDelegate_OnConversionDataRequestFailure_Foundation_NSError

	.byte 4,5,1,10,3,22,2,200,0,1,8,118,2,44,1,0,1,1,0,1,1
Ldebug_line_end:
.text
	.align 3
mem_end:
