; ModuleID = 'obj\Debug\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.arm64-v8a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [312 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 92
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 20
	i64 210515253464952879, ; 2: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 82
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 114
	i64 295915112840604065, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 115
	i64 464346026994987652, ; 5: System.Reactive.dll => 0x671b04057e67284 => 34
	i64 590536689428908136, ; 6: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x83201fd803ec868 => 47
	i64 634308326490598313, ; 7: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 101
	i64 687654259221141486, ; 8: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 133
	i64 702024105029695270, ; 9: System.Drawing.Common => 0x9be17343c0e7726 => 139
	i64 718159679911342543, ; 10: FirebaseAdmin.dll => 0x9f76a6c851fb1cf => 8
	i64 720058930071658100, ; 11: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 95
	i64 816102801403336439, ; 12: Xamarin.Android.Support.Collections => 0xb53612c89d8d6f7 => 51
	i64 846634227898301275, ; 13: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0xbbfd9583890bb5b => 44
	i64 872800313462103108, ; 14: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 91
	i64 940822596282819491, ; 15: System.Transactions => 0xd0e792aa81923a3 => 137
	i64 996343623809489702, ; 16: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 129
	i64 1000557547492888992, ; 17: Mono.Security.dll => 0xde2b1c9cba651a0 => 155
	i64 1120440138749646132, ; 18: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 131
	i64 1315114680217950157, ; 19: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 77
	i64 1342439039765371018, ; 20: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 60
	i64 1425944114962822056, ; 21: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 4
	i64 1490981186906623721, ; 22: Xamarin.Android.Support.VersionedParcelable => 0x14b1077d6c5c0ee9 => 70
	i64 1624659445732251991, ; 23: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 75
	i64 1628611045998245443, ; 24: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 103
	i64 1636321030536304333, ; 25: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 96
	i64 1731380447121279447, ; 26: Newtonsoft.Json => 0x18071957e9b889d7 => 23
	i64 1743969030606105336, ; 27: System.Memory.dll => 0x1833d297e88f2af8 => 30
	i64 1744702963312407042, ; 28: Xamarin.Android.Support.v7.AppCompat => 0x18366e19eeceb202 => 68
	i64 1795316252682057001, ; 29: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 76
	i64 1836611346387731153, ; 30: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 114
	i64 1865037103900624886, ; 31: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 19
	i64 1875917498431009007, ; 32: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 73
	i64 1981742497975770890, ; 33: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 102
	i64 2040001226662520565, ; 34: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 154
	i64 2133195048986300728, ; 35: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 23
	i64 2136356949452311481, ; 36: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 107
	i64 2165725771938924357, ; 37: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 80
	i64 2262844636196693701, ; 38: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 91
	i64 2284400282711631002, ; 39: System.Web.Services => 0x1fb3d1f42fd4249a => 142
	i64 2329709569556905518, ; 40: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 99
	i64 2335503487726329082, ; 41: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 37
	i64 2337758774805907496, ; 42: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 35
	i64 2470498323731680442, ; 43: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 86
	i64 2479423007379663237, ; 44: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 119
	i64 2497223385847772520, ; 45: System.Runtime => 0x22a7eb7046413568 => 36
	i64 2547086958574651984, ; 46: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 72
	i64 2592350477072141967, ; 47: System.Xml.dll => 0x23f9e10627330e8f => 39
	i64 2624866290265602282, ; 48: mscorlib.dll => 0x246d65fbde2db8ea => 21
	i64 2694427813909235223, ; 49: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 111
	i64 2783046991838674048, ; 50: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 35
	i64 2812926542227278819, ; 51: Google.Apis.Core.dll => 0x270985c960b98be3 => 15
	i64 2949706848458024531, ; 52: Xamarin.Android.Support.SlidingPaneLayout => 0x28ef76c01de0a653 => 66
	i64 2960931600190307745, ; 53: Xamarin.Forms.Core => 0x2917579a49927da1 => 127
	i64 2977248461349026546, ; 54: Xamarin.Android.Support.DrawerLayout => 0x29514fb392c97af2 => 59
	i64 3017704767998173186, ; 55: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 131
	i64 3022227708164871115, ; 56: Xamarin.Android.Support.Media.Compat.dll => 0x29f11c168f8293cb => 64
	i64 3289520064315143713, ; 57: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 98
	i64 3303437397778967116, ; 58: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 74
	i64 3311221304742556517, ; 59: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 33
	i64 3364695309916733813, ; 60: Xamarin.Firebase.Common => 0x2eb1cc8eb5028175 => 126
	i64 3411255996856937470, ; 61: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 134
	i64 3493805808809882663, ; 62: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 117
	i64 3522470458906976663, ; 63: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 116
	i64 3531994851595924923, ; 64: System.Numerics => 0x31042a9aade235bb => 32
	i64 3571415421602489686, ; 65: System.Runtime.dll => 0x319037675df7e556 => 36
	i64 3716579019761409177, ; 66: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 67: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 113
	i64 3772598417116884899, ; 68: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 92
	i64 3966267475168208030, ; 69: System.Memory => 0x370b03412596249e => 30
	i64 4009997192427317104, ; 70: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 147
	i64 4056584864658557221, ; 71: Google.Apis.Auth => 0x384be27113330925 => 13
	i64 4247996603072512073, ; 72: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 135
	i64 4252163538099460320, ; 73: Xamarin.Android.Support.ViewPager.dll => 0x3b02b8357f4958e0 => 71
	i64 4349341163892612332, ; 74: Xamarin.Android.Support.DocumentFile => 0x3c5bf6bea8cd9cec => 58
	i64 4416987920449902723, ; 75: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0x3d4c4b1c879b9883 => 50
	i64 4525561845656915374, ; 76: System.ServiceModel.Internals => 0x3ece06856b710dae => 143
	i64 4636684751163556186, ; 77: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 121
	i64 4782108999019072045, ; 78: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 79
	i64 4794310189461587505, ; 79: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 72
	i64 4795410492532947900, ; 80: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 116
	i64 4841234827713643511, ; 81: Xamarin.Android.Support.CoordinaterLayout => 0x432f856d041f03f7 => 53
	i64 4963205065368577818, ; 82: Xamarin.Android.Support.LocalBroadcastManager.dll => 0x44e0d8b5f4b6a71a => 63
	i64 5052429638295086546, ; 83: FirebaseDatabase => 0x461dd5fcb33be5d2 => 9
	i64 5142919913060024034, ; 84: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 128
	i64 5178572682164047940, ; 85: Xamarin.Android.Support.Print.dll => 0x47ddfc6acbee1044 => 65
	i64 5203618020066742981, ; 86: Xamarin.Essentials => 0x4836f704f0e652c5 => 124
	i64 5205316157927637098, ; 87: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 105
	i64 5288341611614403055, ; 88: Xamarin.Android.Support.Interpolator.dll => 0x4963f6ad4b3179ef => 61
	i64 5348796042099802469, ; 89: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 106
	i64 5376510917114486089, ; 90: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 119
	i64 5408338804355907810, ; 91: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 118
	i64 5439315836349573567, ; 92: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0x4b7c54ef36c5e9bf => 48
	i64 5446034149219586269, ; 93: System.Diagnostics.Debug => 0x4b94333452e150dd => 144
	i64 5451019430259338467, ; 94: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 85
	i64 5507995362134886206, ; 95: System.Core.dll => 0x4c705499688c873e => 27
	i64 5665389054145784248, ; 96: Google.Apis.Core => 0x4e9f815406bee9b8 => 15
	i64 5692067934154308417, ; 97: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 123
	i64 5757522595884336624, ; 98: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 83
	i64 5767696078500135884, ; 99: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 49
	i64 5814345312393086621, ; 100: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 111
	i64 5896680224035167651, ; 101: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 100
	i64 6044705416426755068, ; 102: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0x53e31b8ccdff13fc => 67
	i64 6085203216496545422, ; 103: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 129
	i64 6086316965293125504, ; 104: FormsViewGroup.dll => 0x5476f10882baef80 => 10
	i64 6218967553231149354, ; 105: Firebase.Auth.dll => 0x564e360a4805d92a => 5
	i64 6222399776351216807, ; 106: System.Text.Json.dll => 0x565a67a0ffe264a7 => 38
	i64 6311200438583329442, ; 107: Xamarin.Android.Support.LocalBroadcastManager => 0x5795e35c580c82a2 => 63
	i64 6319713645133255417, ; 108: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 101
	i64 6401687960814735282, ; 109: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 99
	i64 6403742896930319886, ; 110: Xamarin.Firebase.Auth.dll => 0x58deaa3c7c766e0e => 125
	i64 6405879832841858445, ; 111: Xamarin.Android.Support.Vector.Drawable.dll => 0x58e641c4a660ad8d => 69
	i64 6494981841148195907, ; 112: MyWork.Android => 0x5a22cf9298403443 => 0
	i64 6504860066809920875, ; 113: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 80
	i64 6548213210057960872, ; 114: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 89
	i64 6591024623626361694, ; 115: System.Web.Services.dll => 0x5b7805f9751a1b5e => 142
	i64 6659513131007730089, ; 116: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 95
	i64 6876862101832370452, ; 117: System.Xml.Linq => 0x5f6f85a57d108914 => 40
	i64 6894844156784520562, ; 118: System.Numerics.Vectors => 0x5faf683aead1ad72 => 33
	i64 6934772601320367100, ; 119: Google.Api.Gax.Rest => 0x603d42f05bcfe3fc => 12
	i64 6941080589610463230, ; 120: Google.Apis.Auth.PlatformServices => 0x6053ac0555172ffe => 14
	i64 7036436454368433159, ; 121: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 97
	i64 7103753931438454322, ; 122: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 94
	i64 7141577505875122296, ; 123: System.Runtime.InteropServices.WindowsRuntime.dll => 0x631bfae7659b5878 => 3
	i64 7194160955514091247, ; 124: Xamarin.Android.Support.CursorAdapter.dll => 0x63d6cb45d266f6ef => 56
	i64 7270811800166795866, ; 125: System.Linq => 0x64e71ccf51a90a5a => 149
	i64 7338192458477945005, ; 126: System.Reflection => 0x65d67f295d0740ad => 145
	i64 7488575175965059935, ; 127: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 40
	i64 7602111570124318452, ; 128: System.Reactive => 0x698020320025a6f4 => 34
	i64 7635363394907363464, ; 129: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 127
	i64 7637365915383206639, ; 130: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 124
	i64 7654504624184590948, ; 131: System.Net.Http => 0x6a3a4366801b8264 => 31
	i64 7820441508502274321, ; 132: System.Data => 0x6c87ca1e14ff8111 => 136
	i64 7821246742157274664, ; 133: Xamarin.Android.Support.AsyncLayoutInflater => 0x6c8aa67926f72e28 => 50
	i64 7836164640616011524, ; 134: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 75
	i64 7879037620440914030, ; 135: Xamarin.Android.Support.v7.AppCompat.dll => 0x6d57f6f88a51d86e => 68
	i64 8044118961405839122, ; 136: System.ComponentModel.Composition => 0x6fa2739369944712 => 141
	i64 8064050204834738623, ; 137: System.Collections.dll => 0x6fe942efa61731bf => 148
	i64 8083354569033831015, ; 138: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 98
	i64 8101777744205214367, ; 139: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 49
	i64 8103644804370223335, ; 140: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 138
	i64 8113615946733131500, ; 141: System.Reflection.Extensions => 0x70995ab73cf916ec => 2
	i64 8167236081217502503, ; 142: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 17
	i64 8185542183669246576, ; 143: System.Collections => 0x7198e33f4794aa70 => 148
	i64 8195406069771384777, ; 144: Firebase.Storage.dll => 0x71bbee663acdb7c9 => 7
	i64 8196541262927413903, ; 145: Xamarin.Android.Support.Interpolator => 0x71bff6d9fb9ec28f => 61
	i64 8290740647658429042, ; 146: System.Runtime.Extensions => 0x730ea0b15c929a72 => 153
	i64 8385935383968044654, ; 147: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0x7460d3cd16cb566e => 46
	i64 8398329775253868912, ; 148: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 84
	i64 8400357532724379117, ; 149: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 110
	i64 8518412311883997971, ; 150: System.Collections.Immutable => 0x76377add7c28e313 => 26
	i64 8601935802264776013, ; 151: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 118
	i64 8626175481042262068, ; 152: Java.Interop => 0x77b654e585b55834 => 17
	i64 8639588376636138208, ; 153: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 109
	i64 8684531736582871431, ; 154: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 140
	i64 8702320156596882678, ; 155: Firebase.dll => 0x78c4da1357adccf6 => 6
	i64 8808820144457481518, ; 156: Xamarin.Android.Support.Loader.dll => 0x7a3f374010b17d2e => 62
	i64 8917102979740339192, ; 157: Xamarin.Android.Support.DocumentFile.dll => 0x7bbfe9ea4d000bf8 => 58
	i64 9057635389615298436, ; 158: LiteDB => 0x7db32f65bf06d784 => 18
	i64 9296667808972889535, ; 159: LiteDB.dll => 0x8104661dcca35dbf => 18
	i64 9312692141327339315, ; 160: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 123
	i64 9324707631942237306, ; 161: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 76
	i64 9584643793929893533, ; 162: System.IO.dll => 0x85037ebfbbd7f69d => 152
	i64 9662334977499516867, ; 163: System.Numerics.dll => 0x8617827802b0cfc3 => 32
	i64 9678050649315576968, ; 164: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 86
	i64 9711637524876806384, ; 165: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 106
	i64 9808709177481450983, ; 166: Mono.Android.dll => 0x881f890734e555e7 => 20
	i64 9825649861376906464, ; 167: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 83
	i64 9834056768316610435, ; 168: System.Transactions.dll => 0x8879968718899783 => 137
	i64 9866412715007501892, ; 169: Xamarin.Android.Arch.Lifecycle.Common.dll => 0x88ec8a16fd6b6644 => 43
	i64 9875200773399460291, ; 170: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 133
	i64 9998632235833408227, ; 171: Mono.Security => 0x8ac2470b209ebae3 => 155
	i64 10038780035334861115, ; 172: System.Net.Http.dll => 0x8b50e941206af13b => 31
	i64 10144742755892837524, ; 173: Firebase => 0x8cc95dc98eb5bc94 => 6
	i64 10218821437939648382, ; 174: Google.Apis.Auth.PlatformServices.dll => 0x8dd08bf4c78a077e => 14
	i64 10220684565739810458, ; 175: FirebaseAdmin => 0x8dd72a76063d2e9a => 8
	i64 10229024438826829339, ; 176: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 89
	i64 10303855825347935641, ; 177: Xamarin.Android.Support.Loader => 0x8efea647eeb3fd99 => 62
	i64 10360651442923773544, ; 178: System.Text.Encoding => 0x8fc86d98211c1e68 => 151
	i64 10363495123250631811, ; 179: Xamarin.Android.Support.Collections.dll => 0x8fd287e80cd8d483 => 51
	i64 10376576884623852283, ; 180: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 117
	i64 10430153318873392755, ; 181: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 87
	i64 10447083246144586668, ; 182: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 19
	i64 10635644668885628703, ; 183: Xamarin.Android.Support.DrawerLayout.dll => 0x93996679ee34771f => 59
	i64 10714184849103829812, ; 184: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 153
	i64 10823124638835005028, ; 185: Google.Api.Gax.dll => 0x963376840189d664 => 11
	i64 10847732767863316357, ; 186: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 77
	i64 10850923258212604222, ; 187: Xamarin.Android.Arch.Lifecycle.Runtime => 0x9696393672c9593e => 46
	i64 11023048688141570732, ; 188: System.Core => 0x98f9bc61168392ac => 27
	i64 11037814507248023548, ; 189: System.Xml => 0x992e31d0412bf7fc => 39
	i64 11162124722117608902, ; 190: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 122
	i64 11340910727871153756, ; 191: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 88
	i64 11376461258732682436, ; 192: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 52
	i64 11392833485892708388, ; 193: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 112
	i64 11529969570048099689, ; 194: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 122
	i64 11578238080964724296, ; 195: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 97
	i64 11580057168383206117, ; 196: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 73
	i64 11597940890313164233, ; 197: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 198: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 94
	i64 11743665907891708234, ; 199: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 146
	i64 11834399401546345650, ; 200: Xamarin.Android.Support.SlidingPaneLayout.dll => 0xa43c3b8deb43ecb2 => 66
	i64 11865714326292153359, ; 201: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa4ab7c5000e8440f => 45
	i64 12102847907131387746, ; 202: System.Buffers => 0xa7f5f40c43256f62 => 25
	i64 12123043025855404482, ; 203: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 2
	i64 12137774235383566651, ; 204: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 120
	i64 12145679461940342714, ; 205: System.Text.Json => 0xa88e1f1ebcb62fba => 38
	i64 12201331334810686224, ; 206: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 147
	i64 12269460666702402136, ; 207: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 26
	i64 12388767885335911387, ; 208: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0xabedbec0d236dbdb => 45
	i64 12414299427252656003, ; 209: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 52
	i64 12437742355241350664, ; 210: Google.Apis.dll => 0xac9bbcc62bfdb608 => 16
	i64 12451044538927396471, ; 211: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 93
	i64 12466513435562512481, ; 212: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 104
	i64 12487638416075308985, ; 213: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 90
	i64 12528155905152483962, ; 214: Firebase.Auth => 0xaddcf36b3153827a => 5
	i64 12538491095302438457, ; 215: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 81
	i64 12550732019250633519, ; 216: System.IO.Compression => 0xae2d28465e8e1b2f => 29
	i64 12700543734426720211, ; 217: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 82
	i64 12708238894395270091, ; 218: System.IO => 0xb05cbbf17d3ba3cb => 152
	i64 12722065664929968482, ; 219: Google.Api.Gax.Rest.dll => 0xb08ddb515f583162 => 12
	i64 12887742145545859551, ; 220: FirebaseDatabase.dll => 0xb2da7532fe1771df => 9
	i64 12952608645614506925, ; 221: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 55
	i64 12958614573187252691, ; 222: Google.Apis => 0xb3d63f4bf006c1d3 => 16
	i64 12963446364377008305, ; 223: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 139
	i64 13358059602087096138, ; 224: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 60
	i64 13370592475155966277, ; 225: System.Runtime.Serialization => 0xb98de304062ea945 => 4
	i64 13401370062847626945, ; 226: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 120
	i64 13404347523447273790, ; 227: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 84
	i64 13454009404024712428, ; 228: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 132
	i64 13491513212026656886, ; 229: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 78
	i64 13572454107664307259, ; 230: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 113
	i64 13647894001087880694, ; 231: System.Data.dll => 0xbd670f48cb071df6 => 136
	i64 13782512541859110153, ; 232: Google.Apis.Auth.dll => 0xbf45522249e0dd09 => 13
	i64 13959074834287824816, ; 233: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 93
	i64 13967638549803255703, ; 234: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 128
	i64 14124974489674258913, ; 235: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 81
	i64 14125464355221830302, ; 236: System.Threading.dll => 0xc407bafdbc707a9e => 150
	i64 14165531176311179688, ; 237: Xamarin.Firebase.Auth => 0xc496138d7abfc9a8 => 125
	i64 14172845254133543601, ; 238: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 107
	i64 14261073672896646636, ; 239: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 112
	i64 14327695147300244862, ; 240: System.Reflection.dll => 0xc6d632d338eb4d7e => 145
	i64 14369828458497533121, ; 241: Xamarin.Android.Support.Vector.Drawable => 0xc76be2d9300b64c1 => 69
	i64 14400856865250966808, ; 242: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 54
	i64 14438260825521943376, ; 243: RestSharp.dll => 0xc85f01b93fac7350 => 24
	i64 14486659737292545672, ; 244: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 100
	i64 14551742072151931844, ; 245: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 37
	i64 14644440854989303794, ; 246: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 105
	i64 14661790646341542033, ; 247: Xamarin.Android.Support.SwipeRefreshLayout => 0xcb7924e94e552091 => 67
	i64 14789919016435397935, ; 248: Xamarin.Firebase.Common.dll => 0xcd4058fc2f6d352f => 126
	i64 14792063746108907174, ; 249: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 132
	i64 14852515768018889994, ; 250: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 88
	i64 14916196474747524434, ; 251: MyWork.dll => 0xcf00f9aa15429552 => 22
	i64 14987728460634540364, ; 252: System.IO.Compression.dll => 0xcfff1ba06622494c => 29
	i64 14988210264188246988, ; 253: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 90
	i64 15133485256822086103, ; 254: System.Linq.dll => 0xd204f0a9127dd9d7 => 149
	i64 15188640517174936311, ; 255: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 41
	i64 15246441518555807158, ; 256: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 41
	i64 15326820765897713587, ; 257: Xamarin.Android.Arch.Core.Runtime.dll => 0xd4b3ce481769e7b3 => 42
	i64 15370334346939861994, ; 258: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 87
	i64 15457813392950723921, ; 259: Xamarin.Android.Support.Media.Compat => 0xd6852f61c31a8551 => 64
	i64 15526743539506359484, ; 260: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 151
	i64 15568534730848034786, ; 261: Xamarin.Android.Support.VersionedParcelable.dll => 0xd80e8bda21875fe2 => 70
	i64 15582737692548360875, ; 262: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 103
	i64 15609085926864131306, ; 263: System.dll => 0xd89e9cf3334914ea => 28
	i64 15777549416145007739, ; 264: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 115
	i64 15810740023422282496, ; 265: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 130
	i64 15817206913877585035, ; 266: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 146
	i64 15930129725311349754, ; 267: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 135
	i64 15963349826457351533, ; 268: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 154
	i64 15987609494471769098, ; 269: Firebase.Storage => 0xdddf662115a6fc0a => 7
	i64 16154507427712707110, ; 270: System => 0xe03056ea4e39aa26 => 28
	i64 16242842420508142678, ; 271: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe16a2b1f8908ac56 => 53
	i64 16565028646146589191, ; 272: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 141
	i64 16588517629423600604, ; 273: MyWork => 0xe63640e4ec1943dc => 22
	i64 16621146507174665210, ; 274: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 85
	i64 16677317093839702854, ; 275: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 110
	i64 16714880742693338373, ; 276: MyWork.Android.dll => 0xe7f72f79eb40fd05 => 0
	i64 16767985610513713374, ; 277: Xamarin.Android.Arch.Core.Runtime => 0xe8b3da12798808de => 42
	i64 16822611501064131242, ; 278: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 138
	i64 16833383113903931215, ; 279: mscorlib => 0xe99c30c1484d7f4f => 21
	i64 16866861824412579935, ; 280: System.Runtime.InteropServices.WindowsRuntime => 0xea132176ffb5785f => 3
	i64 16932527889823454152, ; 281: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 55
	i64 16955525858597485057, ; 282: Google.Api.Gax => 0xeb4e20ef25a73a01 => 11
	i64 17009591894298689098, ; 283: Xamarin.Android.Support.Animated.Vector.Drawable => 0xec0e35b50a097e4a => 48
	i64 17024911836938395553, ; 284: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 74
	i64 17031351772568316411, ; 285: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 108
	i64 17037200463775726619, ; 286: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 96
	i64 17151170952569239713, ; 287: RestSharp => 0xee05331c4de338a1 => 24
	i64 17383232329670771222, ; 288: Xamarin.Android.Support.CustomView.dll => 0xf13da5b41a1cc216 => 57
	i64 17428701562824544279, ; 289: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 54
	i64 17483646997724851973, ; 290: Xamarin.Android.Support.ViewPager => 0xf2a2644fe5b6ef05 => 71
	i64 17524135665394030571, ; 291: Xamarin.Android.Support.Print => 0xf3323c8a739097eb => 65
	i64 17544493274320527064, ; 292: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 79
	i64 17666959971718154066, ; 293: Xamarin.Android.Support.CustomView => 0xf52da67d9f4e4752 => 57
	i64 17685921127322830888, ; 294: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 144
	i64 17704177640604968747, ; 295: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 104
	i64 17710060891934109755, ; 296: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 102
	i64 17760961058993581169, ; 297: Xamarin.Android.Arch.Lifecycle.Common => 0xf67b9bfb46dbac71 => 43
	i64 17838668724098252521, ; 298: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 25
	i64 17841643939744178149, ; 299: Xamarin.Android.Arch.Lifecycle.ViewModel => 0xf79a40a25573dfe5 => 47
	i64 17882897186074144999, ; 300: FormsViewGroup => 0xf82cd03e3ac830e7 => 10
	i64 17892495832318972303, ; 301: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 130
	i64 17928294245072900555, ; 302: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 140
	i64 17958105683855786126, ; 303: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xf93801f92d25c08e => 44
	i64 17986907704309214542, ; 304: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 134
	i64 18025913125965088385, ; 305: System.Threading => 0xfa28e87b91334681 => 150
	i64 18116111925905154859, ; 306: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 78
	i64 18121036031235206392, ; 307: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 108
	i64 18129453464017766560, ; 308: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 143
	i64 18301997741680159453, ; 309: Xamarin.Android.Support.CursorAdapter => 0xfdfdc1fa58d8eadd => 56
	i64 18305135509493619199, ; 310: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 109
	i64 18380184030268848184 ; 311: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 121
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [312 x i32] [
	i32 92, i32 20, i32 82, i32 114, i32 115, i32 34, i32 47, i32 101, ; 0..7
	i32 133, i32 139, i32 8, i32 95, i32 51, i32 44, i32 91, i32 137, ; 8..15
	i32 129, i32 155, i32 131, i32 77, i32 60, i32 4, i32 70, i32 75, ; 16..23
	i32 103, i32 96, i32 23, i32 30, i32 68, i32 76, i32 114, i32 19, ; 24..31
	i32 73, i32 102, i32 154, i32 23, i32 107, i32 80, i32 91, i32 142, ; 32..39
	i32 99, i32 37, i32 35, i32 86, i32 119, i32 36, i32 72, i32 39, ; 40..47
	i32 21, i32 111, i32 35, i32 15, i32 66, i32 127, i32 59, i32 131, ; 48..55
	i32 64, i32 98, i32 74, i32 33, i32 126, i32 134, i32 117, i32 116, ; 56..63
	i32 32, i32 36, i32 1, i32 113, i32 92, i32 30, i32 147, i32 13, ; 64..71
	i32 135, i32 71, i32 58, i32 50, i32 143, i32 121, i32 79, i32 72, ; 72..79
	i32 116, i32 53, i32 63, i32 9, i32 128, i32 65, i32 124, i32 105, ; 80..87
	i32 61, i32 106, i32 119, i32 118, i32 48, i32 144, i32 85, i32 27, ; 88..95
	i32 15, i32 123, i32 83, i32 49, i32 111, i32 100, i32 67, i32 129, ; 96..103
	i32 10, i32 5, i32 38, i32 63, i32 101, i32 99, i32 125, i32 69, ; 104..111
	i32 0, i32 80, i32 89, i32 142, i32 95, i32 40, i32 33, i32 12, ; 112..119
	i32 14, i32 97, i32 94, i32 3, i32 56, i32 149, i32 145, i32 40, ; 120..127
	i32 34, i32 127, i32 124, i32 31, i32 136, i32 50, i32 75, i32 68, ; 128..135
	i32 141, i32 148, i32 98, i32 49, i32 138, i32 2, i32 17, i32 148, ; 136..143
	i32 7, i32 61, i32 153, i32 46, i32 84, i32 110, i32 26, i32 118, ; 144..151
	i32 17, i32 109, i32 140, i32 6, i32 62, i32 58, i32 18, i32 18, ; 152..159
	i32 123, i32 76, i32 152, i32 32, i32 86, i32 106, i32 20, i32 83, ; 160..167
	i32 137, i32 43, i32 133, i32 155, i32 31, i32 6, i32 14, i32 8, ; 168..175
	i32 89, i32 62, i32 151, i32 51, i32 117, i32 87, i32 19, i32 59, ; 176..183
	i32 153, i32 11, i32 77, i32 46, i32 27, i32 39, i32 122, i32 88, ; 184..191
	i32 52, i32 112, i32 122, i32 97, i32 73, i32 1, i32 94, i32 146, ; 192..199
	i32 66, i32 45, i32 25, i32 2, i32 120, i32 38, i32 147, i32 26, ; 200..207
	i32 45, i32 52, i32 16, i32 93, i32 104, i32 90, i32 5, i32 81, ; 208..215
	i32 29, i32 82, i32 152, i32 12, i32 9, i32 55, i32 16, i32 139, ; 216..223
	i32 60, i32 4, i32 120, i32 84, i32 132, i32 78, i32 113, i32 136, ; 224..231
	i32 13, i32 93, i32 128, i32 81, i32 150, i32 125, i32 107, i32 112, ; 232..239
	i32 145, i32 69, i32 54, i32 24, i32 100, i32 37, i32 105, i32 67, ; 240..247
	i32 126, i32 132, i32 88, i32 22, i32 29, i32 90, i32 149, i32 41, ; 248..255
	i32 41, i32 42, i32 87, i32 64, i32 151, i32 70, i32 103, i32 28, ; 256..263
	i32 115, i32 130, i32 146, i32 135, i32 154, i32 7, i32 28, i32 53, ; 264..271
	i32 141, i32 22, i32 85, i32 110, i32 0, i32 42, i32 138, i32 21, ; 272..279
	i32 3, i32 55, i32 11, i32 48, i32 74, i32 108, i32 96, i32 24, ; 280..287
	i32 57, i32 54, i32 71, i32 65, i32 79, i32 57, i32 144, i32 104, ; 288..295
	i32 102, i32 43, i32 25, i32 47, i32 10, i32 130, i32 140, i32 44, ; 296..303
	i32 134, i32 150, i32 78, i32 108, i32 143, i32 56, i32 109, i32 121 ; 312..311
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