; ModuleID = 'obj\Release\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Release\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [146 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 2
	i64 210515253464952879, ; 1: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 17
	i64 232391251801502327, ; 2: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 48
	i64 464346026994987652, ; 3: System.Reactive.dll => 0x671b04057e67284 => 46
	i64 687654259221141486, ; 4: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 57
	i64 702024105029695270, ; 5: System.Drawing.Common => 0x9be17343c0e7726 => 33
	i64 718159679911342543, ; 6: FirebaseAdmin.dll => 0x9f76a6c851fb1cf => 61
	i64 720058930071658100, ; 7: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 23
	i64 872800313462103108, ; 8: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 21
	i64 996343623809489702, ; 9: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 54
	i64 1000557547492888992, ; 10: Mono.Security.dll => 0xde2b1c9cba651a0 => 37
	i64 1120440138749646132, ; 11: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 31
	i64 1425944114962822056, ; 12: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 0
	i64 1624659445732251991, ; 13: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 14
	i64 1731380447121279447, ; 14: Newtonsoft.Json => 0x18071957e9b889d7 => 44
	i64 1795316252682057001, ; 15: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 15
	i64 1836611346387731153, ; 16: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 48
	i64 1865037103900624886, ; 17: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 68
	i64 1981742497975770890, ; 18: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 26
	i64 2040001226662520565, ; 19: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 36
	i64 2133195048986300728, ; 20: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 44
	i64 2262844636196693701, ; 21: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 21
	i64 2284400282711631002, ; 22: System.Web.Services => 0x1fb3d1f42fd4249a => 34
	i64 2329709569556905518, ; 23: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 25
	i64 2335503487726329082, ; 24: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 71
	i64 2337758774805907496, ; 25: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 9
	i64 2470498323731680442, ; 26: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 18
	i64 2547086958574651984, ; 27: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 47
	i64 2592350477072141967, ; 28: System.Xml.dll => 0x23f9e10627330e8f => 10
	i64 2624866290265602282, ; 29: mscorlib.dll => 0x246d65fbde2db8ea => 3
	i64 2783046991838674048, ; 30: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 9
	i64 2812926542227278819, ; 31: Google.Apis.Core.dll => 0x270985c960b98be3 => 66
	i64 2960931600190307745, ; 32: Xamarin.Forms.Core => 0x2917579a49927da1 => 52
	i64 3017704767998173186, ; 33: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 31
	i64 3022227708164871115, ; 34: Xamarin.Android.Support.Media.Compat.dll => 0x29f11c168f8293cb => 13
	i64 3289520064315143713, ; 35: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 24
	i64 3364695309916733813, ; 36: Xamarin.Firebase.Common => 0x2eb1cc8eb5028175 => 51
	i64 3411255996856937470, ; 37: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 58
	i64 3522470458906976663, ; 38: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 29
	i64 3531994851595924923, ; 39: System.Numerics => 0x31042a9aade235bb => 8
	i64 3727469159507183293, ; 40: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 28
	i64 4056584864658557221, ; 41: Google.Apis.Auth => 0x384be27113330925 => 64
	i64 4247996603072512073, ; 42: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 59
	i64 4525561845656915374, ; 43: System.ServiceModel.Internals => 0x3ece06856b710dae => 35
	i64 4794310189461587505, ; 44: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 47
	i64 4795410492532947900, ; 45: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 29
	i64 5052429638295086546, ; 46: FirebaseDatabase => 0x461dd5fcb33be5d2 => 41
	i64 5142919913060024034, ; 47: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 53
	i64 5203618020066742981, ; 48: Xamarin.Essentials => 0x4836f704f0e652c5 => 49
	i64 5507995362134886206, ; 49: System.Core.dll => 0x4c705499688c873e => 5
	i64 5665389054145784248, ; 50: Google.Apis.Core => 0x4e9f815406bee9b8 => 66
	i64 6085203216496545422, ; 51: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 54
	i64 6086316965293125504, ; 52: FormsViewGroup.dll => 0x5476f10882baef80 => 42
	i64 6218967553231149354, ; 53: Firebase.Auth.dll => 0x564e360a4805d92a => 38
	i64 6222399776351216807, ; 54: System.Text.Json.dll => 0x565a67a0ffe264a7 => 72
	i64 6401687960814735282, ; 55: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 25
	i64 6403742896930319886, ; 56: Xamarin.Firebase.Auth.dll => 0x58deaa3c7c766e0e => 50
	i64 6494981841148195907, ; 57: MyWork.Android => 0x5a22cf9298403443 => 60
	i64 6548213210057960872, ; 58: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 20
	i64 6591024623626361694, ; 59: System.Web.Services.dll => 0x5b7805f9751a1b5e => 34
	i64 6659513131007730089, ; 60: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 23
	i64 6876862101832370452, ; 61: System.Xml.Linq => 0x5f6f85a57d108914 => 11
	i64 6934772601320367100, ; 62: Google.Api.Gax.Rest => 0x603d42f05bcfe3fc => 63
	i64 6941080589610463230, ; 63: Google.Apis.Auth.PlatformServices => 0x6053ac0555172ffe => 65
	i64 7488575175965059935, ; 64: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 11
	i64 7602111570124318452, ; 65: System.Reactive => 0x698020320025a6f4 => 46
	i64 7635363394907363464, ; 66: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 52
	i64 7637365915383206639, ; 67: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 49
	i64 7654504624184590948, ; 68: System.Net.Http => 0x6a3a4366801b8264 => 7
	i64 7820441508502274321, ; 69: System.Data => 0x6c87ca1e14ff8111 => 32
	i64 7836164640616011524, ; 70: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 14
	i64 8083354569033831015, ; 71: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 24
	i64 8167236081217502503, ; 72: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 1
	i64 8195406069771384777, ; 73: Firebase.Storage.dll => 0x71bbee663acdb7c9 => 40
	i64 8518412311883997971, ; 74: System.Collections.Immutable => 0x76377add7c28e313 => 70
	i64 8626175481042262068, ; 75: Java.Interop => 0x77b654e585b55834 => 1
	i64 8702320156596882678, ; 76: Firebase.dll => 0x78c4da1357adccf6 => 39
	i64 9057635389615298436, ; 77: LiteDB => 0x7db32f65bf06d784 => 43
	i64 9296667808972889535, ; 78: LiteDB.dll => 0x8104661dcca35dbf => 43
	i64 9324707631942237306, ; 79: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 15
	i64 9662334977499516867, ; 80: System.Numerics.dll => 0x8617827802b0cfc3 => 8
	i64 9678050649315576968, ; 81: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 18
	i64 9808709177481450983, ; 82: Mono.Android.dll => 0x881f890734e555e7 => 2
	i64 9875200773399460291, ; 83: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 57
	i64 9998632235833408227, ; 84: Mono.Security => 0x8ac2470b209ebae3 => 37
	i64 10038780035334861115, ; 85: System.Net.Http.dll => 0x8b50e941206af13b => 7
	i64 10144742755892837524, ; 86: Firebase => 0x8cc95dc98eb5bc94 => 39
	i64 10218821437939648382, ; 87: Google.Apis.Auth.PlatformServices.dll => 0x8dd08bf4c78a077e => 65
	i64 10220684565739810458, ; 88: FirebaseAdmin => 0x8dd72a76063d2e9a => 61
	i64 10229024438826829339, ; 89: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 20
	i64 10430153318873392755, ; 90: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 19
	i64 10447083246144586668, ; 91: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 68
	i64 10823124638835005028, ; 92: Google.Api.Gax.dll => 0x963376840189d664 => 62
	i64 11023048688141570732, ; 93: System.Core => 0x98f9bc61168392ac => 5
	i64 11037814507248023548, ; 94: System.Xml => 0x992e31d0412bf7fc => 10
	i64 11162124722117608902, ; 95: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 30
	i64 11376461258732682436, ; 96: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 12
	i64 11529969570048099689, ; 97: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 30
	i64 12102847907131387746, ; 98: System.Buffers => 0xa7f5f40c43256f62 => 4
	i64 12145679461940342714, ; 99: System.Text.Json => 0xa88e1f1ebcb62fba => 72
	i64 12269460666702402136, ; 100: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 70
	i64 12414299427252656003, ; 101: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 12
	i64 12437742355241350664, ; 102: Google.Apis.dll => 0xac9bbcc62bfdb608 => 67
	i64 12451044538927396471, ; 103: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 22
	i64 12466513435562512481, ; 104: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 27
	i64 12528155905152483962, ; 105: Firebase.Auth => 0xaddcf36b3153827a => 38
	i64 12538491095302438457, ; 106: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 16
	i64 12700543734426720211, ; 107: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 17
	i64 12722065664929968482, ; 108: Google.Api.Gax.Rest.dll => 0xb08ddb515f583162 => 63
	i64 12887742145545859551, ; 109: FirebaseDatabase.dll => 0xb2da7532fe1771df => 41
	i64 12958614573187252691, ; 110: Google.Apis => 0xb3d63f4bf006c1d3 => 67
	i64 12963446364377008305, ; 111: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 33
	i64 13370592475155966277, ; 112: System.Runtime.Serialization => 0xb98de304062ea945 => 0
	i64 13454009404024712428, ; 113: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 56
	i64 13572454107664307259, ; 114: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 28
	i64 13647894001087880694, ; 115: System.Data.dll => 0xbd670f48cb071df6 => 32
	i64 13782512541859110153, ; 116: Google.Apis.Auth.dll => 0xbf45522249e0dd09 => 64
	i64 13959074834287824816, ; 117: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 22
	i64 13967638549803255703, ; 118: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 53
	i64 14124974489674258913, ; 119: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 16
	i64 14165531176311179688, ; 120: Xamarin.Firebase.Auth => 0xc496138d7abfc9a8 => 50
	i64 14438260825521943376, ; 121: RestSharp.dll => 0xc85f01b93fac7350 => 45
	i64 14551742072151931844, ; 122: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 71
	i64 14789919016435397935, ; 123: Xamarin.Firebase.Common.dll => 0xcd4058fc2f6d352f => 51
	i64 14792063746108907174, ; 124: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 56
	i64 14916196474747524434, ; 125: MyWork.dll => 0xcf00f9aa15429552 => 69
	i64 15370334346939861994, ; 126: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 19
	i64 15457813392950723921, ; 127: Xamarin.Android.Support.Media.Compat => 0xd6852f61c31a8551 => 13
	i64 15609085926864131306, ; 128: System.dll => 0xd89e9cf3334914ea => 6
	i64 15810740023422282496, ; 129: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 55
	i64 15930129725311349754, ; 130: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 59
	i64 15963349826457351533, ; 131: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 36
	i64 15987609494471769098, ; 132: Firebase.Storage => 0xdddf662115a6fc0a => 40
	i64 16154507427712707110, ; 133: System => 0xe03056ea4e39aa26 => 6
	i64 16588517629423600604, ; 134: MyWork => 0xe63640e4ec1943dc => 69
	i64 16714880742693338373, ; 135: MyWork.Android.dll => 0xe7f72f79eb40fd05 => 60
	i64 16833383113903931215, ; 136: mscorlib => 0xe99c30c1484d7f4f => 3
	i64 16955525858597485057, ; 137: Google.Api.Gax => 0xeb4e20ef25a73a01 => 62
	i64 17151170952569239713, ; 138: RestSharp => 0xee05331c4de338a1 => 45
	i64 17704177640604968747, ; 139: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 27
	i64 17710060891934109755, ; 140: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 26
	i64 17838668724098252521, ; 141: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 4
	i64 17882897186074144999, ; 142: FormsViewGroup => 0xf82cd03e3ac830e7 => 42
	i64 17892495832318972303, ; 143: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 55
	i64 17986907704309214542, ; 144: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 58
	i64 18129453464017766560 ; 145: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 35
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [146 x i32] [
	i32 2, i32 17, i32 48, i32 46, i32 57, i32 33, i32 61, i32 23, ; 0..7
	i32 21, i32 54, i32 37, i32 31, i32 0, i32 14, i32 44, i32 15, ; 8..15
	i32 48, i32 68, i32 26, i32 36, i32 44, i32 21, i32 34, i32 25, ; 16..23
	i32 71, i32 9, i32 18, i32 47, i32 10, i32 3, i32 9, i32 66, ; 24..31
	i32 52, i32 31, i32 13, i32 24, i32 51, i32 58, i32 29, i32 8, ; 32..39
	i32 28, i32 64, i32 59, i32 35, i32 47, i32 29, i32 41, i32 53, ; 40..47
	i32 49, i32 5, i32 66, i32 54, i32 42, i32 38, i32 72, i32 25, ; 48..55
	i32 50, i32 60, i32 20, i32 34, i32 23, i32 11, i32 63, i32 65, ; 56..63
	i32 11, i32 46, i32 52, i32 49, i32 7, i32 32, i32 14, i32 24, ; 64..71
	i32 1, i32 40, i32 70, i32 1, i32 39, i32 43, i32 43, i32 15, ; 72..79
	i32 8, i32 18, i32 2, i32 57, i32 37, i32 7, i32 39, i32 65, ; 80..87
	i32 61, i32 20, i32 19, i32 68, i32 62, i32 5, i32 10, i32 30, ; 88..95
	i32 12, i32 30, i32 4, i32 72, i32 70, i32 12, i32 67, i32 22, ; 96..103
	i32 27, i32 38, i32 16, i32 17, i32 63, i32 41, i32 67, i32 33, ; 104..111
	i32 0, i32 56, i32 28, i32 32, i32 64, i32 22, i32 53, i32 16, ; 112..119
	i32 50, i32 45, i32 71, i32 51, i32 56, i32 69, i32 19, i32 13, ; 120..127
	i32 6, i32 55, i32 59, i32 36, i32 40, i32 6, i32 69, i32 60, ; 128..135
	i32 3, i32 62, i32 45, i32 27, i32 26, i32 4, i32 42, i32 55, ; 136..143
	i32 58, i32 35 ; 144..145
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
