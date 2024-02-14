; ModuleID = 'obj\Release\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [146 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 56
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 44
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 52
	i32 165246403, ; 3: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 17
	i32 166922606, ; 4: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 12
	i32 182336117, ; 5: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 29
	i32 232815796, ; 6: System.Web.Services => 0xde07cb4 => 34
	i32 318968648, ; 7: Xamarin.AndroidX.Activity.dll => 0x13031348 => 47
	i32 321597661, ; 8: System.Numerics => 0x132b30dd => 8
	i32 342366114, ; 9: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 24
	i32 393699800, ; 10: Firebase => 0x177761d8 => 39
	i32 442521989, ; 11: Xamarin.Essentials => 0x1a605985 => 49
	i32 450948140, ; 12: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 22
	i32 465846621, ; 13: mscorlib => 0x1bc4415d => 3
	i32 469710990, ; 14: System.dll => 0x1bff388e => 6
	i32 514659665, ; 15: Xamarin.Android.Support.Compat => 0x1ead1551 => 12
	i32 548916678, ; 16: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 68
	i32 610194910, ; 17: System.Reactive.dll => 0x245ed5de => 46
	i32 627609679, ; 18: Xamarin.AndroidX.CustomView => 0x2568904f => 20
	i32 662205335, ; 19: System.Text.Encodings.Web.dll => 0x27787397 => 71
	i32 690569205, ; 20: System.Xml.Linq.dll => 0x29293ff5 => 11
	i32 809851609, ; 21: System.Drawing.Common.dll => 0x30455ad9 => 33
	i32 928116545, ; 22: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 56
	i32 955402788, ; 23: Newtonsoft.Json => 0x38f24a24 => 44
	i32 958213972, ; 24: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 13
	i32 967690846, ; 25: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 24
	i32 974778368, ; 26: FormsViewGroup.dll => 0x3a19f000 => 42
	i32 1012816738, ; 27: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 48
	i32 1035644815, ; 28: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 15
	i32 1042160112, ; 29: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 54
	i32 1052210849, ; 30: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 26
	i32 1098259244, ; 31: System => 0x41761b2c => 6
	i32 1110581358, ; 32: Xamarin.Firebase.Auth => 0x4232206e => 50
	i32 1282157572, ; 33: FirebaseDatabase => 0x4c6c2c04 => 41
	i32 1293217323, ; 34: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 21
	i32 1333047053, ; 35: Xamarin.Firebase.Common => 0x4f74af0d => 51
	i32 1365406463, ; 36: System.ServiceModel.Internals.dll => 0x516272ff => 35
	i32 1376866003, ; 37: Xamarin.AndroidX.SavedState => 0x52114ed3 => 48
	i32 1406073936, ; 38: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 18
	i32 1411638395, ; 39: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 9
	i32 1460219004, ; 40: Xamarin.Forms.Xaml => 0x57092c7c => 55
	i32 1461234159, ; 41: System.Collections.Immutable.dll => 0x5718a9ef => 70
	i32 1469204771, ; 42: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 14
	i32 1479771757, ; 43: System.Collections.Immutable => 0x5833866d => 70
	i32 1580996379, ; 44: Google.Apis.Auth.PlatformServices => 0x5e3c171b => 65
	i32 1592978981, ; 45: System.Runtime.Serialization.dll => 0x5ef2ee25 => 0
	i32 1622152042, ; 46: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 27
	i32 1639515021, ; 47: System.Net.Http.dll => 0x61b9038d => 7
	i32 1658251792, ; 48: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 31
	i32 1729485958, ; 49: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 16
	i32 1766324549, ; 50: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 29
	i32 1776026572, ; 51: System.Core.dll => 0x69dc03cc => 5
	i32 1788241197, ; 52: Xamarin.AndroidX.Fragment => 0x6a96652d => 22
	i32 1796167890, ; 53: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 68
	i32 1808609942, ; 54: Xamarin.AndroidX.Loader => 0x6bcd3296 => 27
	i32 1813201214, ; 55: Xamarin.Google.Android.Material => 0x6c13413e => 31
	i32 1867746548, ; 56: Xamarin.Essentials.dll => 0x6f538cf4 => 49
	i32 1878053835, ; 57: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 55
	i32 1908813208, ; 58: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 58
	i32 2006872308, ; 59: MyWork.Android => 0x779e70f4 => 60
	i32 2011961780, ; 60: System.Buffers.dll => 0x77ec19b4 => 4
	i32 2019465201, ; 61: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 26
	i32 2055257422, ; 62: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 25
	i32 2097448633, ; 63: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 23
	i32 2099470472, ; 64: MyWork.Android.dll => 0x7d236088 => 60
	i32 2100156370, ; 65: MyWork => 0x7d2dd7d2 => 69
	i32 2126786730, ; 66: Xamarin.Forms.Platform.Android => 0x7ec430aa => 53
	i32 2129483829, ; 67: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 57
	i32 2201231467, ; 68: System.Net.Http => 0x8334206b => 7
	i32 2216717168, ; 69: Firebase.Auth.dll => 0x84206b70 => 38
	i32 2279755925, ; 70: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 28
	i32 2382033717, ; 71: Xamarin.Firebase.Auth.dll => 0x8dfaf335 => 50
	i32 2475788418, ; 72: Java.Interop.dll => 0x93918882 => 1
	i32 2486847491, ; 73: Google.Api.Gax => 0x943a4803 => 62
	i32 2570120770, ; 74: System.Text.Encodings.Web => 0x9930ee42 => 71
	i32 2595928349, ; 75: FirebaseAdmin => 0x9abab91d => 61
	i32 2629053246, ; 76: Google.Api.Gax.Rest => 0x9cb42b3e => 63
	i32 2662621783, ; 77: MyWork.dll => 0x9eb46257 => 69
	i32 2732626843, ; 78: Xamarin.AndroidX.Activity => 0xa2e0939b => 47
	i32 2737747696, ; 79: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 14
	i32 2766581644, ; 80: Xamarin.Forms.Core => 0xa4e6af8c => 52
	i32 2778768386, ; 81: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 30
	i32 2810250172, ; 82: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 18
	i32 2819470561, ; 83: System.Xml.dll => 0xa80db4e1 => 10
	i32 2847418871, ; 84: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 57
	i32 2853208004, ; 85: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 30
	i32 2893550578, ; 86: Google.Apis.Core => 0xac7813f2 => 66
	i32 2905242038, ; 87: mscorlib.dll => 0xad2a79b6 => 3
	i32 2978675010, ; 88: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 21
	i32 2990604888, ; 89: Google.Apis => 0xb2410258 => 67
	i32 3044182254, ; 90: FormsViewGroup => 0xb57288ee => 42
	i32 3058099980, ; 91: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 59
	i32 3071899978, ; 92: Xamarin.Firebase.Common.dll => 0xb719794a => 51
	i32 3092211740, ; 93: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 13
	i32 3111772706, ; 94: System.Runtime.Serialization => 0xb979e222 => 0
	i32 3124832203, ; 95: System.Threading.Tasks.Extensions => 0xba4127cb => 36
	i32 3130021562, ; 96: Google.Apis.Auth.PlatformServices.dll => 0xba9056ba => 65
	i32 3203277885, ; 97: Google.Api.Gax.dll => 0xbeee243d => 62
	i32 3204380047, ; 98: System.Data.dll => 0xbefef58f => 32
	i32 3230466174, ; 99: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 58
	i32 3247949154, ; 100: Mono.Security => 0xc197c562 => 37
	i32 3249260365, ; 101: RestSharp.dll => 0xc1abc74d => 45
	i32 3258312781, ; 102: Xamarin.AndroidX.CardView => 0xc235e84d => 16
	i32 3265893370, ; 103: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 36
	i32 3317135071, ; 104: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 20
	i32 3317144872, ; 105: System.Data => 0xc5b79d28 => 32
	i32 3322403133, ; 106: Firebase.dll => 0xc607d93d => 39
	i32 3353484488, ; 107: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 23
	i32 3358260929, ; 108: System.Text.Json => 0xc82afec1 => 72
	i32 3362522851, ; 109: Xamarin.AndroidX.Core => 0xc86c06e3 => 19
	i32 3366347497, ; 110: Java.Interop => 0xc8a662e9 => 1
	i32 3374999561, ; 111: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 28
	i32 3395150330, ; 112: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 9
	i32 3404865022, ; 113: System.ServiceModel.Internals => 0xcaf21dfe => 35
	i32 3429136800, ; 114: System.Xml => 0xcc6479a0 => 10
	i32 3453592554, ; 115: Google.Apis.Core.dll => 0xcdd9a3ea => 66
	i32 3476120550, ; 116: Mono.Android => 0xcf3163e6 => 2
	i32 3485117614, ; 117: System.Text.Json.dll => 0xcfbaacae => 72
	i32 3509114376, ; 118: System.Xml.Linq => 0xd128d608 => 11
	i32 3536029504, ; 119: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 53
	i32 3596207933, ; 120: LiteDB.dll => 0xd659c73d => 43
	i32 3621458322, ; 121: Google.Api.Gax.Rest.dll => 0xd7db1192 => 63
	i32 3629588173, ; 122: LiteDB => 0xd8571ecd => 43
	i32 3632359727, ; 123: Xamarin.Forms.Platform => 0xd881692f => 54
	i32 3641597786, ; 124: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 25
	i32 3655481159, ; 125: Firebase.Storage => 0xd9e23747 => 40
	i32 3672681054, ; 126: Mono.Android.dll => 0xdae8aa5e => 2
	i32 3676310014, ; 127: System.Web.Services.dll => 0xdb2009fe => 34
	i32 3689375977, ; 128: System.Drawing.Common => 0xdbe768e9 => 33
	i32 3731644420, ; 129: System.Reactive => 0xde6c6004 => 46
	i32 3786282454, ; 130: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 17
	i32 3793997468, ; 131: Google.Apis.Auth.dll => 0xe223ce9c => 64
	i32 3816437471, ; 132: RestSharp => 0xe37a36df => 45
	i32 3822811650, ; 133: FirebaseDatabase.dll => 0xe3db7a02 => 41
	i32 3829621856, ; 134: System.Numerics.dll => 0xe4436460 => 8
	i32 3896760992, ; 135: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 19
	i32 3929187773, ; 136: Firebase.Storage.dll => 0xea32a5bd => 40
	i32 3955647286, ; 137: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 15
	i32 3970018735, ; 138: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 59
	i32 4024013275, ; 139: Firebase.Auth => 0xefd991db => 38
	i32 4059682726, ; 140: Google.Apis.dll => 0xf1f9d7a6 => 67
	i32 4082882467, ; 141: Google.Apis.Auth => 0xf35bd7a3 => 64
	i32 4105002889, ; 142: Mono.Security.dll => 0xf4ad5f89 => 37
	i32 4151237749, ; 143: System.Core => 0xf76edc75 => 5
	i32 4177102269, ; 144: FirebaseAdmin.dll => 0xf8f985bd => 61
	i32 4260525087 ; 145: System.Buffers => 0xfdf2741f => 4
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [146 x i32] [
	i32 56, i32 44, i32 52, i32 17, i32 12, i32 29, i32 34, i32 47, ; 0..7
	i32 8, i32 24, i32 39, i32 49, i32 22, i32 3, i32 6, i32 12, ; 8..15
	i32 68, i32 46, i32 20, i32 71, i32 11, i32 33, i32 56, i32 44, ; 16..23
	i32 13, i32 24, i32 42, i32 48, i32 15, i32 54, i32 26, i32 6, ; 24..31
	i32 50, i32 41, i32 21, i32 51, i32 35, i32 48, i32 18, i32 9, ; 32..39
	i32 55, i32 70, i32 14, i32 70, i32 65, i32 0, i32 27, i32 7, ; 40..47
	i32 31, i32 16, i32 29, i32 5, i32 22, i32 68, i32 27, i32 31, ; 48..55
	i32 49, i32 55, i32 58, i32 60, i32 4, i32 26, i32 25, i32 23, ; 56..63
	i32 60, i32 69, i32 53, i32 57, i32 7, i32 38, i32 28, i32 50, ; 64..71
	i32 1, i32 62, i32 71, i32 61, i32 63, i32 69, i32 47, i32 14, ; 72..79
	i32 52, i32 30, i32 18, i32 10, i32 57, i32 30, i32 66, i32 3, ; 80..87
	i32 21, i32 67, i32 42, i32 59, i32 51, i32 13, i32 0, i32 36, ; 88..95
	i32 65, i32 62, i32 32, i32 58, i32 37, i32 45, i32 16, i32 36, ; 96..103
	i32 20, i32 32, i32 39, i32 23, i32 72, i32 19, i32 1, i32 28, ; 104..111
	i32 9, i32 35, i32 10, i32 66, i32 2, i32 72, i32 11, i32 53, ; 112..119
	i32 43, i32 63, i32 43, i32 54, i32 25, i32 40, i32 2, i32 34, ; 120..127
	i32 33, i32 46, i32 17, i32 64, i32 45, i32 41, i32 8, i32 19, ; 128..135
	i32 40, i32 15, i32 59, i32 38, i32 67, i32 64, i32 37, i32 5, ; 136..143
	i32 61, i32 4 ; 144..145
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
