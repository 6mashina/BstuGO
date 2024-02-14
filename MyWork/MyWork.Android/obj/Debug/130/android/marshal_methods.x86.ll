; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [312 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 101
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 132
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 23
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 127
	i32 57967248, ; 4: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 70
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 115
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 115
	i32 160529393, ; 7: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 41
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 82
	i32 166922606, ; 9: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 52
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 116
	i32 201930040, ; 11: Xamarin.Android.Arch.Core.Runtime => 0xc093538 => 42
	i32 209399409, ; 12: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 80
	i32 220171995, ; 13: System.Diagnostics.Debug => 0xd1f8edb => 144
	i32 230216969, ; 14: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 96
	i32 232815796, ; 15: System.Web.Services => 0xde07cb4 => 142
	i32 261689757, ; 16: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 85
	i32 278686392, ; 17: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 100
	i32 280482487, ; 18: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 94
	i32 318968648, ; 19: Xamarin.AndroidX.Activity.dll => 0x13031348 => 72
	i32 321597661, ; 20: System.Numerics => 0x132b30dd => 32
	i32 342366114, ; 21: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 98
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 30
	i32 388313361, ; 23: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 48
	i32 389971796, ; 24: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 54
	i32 393699800, ; 25: Firebase => 0x177761d8 => 6
	i32 441335492, ; 26: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 84
	i32 442521989, ; 27: Xamarin.Essentials => 0x1a605985 => 124
	i32 442565967, ; 28: System.Collections => 0x1a61054f => 148
	i32 450948140, ; 29: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 93
	i32 459347974, ; 30: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 147
	i32 465846621, ; 31: mscorlib => 0x1bc4415d => 21
	i32 469710990, ; 32: System.dll => 0x1bff388e => 28
	i32 476646585, ; 33: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 94
	i32 486930444, ; 34: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 105
	i32 514659665, ; 35: Xamarin.Android.Support.Compat => 0x1ead1551 => 52
	i32 524864063, ; 36: Xamarin.Android.Support.Print => 0x1f48ca3f => 65
	i32 526420162, ; 37: System.Transactions.dll => 0x1f6088c2 => 137
	i32 545304856, ; 38: System.Runtime.Extensions => 0x2080b118 => 153
	i32 548916678, ; 39: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 19
	i32 605376203, ; 40: System.IO.Compression.FileSystem => 0x24154ecb => 140
	i32 610194910, ; 41: System.Reactive.dll => 0x245ed5de => 34
	i32 627609679, ; 42: Xamarin.AndroidX.CustomView => 0x2568904f => 89
	i32 662205335, ; 43: System.Text.Encodings.Web.dll => 0x27787397 => 37
	i32 663517072, ; 44: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 121
	i32 666292255, ; 45: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 77
	i32 690569205, ; 46: System.Xml.Linq.dll => 0x29293ff5 => 40
	i32 692692150, ; 47: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 49
	i32 775507847, ; 48: System.IO.Compression => 0x2e394f87 => 29
	i32 801787702, ; 49: Xamarin.Android.Support.Interpolator => 0x2fca4f36 => 61
	i32 809851609, ; 50: System.Drawing.Common.dll => 0x30455ad9 => 139
	i32 843511501, ; 51: Xamarin.AndroidX.Print => 0x3246f6cd => 112
	i32 916714535, ; 52: Xamarin.Android.Support.Print.dll => 0x36a3f427 => 65
	i32 928116545, ; 53: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 132
	i32 955402788, ; 54: Newtonsoft.Json => 0x38f24a24 => 23
	i32 958213972, ; 55: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 64
	i32 967690846, ; 56: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 98
	i32 974778368, ; 57: FormsViewGroup.dll => 0x3a19f000 => 10
	i32 987342438, ; 58: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0x3ad9a666 => 45
	i32 992768348, ; 59: System.Collections.dll => 0x3b2c715c => 148
	i32 1012816738, ; 60: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 114
	i32 1035644815, ; 61: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 76
	i32 1042160112, ; 62: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 129
	i32 1052210849, ; 63: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 102
	i32 1098167829, ; 64: Xamarin.Android.Arch.Lifecycle.ViewModel => 0x4174b615 => 47
	i32 1098259244, ; 65: System => 0x41761b2c => 28
	i32 1110581358, ; 66: Xamarin.Firebase.Auth => 0x4232206e => 125
	i32 1175144683, ; 67: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 119
	i32 1178241025, ; 68: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 109
	i32 1204270330, ; 69: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 77
	i32 1267360935, ; 70: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 120
	i32 1282157572, ; 71: FirebaseDatabase => 0x4c6c2c04 => 9
	i32 1292763917, ; 72: Xamarin.Android.Support.CursorAdapter.dll => 0x4d0e030d => 56
	i32 1293217323, ; 73: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 91
	i32 1297413738, ; 74: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0x4d54f66a => 44
	i32 1324164729, ; 75: System.Linq => 0x4eed2679 => 149
	i32 1333047053, ; 76: Xamarin.Firebase.Common => 0x4f74af0d => 126
	i32 1364015309, ; 77: System.IO => 0x514d38cd => 152
	i32 1365406463, ; 78: System.ServiceModel.Internals.dll => 0x516272ff => 143
	i32 1376866003, ; 79: Xamarin.AndroidX.SavedState => 0x52114ed3 => 114
	i32 1395857551, ; 80: Xamarin.AndroidX.Media.dll => 0x5333188f => 106
	i32 1406073936, ; 81: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 86
	i32 1411638395, ; 82: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 35
	i32 1445445088, ; 83: Xamarin.Android.Support.Fragment => 0x5627bde0 => 60
	i32 1457743152, ; 84: System.Runtime.Extensions.dll => 0x56e36530 => 153
	i32 1460219004, ; 85: Xamarin.Forms.Xaml => 0x57092c7c => 130
	i32 1461234159, ; 86: System.Collections.Immutable.dll => 0x5718a9ef => 26
	i32 1462112819, ; 87: System.IO.Compression.dll => 0x57261233 => 29
	i32 1469204771, ; 88: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 75
	i32 1479771757, ; 89: System.Collections.Immutable => 0x5833866d => 26
	i32 1550322496, ; 90: System.Reflection.Extensions.dll => 0x5c680b40 => 2
	i32 1574652163, ; 91: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 55
	i32 1580996379, ; 92: Google.Apis.Auth.PlatformServices => 0x5e3c171b => 14
	i32 1582372066, ; 93: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 90
	i32 1587447679, ; 94: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 41
	i32 1592978981, ; 95: System.Runtime.Serialization.dll => 0x5ef2ee25 => 4
	i32 1622152042, ; 96: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 104
	i32 1624863272, ; 97: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 123
	i32 1636350590, ; 98: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 88
	i32 1639515021, ; 99: System.Net.Http.dll => 0x61b9038d => 31
	i32 1657153582, ; 100: System.Runtime => 0x62c6282e => 36
	i32 1658241508, ; 101: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 117
	i32 1658251792, ; 102: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 131
	i32 1662014763, ; 103: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 69
	i32 1670060433, ; 104: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 85
	i32 1701541528, ; 105: System.Diagnostics.Debug.dll => 0x656b7698 => 144
	i32 1726116996, ; 106: System.Reflection.dll => 0x66e27484 => 145
	i32 1729485958, ; 107: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 81
	i32 1765942094, ; 108: System.Reflection.Extensions => 0x6942234e => 2
	i32 1766324549, ; 109: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 116
	i32 1776026572, ; 110: System.Core.dll => 0x69dc03cc => 27
	i32 1788241197, ; 111: Xamarin.AndroidX.Fragment => 0x6a96652d => 93
	i32 1796167890, ; 112: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 19
	i32 1808609942, ; 113: Xamarin.AndroidX.Loader => 0x6bcd3296 => 104
	i32 1813201214, ; 114: Xamarin.Google.Android.Material => 0x6c13413e => 131
	i32 1818569960, ; 115: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 110
	i32 1866717392, ; 116: Xamarin.Android.Support.Interpolator.dll => 0x6f43d8d0 => 61
	i32 1867746548, ; 117: Xamarin.Essentials.dll => 0x6f538cf4 => 124
	i32 1878053835, ; 118: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 130
	i32 1885316902, ; 119: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 78
	i32 1904755420, ; 120: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 3
	i32 1908813208, ; 121: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 134
	i32 1916660109, ; 122: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x723de98d => 47
	i32 1919157823, ; 123: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 107
	i32 2006872308, ; 124: MyWork.Android => 0x779e70f4 => 0
	i32 2011961780, ; 125: System.Buffers.dll => 0x77ec19b4 => 25
	i32 2019465201, ; 126: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 102
	i32 2037417872, ; 127: Xamarin.Android.Support.ViewPager => 0x79708790 => 71
	i32 2044222327, ; 128: Xamarin.Android.Support.Loader => 0x79d85b77 => 62
	i32 2055257422, ; 129: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 99
	i32 2079903147, ; 130: System.Runtime.dll => 0x7bf8cdab => 36
	i32 2090596640, ; 131: System.Numerics.Vectors => 0x7c9bf920 => 33
	i32 2097448633, ; 132: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 95
	i32 2099470472, ; 133: MyWork.Android.dll => 0x7d236088 => 0
	i32 2100156370, ; 134: MyWork => 0x7d2dd7d2 => 22
	i32 2126786730, ; 135: Xamarin.Forms.Platform.Android => 0x7ec430aa => 128
	i32 2129483829, ; 136: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 133
	i32 2139458754, ; 137: Xamarin.Android.Support.DrawerLayout => 0x7f858cc2 => 59
	i32 2166116741, ; 138: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 55
	i32 2196165013, ; 139: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 70
	i32 2201231467, ; 140: System.Net.Http => 0x8334206b => 31
	i32 2216717168, ; 141: Firebase.Auth.dll => 0x84206b70 => 5
	i32 2217644978, ; 142: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 119
	i32 2244775296, ; 143: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 105
	i32 2256548716, ; 144: Xamarin.AndroidX.MultiDex => 0x8680336c => 107
	i32 2261435625, ; 145: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 97
	i32 2279755925, ; 146: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 113
	i32 2315684594, ; 147: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 73
	i32 2330457430, ; 148: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 54
	i32 2330986192, ; 149: Xamarin.Android.Support.SlidingPaneLayout.dll => 0x8af006d0 => 66
	i32 2373288475, ; 150: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 60
	i32 2382033717, ; 151: Xamarin.Firebase.Auth.dll => 0x8dfaf335 => 125
	i32 2409053734, ; 152: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 111
	i32 2440966767, ; 153: Xamarin.Android.Support.Loader.dll => 0x917e326f => 62
	i32 2454642406, ; 154: System.Text.Encoding.dll => 0x924edee6 => 151
	i32 2465532216, ; 155: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 84
	i32 2471841756, ; 156: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 157: Java.Interop.dll => 0x93918882 => 17
	i32 2486847491, ; 158: Google.Api.Gax => 0x943a4803 => 11
	i32 2487632829, ; 159: Xamarin.Android.Support.DocumentFile => 0x944643bd => 58
	i32 2501346920, ; 160: System.Data.DataSetExtensions => 0x95178668 => 138
	i32 2505896520, ; 161: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 101
	i32 2570120770, ; 162: System.Text.Encodings.Web => 0x9930ee42 => 37
	i32 2581819634, ; 163: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 120
	i32 2595928349, ; 164: FirebaseAdmin => 0x9abab91d => 8
	i32 2620871830, ; 165: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 88
	i32 2624644809, ; 166: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 92
	i32 2629053246, ; 167: Google.Api.Gax.Rest => 0x9cb42b3e => 12
	i32 2633051222, ; 168: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 100
	i32 2662621783, ; 169: MyWork.dll => 0x9eb46257 => 22
	i32 2693849962, ; 170: System.IO.dll => 0xa090e36a => 152
	i32 2698266930, ; 171: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa0d44932 => 45
	i32 2701096212, ; 172: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 117
	i32 2715334215, ; 173: System.Threading.Tasks.dll => 0xa1d8b647 => 146
	i32 2732626843, ; 174: Xamarin.AndroidX.Activity => 0xa2e0939b => 72
	i32 2737747696, ; 175: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 75
	i32 2751899777, ; 176: Xamarin.Android.Support.Collections => 0xa406a881 => 51
	i32 2766581644, ; 177: Xamarin.Forms.Core => 0xa4e6af8c => 127
	i32 2778768386, ; 178: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 122
	i32 2788639665, ; 179: Xamarin.Android.Support.LocalBroadcastManager => 0xa63743b1 => 63
	i32 2788775637, ; 180: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0xa63956d5 => 67
	i32 2810250172, ; 181: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 86
	i32 2819470561, ; 182: System.Xml.dll => 0xa80db4e1 => 39
	i32 2847418871, ; 183: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 133
	i32 2853208004, ; 184: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 122
	i32 2855708567, ; 185: Xamarin.AndroidX.Transition => 0xaa36a797 => 118
	i32 2876493027, ; 186: Xamarin.Android.Support.SwipeRefreshLayout => 0xab73cce3 => 67
	i32 2893257763, ; 187: Xamarin.Android.Arch.Core.Runtime.dll => 0xac739c23 => 42
	i32 2893550578, ; 188: Google.Apis.Core => 0xac7813f2 => 15
	i32 2901442782, ; 189: System.Reflection => 0xacf080de => 145
	i32 2903344695, ; 190: System.ComponentModel.Composition => 0xad0d8637 => 141
	i32 2905242038, ; 191: mscorlib.dll => 0xad2a79b6 => 21
	i32 2916838712, ; 192: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 123
	i32 2919462931, ; 193: System.Numerics.Vectors.dll => 0xae037813 => 33
	i32 2921128767, ; 194: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 74
	i32 2921692953, ; 195: Xamarin.Android.Support.CustomView.dll => 0xae257f19 => 57
	i32 2922925221, ; 196: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 69
	i32 2978675010, ; 197: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 91
	i32 2990604888, ; 198: Google.Apis => 0xb2410258 => 16
	i32 3024354802, ; 199: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 96
	i32 3044182254, ; 200: FormsViewGroup => 0xb57288ee => 10
	i32 3056250942, ; 201: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0xb62ab03e => 50
	i32 3057625584, ; 202: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 108
	i32 3058099980, ; 203: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 135
	i32 3068715062, ; 204: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 43
	i32 3071899978, ; 205: Xamarin.Firebase.Common.dll => 0xb719794a => 126
	i32 3075834255, ; 206: System.Threading.Tasks => 0xb755818f => 146
	i32 3092211740, ; 207: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 64
	i32 3111772706, ; 208: System.Runtime.Serialization => 0xb979e222 => 4
	i32 3124832203, ; 209: System.Threading.Tasks.Extensions => 0xba4127cb => 154
	i32 3130021562, ; 210: Google.Apis.Auth.PlatformServices.dll => 0xba9056ba => 14
	i32 3203277885, ; 211: Google.Api.Gax.dll => 0xbeee243d => 11
	i32 3204380047, ; 212: System.Data.dll => 0xbefef58f => 136
	i32 3204912593, ; 213: Xamarin.Android.Support.AsyncLayoutInflater => 0xbf0715d1 => 50
	i32 3211777861, ; 214: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 90
	i32 3220365878, ; 215: System.Threading => 0xbff2e236 => 150
	i32 3230466174, ; 216: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 134
	i32 3233339011, ; 217: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xc0b8d683 => 44
	i32 3247949154, ; 218: Mono.Security => 0xc197c562 => 155
	i32 3249260365, ; 219: RestSharp.dll => 0xc1abc74d => 24
	i32 3258312781, ; 220: Xamarin.AndroidX.CardView => 0xc235e84d => 81
	i32 3265893370, ; 221: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 154
	i32 3267021929, ; 222: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 79
	i32 3296380511, ; 223: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 51
	i32 3299363146, ; 224: System.Text.Encoding => 0xc4a8494a => 151
	i32 3317135071, ; 225: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 89
	i32 3317144872, ; 226: System.Data => 0xc5b79d28 => 136
	i32 3321585405, ; 227: Xamarin.Android.Support.DocumentFile.dll => 0xc5fb5efd => 58
	i32 3322403133, ; 228: Firebase.dll => 0xc607d93d => 6
	i32 3340431453, ; 229: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 78
	i32 3346324047, ; 230: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 109
	i32 3352662376, ; 231: Xamarin.Android.Support.CoordinaterLayout => 0xc7d59168 => 53
	i32 3353484488, ; 232: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 95
	i32 3357663996, ; 233: Xamarin.Android.Support.CursorAdapter => 0xc821e2fc => 56
	i32 3358260929, ; 234: System.Text.Json => 0xc82afec1 => 38
	i32 3362522851, ; 235: Xamarin.AndroidX.Core => 0xc86c06e3 => 87
	i32 3366347497, ; 236: Java.Interop => 0xc8a662e9 => 17
	i32 3374999561, ; 237: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 113
	i32 3395150330, ; 238: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 35
	i32 3404865022, ; 239: System.ServiceModel.Internals => 0xcaf21dfe => 143
	i32 3429136800, ; 240: System.Xml => 0xcc6479a0 => 39
	i32 3430777524, ; 241: netstandard => 0xcc7d82b4 => 1
	i32 3439690031, ; 242: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 49
	i32 3441283291, ; 243: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 92
	i32 3453592554, ; 244: Google.Apis.Core.dll => 0xcdd9a3ea => 15
	i32 3476120550, ; 245: Mono.Android => 0xcf3163e6 => 20
	i32 3485117614, ; 246: System.Text.Json.dll => 0xcfbaacae => 38
	i32 3486566296, ; 247: System.Transactions => 0xcfd0c798 => 137
	i32 3493954962, ; 248: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 83
	i32 3501239056, ; 249: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 79
	i32 3509114376, ; 250: System.Xml.Linq => 0xd128d608 => 40
	i32 3536029504, ; 251: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 128
	i32 3547625832, ; 252: Xamarin.Android.Support.SlidingPaneLayout => 0xd3747968 => 66
	i32 3567349600, ; 253: System.ComponentModel.Composition.dll => 0xd4a16f60 => 141
	i32 3596207933, ; 254: LiteDB.dll => 0xd659c73d => 18
	i32 3608519521, ; 255: System.Linq.dll => 0xd715a361 => 149
	i32 3618140916, ; 256: Xamarin.AndroidX.Preference => 0xd7a872f4 => 111
	i32 3621458322, ; 257: Google.Api.Gax.Rest.dll => 0xd7db1192 => 12
	i32 3627220390, ; 258: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 112
	i32 3629588173, ; 259: LiteDB => 0xd8571ecd => 18
	i32 3632359727, ; 260: Xamarin.Forms.Platform => 0xd881692f => 129
	i32 3633644679, ; 261: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 74
	i32 3641597786, ; 262: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 99
	i32 3655481159, ; 263: Firebase.Storage => 0xd9e23747 => 7
	i32 3664423555, ; 264: Xamarin.Android.Support.ViewPager.dll => 0xda6aaa83 => 71
	i32 3672681054, ; 265: Mono.Android.dll => 0xdae8aa5e => 20
	i32 3676310014, ; 266: System.Web.Services.dll => 0xdb2009fe => 142
	i32 3678221644, ; 267: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 68
	i32 3681174138, ; 268: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 43
	i32 3682565725, ; 269: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 80
	i32 3684561358, ; 270: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 83
	i32 3684933406, ; 271: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 3
	i32 3689375977, ; 272: System.Drawing.Common => 0xdbe768e9 => 139
	i32 3714038699, ; 273: Xamarin.Android.Support.LocalBroadcastManager.dll => 0xdd5fbbab => 63
	i32 3718463572, ; 274: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 48
	i32 3718780102, ; 275: Xamarin.AndroidX.Annotation => 0xdda814c6 => 73
	i32 3724971120, ; 276: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 108
	i32 3731644420, ; 277: System.Reactive => 0xde6c6004 => 34
	i32 3758932259, ; 278: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 97
	i32 3776062606, ; 279: Xamarin.Android.Support.DrawerLayout.dll => 0xe112248e => 59
	i32 3786282454, ; 280: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 82
	i32 3793997468, ; 281: Google.Apis.Auth.dll => 0xe223ce9c => 13
	i32 3816437471, ; 282: RestSharp => 0xe37a36df => 24
	i32 3822602673, ; 283: Xamarin.AndroidX.Media => 0xe3d849b1 => 106
	i32 3822811650, ; 284: FirebaseDatabase.dll => 0xe3db7a02 => 9
	i32 3829621856, ; 285: System.Numerics.dll => 0xe4436460 => 32
	i32 3832731800, ; 286: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe472d898 => 53
	i32 3862817207, ; 287: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 46
	i32 3874897629, ; 288: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 46
	i32 3883175360, ; 289: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 68
	i32 3885922214, ; 290: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 118
	i32 3896760992, ; 291: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 87
	i32 3920810846, ; 292: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 140
	i32 3921031405, ; 293: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 121
	i32 3929187773, ; 294: Firebase.Storage.dll => 0xea32a5bd => 7
	i32 3931092270, ; 295: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 110
	i32 3945713374, ; 296: System.Data.DataSetExtensions.dll => 0xeb2ecede => 138
	i32 3955647286, ; 297: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 76
	i32 3970018735, ; 298: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 135
	i32 4024013275, ; 299: Firebase.Auth => 0xefd991db => 5
	i32 4025784931, ; 300: System.Memory => 0xeff49a63 => 30
	i32 4059682726, ; 301: Google.Apis.dll => 0xf1f9d7a6 => 16
	i32 4063435586, ; 302: Xamarin.Android.Support.CustomView => 0xf2331b42 => 57
	i32 4073602200, ; 303: System.Threading.dll => 0xf2ce3c98 => 150
	i32 4082882467, ; 304: Google.Apis.Auth => 0xf35bd7a3 => 13
	i32 4105002889, ; 305: Mono.Security.dll => 0xf4ad5f89 => 155
	i32 4151237749, ; 306: System.Core => 0xf76edc75 => 27
	i32 4177102269, ; 307: FirebaseAdmin.dll => 0xf8f985bd => 8
	i32 4181436372, ; 308: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 147
	i32 4182413190, ; 309: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 103
	i32 4260525087, ; 310: System.Buffers => 0xfdf2741f => 25
	i32 4292120959 ; 311: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 103
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [312 x i32] [
	i32 101, i32 132, i32 23, i32 127, i32 70, i32 115, i32 115, i32 41, ; 0..7
	i32 82, i32 52, i32 116, i32 42, i32 80, i32 144, i32 96, i32 142, ; 8..15
	i32 85, i32 100, i32 94, i32 72, i32 32, i32 98, i32 30, i32 48, ; 16..23
	i32 54, i32 6, i32 84, i32 124, i32 148, i32 93, i32 147, i32 21, ; 24..31
	i32 28, i32 94, i32 105, i32 52, i32 65, i32 137, i32 153, i32 19, ; 32..39
	i32 140, i32 34, i32 89, i32 37, i32 121, i32 77, i32 40, i32 49, ; 40..47
	i32 29, i32 61, i32 139, i32 112, i32 65, i32 132, i32 23, i32 64, ; 48..55
	i32 98, i32 10, i32 45, i32 148, i32 114, i32 76, i32 129, i32 102, ; 56..63
	i32 47, i32 28, i32 125, i32 119, i32 109, i32 77, i32 120, i32 9, ; 64..71
	i32 56, i32 91, i32 44, i32 149, i32 126, i32 152, i32 143, i32 114, ; 72..79
	i32 106, i32 86, i32 35, i32 60, i32 153, i32 130, i32 26, i32 29, ; 80..87
	i32 75, i32 26, i32 2, i32 55, i32 14, i32 90, i32 41, i32 4, ; 88..95
	i32 104, i32 123, i32 88, i32 31, i32 36, i32 117, i32 131, i32 69, ; 96..103
	i32 85, i32 144, i32 145, i32 81, i32 2, i32 116, i32 27, i32 93, ; 104..111
	i32 19, i32 104, i32 131, i32 110, i32 61, i32 124, i32 130, i32 78, ; 112..119
	i32 3, i32 134, i32 47, i32 107, i32 0, i32 25, i32 102, i32 71, ; 120..127
	i32 62, i32 99, i32 36, i32 33, i32 95, i32 0, i32 22, i32 128, ; 128..135
	i32 133, i32 59, i32 55, i32 70, i32 31, i32 5, i32 119, i32 105, ; 136..143
	i32 107, i32 97, i32 113, i32 73, i32 54, i32 66, i32 60, i32 125, ; 144..151
	i32 111, i32 62, i32 151, i32 84, i32 1, i32 17, i32 11, i32 58, ; 152..159
	i32 138, i32 101, i32 37, i32 120, i32 8, i32 88, i32 92, i32 12, ; 160..167
	i32 100, i32 22, i32 152, i32 45, i32 117, i32 146, i32 72, i32 75, ; 168..175
	i32 51, i32 127, i32 122, i32 63, i32 67, i32 86, i32 39, i32 133, ; 176..183
	i32 122, i32 118, i32 67, i32 42, i32 15, i32 145, i32 141, i32 21, ; 184..191
	i32 123, i32 33, i32 74, i32 57, i32 69, i32 91, i32 16, i32 96, ; 192..199
	i32 10, i32 50, i32 108, i32 135, i32 43, i32 126, i32 146, i32 64, ; 200..207
	i32 4, i32 154, i32 14, i32 11, i32 136, i32 50, i32 90, i32 150, ; 208..215
	i32 134, i32 44, i32 155, i32 24, i32 81, i32 154, i32 79, i32 51, ; 216..223
	i32 151, i32 89, i32 136, i32 58, i32 6, i32 78, i32 109, i32 53, ; 224..231
	i32 95, i32 56, i32 38, i32 87, i32 17, i32 113, i32 35, i32 143, ; 232..239
	i32 39, i32 1, i32 49, i32 92, i32 15, i32 20, i32 38, i32 137, ; 240..247
	i32 83, i32 79, i32 40, i32 128, i32 66, i32 141, i32 18, i32 149, ; 248..255
	i32 111, i32 12, i32 112, i32 18, i32 129, i32 74, i32 99, i32 7, ; 256..263
	i32 71, i32 20, i32 142, i32 68, i32 43, i32 80, i32 83, i32 3, ; 264..271
	i32 139, i32 63, i32 48, i32 73, i32 108, i32 34, i32 97, i32 59, ; 272..279
	i32 82, i32 13, i32 24, i32 106, i32 9, i32 32, i32 53, i32 46, ; 280..287
	i32 46, i32 68, i32 118, i32 87, i32 140, i32 121, i32 7, i32 110, ; 288..295
	i32 138, i32 76, i32 135, i32 5, i32 30, i32 16, i32 57, i32 150, ; 296..303
	i32 13, i32 155, i32 27, i32 8, i32 147, i32 103, i32 25, i32 103 ; 312..311
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
