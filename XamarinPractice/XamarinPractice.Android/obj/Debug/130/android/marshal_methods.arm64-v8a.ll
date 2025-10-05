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
@assembly_image_cache_hashes = local_unnamed_addr constant [270 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 64
	i64 40218994123153105, ; 1: ExCSS.dll => 0x8ee2f649ef1ed1 => 6
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 16
	i64 184471870596806994, ; 3: Svg.Skia => 0x28f60305df97952 => 29
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 53
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 91
	i64 295915112840604065, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 92
	i64 316157742385208084, ; 7: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 58
	i64 404665707914610830, ; 8: Svg.Custom => 0x59da9513d08488e => 27
	i64 559848537545527438, ; 9: Mapsui.Nts.dll => 0x7c4fb47586c508e => 11
	i64 634308326490598313, ; 10: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 76
	i64 687654259221141486, ; 11: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 112
	i64 702024105029695270, ; 12: System.Drawing.Common => 0x9be17343c0e7726 => 2
	i64 720058930071658100, ; 13: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 69
	i64 872800313462103108, ; 14: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 63
	i64 940822596282819491, ; 15: System.Transactions => 0xd0e792aa81923a3 => 125
	i64 996343623809489702, ; 16: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 108
	i64 1000557547492888992, ; 17: Mono.Security.dll => 0xde2b1c9cba651a0 => 133
	i64 1093341102199883341, ; 18: XamarinPractice.Android.dll => 0xf2c53f08ef5464d => 0
	i64 1120440138749646132, ; 19: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 110
	i64 1315114680217950157, ; 20: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 48
	i64 1425944114962822056, ; 21: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 4
	i64 1624659445732251991, ; 22: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 46
	i64 1628611045998245443, ; 23: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 78
	i64 1636321030536304333, ; 24: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 70
	i64 1731380447121279447, ; 25: Newtonsoft.Json => 0x18071957e9b889d7 => 21
	i64 1743969030606105336, ; 26: System.Memory.dll => 0x1833d297e88f2af8 => 33
	i64 1795316252682057001, ; 27: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 47
	i64 1836611346387731153, ; 28: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 91
	i64 1865037103900624886, ; 29: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 15
	i64 1875917498431009007, ; 30: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 44
	i64 1981742497975770890, ; 31: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 77
	i64 1986553961460820075, ; 32: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 102
	i64 2040001226662520565, ; 33: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 134
	i64 2064708342624596306, ; 34: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 119
	i64 2108673896768817157, ; 35: NetTopologySuite => 0x1d4383bca40b4805 => 18
	i64 2133195048986300728, ; 36: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 21
	i64 2136356949452311481, ; 37: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 82
	i64 2165725771938924357, ; 38: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 51
	i64 2188974421706709258, ; 39: SkiaSharp.HarfBuzz.dll => 0x1e60cca38c3e990a => 24
	i64 2262844636196693701, ; 40: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 63
	i64 2284400282711631002, ; 41: System.Web.Services => 0x1fb3d1f42fd4249a => 130
	i64 2304837677853103545, ; 42: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 90
	i64 2329709569556905518, ; 43: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 73
	i64 2335503487726329082, ; 44: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 38
	i64 2337758774805907496, ; 45: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 36
	i64 2470498323731680442, ; 46: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 57
	i64 2479423007379663237, ; 47: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 97
	i64 2497223385847772520, ; 48: System.Runtime => 0x22a7eb7046413568 => 37
	i64 2547086958574651984, ; 49: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 43
	i64 2592350477072141967, ; 50: System.Xml.dll => 0x23f9e10627330e8f => 40
	i64 2624866290265602282, ; 51: mscorlib.dll => 0x246d65fbde2db8ea => 17
	i64 2694427813909235223, ; 52: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 86
	i64 2783046991838674048, ; 53: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 36
	i64 2787234703088983483, ; 54: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 93
	i64 2934153328772275960, ; 55: Mapsui.UI.Forms => 0x28b834e81e005ef8 => 14
	i64 2960931600190307745, ; 56: Xamarin.Forms.Core => 0x2917579a49927da1 => 104
	i64 3017704767998173186, ; 57: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 110
	i64 3050215540918740122, ; 58: XamarinPractice => 0x2a548adfacd6649a => 123
	i64 3289520064315143713, ; 59: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 72
	i64 3303437397778967116, ; 60: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 45
	i64 3311221304742556517, ; 61: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 35
	i64 3344514922410554693, ; 62: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 122
	i64 3411255996856937470, ; 63: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 113
	i64 3461602852075779363, ; 64: SkiaSharp.HarfBuzz => 0x300a15741f74b523 => 24
	i64 3493805808809882663, ; 65: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 95
	i64 3522470458906976663, ; 66: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 94
	i64 3531994851595924923, ; 67: System.Numerics => 0x31042a9aade235bb => 34
	i64 3571415421602489686, ; 68: System.Runtime.dll => 0x319037675df7e556 => 37
	i64 3658489898830683555, ; 69: Svg.Skia.dll => 0x32c5912df2285da3 => 29
	i64 3696698938527704835, ; 70: Mapsui.Rendering.Skia.dll => 0x334d50194081e703 => 12
	i64 3716579019761409177, ; 71: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 72: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 89
	i64 3772598417116884899, ; 73: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 64
	i64 3966267475168208030, ; 74: System.Memory => 0x370b03412596249e => 33
	i64 4201423742386704971, ; 75: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 58
	i64 4247996603072512073, ; 76: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 115
	i64 4525561845656915374, ; 77: System.ServiceModel.Internals => 0x3ece06856b710dae => 131
	i64 4636684751163556186, ; 78: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 99
	i64 4759461199762736555, ; 79: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 75
	i64 4782108999019072045, ; 80: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 50
	i64 4794310189461587505, ; 81: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 43
	i64 4795410492532947900, ; 82: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 94
	i64 5040854987801998111, ; 83: Mapsui.Tiling => 0x45f4b6e76031b31f => 13
	i64 5142919913060024034, ; 84: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 107
	i64 5203618020066742981, ; 85: Xamarin.Essentials => 0x4836f704f0e652c5 => 103
	i64 5205316157927637098, ; 86: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 80
	i64 5256995213548036366, ; 87: Xamarin.Forms.Maps.Android.dll => 0x48f4994b4175a10e => 105
	i64 5306356071055648198, ; 88: Svg.Model.dll => 0x49a3f6bb7b0265c6 => 28
	i64 5348796042099802469, ; 89: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 81
	i64 5376510917114486089, ; 90: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 97
	i64 5408338804355907810, ; 91: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 96
	i64 5451019430259338467, ; 92: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 56
	i64 5507995362134886206, ; 93: System.Core.dll => 0x4c705499688c873e => 31
	i64 5692067934154308417, ; 94: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 101
	i64 5757522595884336624, ; 95: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 54
	i64 5801353778201225755, ; 96: XamarinPractice.dll => 0x50828c863e0dea1b => 123
	i64 5814345312393086621, ; 97: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 86
	i64 5896680224035167651, ; 98: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 74
	i64 6085203216496545422, ; 99: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 108
	i64 6086316965293125504, ; 100: FormsViewGroup.dll => 0x5476f10882baef80 => 7
	i64 6222399776351216807, ; 101: System.Text.Json.dll => 0x565a67a0ffe264a7 => 39
	i64 6319713645133255417, ; 102: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 76
	i64 6354612700029906737, ; 103: ShimSkiaSharp.dll => 0x58301e951e77ef31 => 22
	i64 6363787360044722189, ; 104: ShimSkiaSharp => 0x5850b6e31d96280d => 22
	i64 6401687960814735282, ; 105: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 73
	i64 6504860066809920875, ; 106: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 51
	i64 6548213210057960872, ; 107: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 61
	i64 6591024623626361694, ; 108: System.Web.Services.dll => 0x5b7805f9751a1b5e => 130
	i64 6617685658146568858, ; 109: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 132
	i64 6659513131007730089, ; 110: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 69
	i64 6671798237668743565, ; 111: SkiaSharp => 0x5c96fd260152998d => 23
	i64 6876862101832370452, ; 112: System.Xml.Linq => 0x5f6f85a57d108914 => 41
	i64 6894844156784520562, ; 113: System.Numerics.Vectors => 0x5faf683aead1ad72 => 35
	i64 7036436454368433159, ; 114: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 71
	i64 7103753931438454322, ; 115: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 68
	i64 7141281584637745974, ; 116: Xamarin.GooglePlayServices.Maps.dll => 0x631aedc3dd5f1b36 => 114
	i64 7488575175965059935, ; 117: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 41
	i64 7635363394907363464, ; 118: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 104
	i64 7637365915383206639, ; 119: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 103
	i64 7654504624184590948, ; 120: System.Net.Http => 0x6a3a4366801b8264 => 3
	i64 7735352534559001595, ; 121: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 118
	i64 7792632648484821929, ; 122: Topten.RichTextKit.dll => 0x6c24fe1b4e0c9ba9 => 42
	i64 7820441508502274321, ; 123: System.Data => 0x6c87ca1e14ff8111 => 124
	i64 7836164640616011524, ; 124: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 46
	i64 7927939710195668715, ; 125: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 25
	i64 8044118961405839122, ; 126: System.ComponentModel.Composition => 0x6fa2739369944712 => 129
	i64 8083354569033831015, ; 127: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 72
	i64 8103644804370223335, ; 128: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 126
	i64 8167236081217502503, ; 129: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 9
	i64 8187102936927221770, ; 130: SkiaSharp.Views.Forms => 0x719e6ebe771ab80a => 26
	i64 8187640529827139739, ; 131: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 121
	i64 8357409459873968396, ; 132: Mapsui.Nts => 0x73fb7b9fd246f10c => 11
	i64 8398329775253868912, ; 133: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 55
	i64 8400357532724379117, ; 134: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 85
	i64 8426919725312979251, ; 135: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 75
	i64 8598790081731763592, ; 136: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 66
	i64 8601935802264776013, ; 137: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 96
	i64 8626175481042262068, ; 138: Java.Interop => 0x77b654e585b55834 => 9
	i64 8639588376636138208, ; 139: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 84
	i64 8684531736582871431, ; 140: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 128
	i64 8834232125107082525, ; 141: ExCSS => 0x7a997f4fe05a151d => 6
	i64 8853378295825400934, ; 142: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 117
	i64 8951477988056063522, ; 143: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 88
	i64 9018325420426354176, ; 144: Topten.RichTextKit => 0x7d27873051635e00 => 42
	i64 9119672718617465806, ; 145: Mapsui.Rendering.Skia => 0x7e8f9604fd03d3ce => 12
	i64 9248940107580716988, ; 146: Svg.Custom.dll => 0x805ad6065d3637bc => 27
	i64 9312692141327339315, ; 147: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 101
	i64 9324707631942237306, ; 148: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 47
	i64 9324884822702401407, ; 149: NetTopologySuite.IO.GeoJSON4STJ.dll => 0x8168a557449ba77f => 20
	i64 9662334977499516867, ; 150: System.Numerics.dll => 0x8617827802b0cfc3 => 34
	i64 9678050649315576968, ; 151: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 57
	i64 9711637524876806384, ; 152: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 81
	i64 9808709177481450983, ; 153: Mono.Android.dll => 0x881f890734e555e7 => 16
	i64 9825649861376906464, ; 154: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 54
	i64 9834056768316610435, ; 155: System.Transactions.dll => 0x8879968718899783 => 125
	i64 9875200773399460291, ; 156: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 112
	i64 9907349773706910547, ; 157: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 66
	i64 9998632235833408227, ; 158: Mono.Security => 0x8ac2470b209ebae3 => 133
	i64 10038780035334861115, ; 159: System.Net.Http.dll => 0x8b50e941206af13b => 3
	i64 10077284195238799794, ; 160: BruTile.dll => 0x8bd9b49575dde9b2 => 5
	i64 10226222362177979215, ; 161: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 119
	i64 10229024438826829339, ; 162: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 61
	i64 10298993431124104701, ; 163: Mapsui.UI.Forms.dll => 0x8eed5ff58e3bd5fd => 14
	i64 10321854143672141184, ; 164: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 116
	i64 10376576884623852283, ; 165: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 95
	i64 10406448008575299332, ; 166: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 122
	i64 10430153318873392755, ; 167: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 59
	i64 10447083246144586668, ; 168: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 15
	i64 10775409704848971057, ; 169: Xamarin.Forms.Maps => 0x9589f20936d1d531 => 106
	i64 10847732767863316357, ; 170: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 48
	i64 11023048688141570732, ; 171: System.Core => 0x98f9bc61168392ac => 31
	i64 11037814507248023548, ; 172: System.Xml => 0x992e31d0412bf7fc => 40
	i64 11122995063473561350, ; 173: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 102
	i64 11162124722117608902, ; 174: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 100
	i64 11216600183782743182, ; 175: Svg.Model => 0x9ba95e7065f39c8e => 28
	i64 11340910727871153756, ; 176: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 60
	i64 11392833485892708388, ; 177: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 87
	i64 11444370155346000636, ; 178: Xamarin.Forms.Maps.Android => 0x9ed292057b7afafc => 105
	i64 11478254788954680069, ; 179: NetTopologySuite.Features => 0x9f4af3ea8911eb05 => 19
	i64 11529969570048099689, ; 180: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 100
	i64 11578238080964724296, ; 181: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 71
	i64 11580057168383206117, ; 182: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 44
	i64 11591352189662810718, ; 183: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 93
	i64 11597940890313164233, ; 184: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 185: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 68
	i64 11968399277544565222, ; 186: XamarinPractice.Android => 0xa6184bbb4c15e9e6 => 0
	i64 12102847907131387746, ; 187: System.Buffers => 0xa7f5f40c43256f62 => 30
	i64 12137774235383566651, ; 188: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 98
	i64 12145679461940342714, ; 189: System.Text.Json => 0xa88e1f1ebcb62fba => 39
	i64 12247834191021032507, ; 190: NetTopologySuite.Features.dll => 0xa9f90c4e0fb1443b => 19
	i64 12451044538927396471, ; 191: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 67
	i64 12466513435562512481, ; 192: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 79
	i64 12487638416075308985, ; 193: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 62
	i64 12538491095302438457, ; 194: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 52
	i64 12550732019250633519, ; 195: System.IO.Compression => 0xae2d28465e8e1b2f => 127
	i64 12700543734426720211, ; 196: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 53
	i64 12828192437253469131, ; 197: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 120
	i64 12963446364377008305, ; 198: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 2
	i64 13106026140046202731, ; 199: HarfBuzzSharp.dll => 0xb5e1f555ee70176b => 8
	i64 13129914918964716986, ; 200: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 65
	i64 13370592475155966277, ; 201: System.Runtime.Serialization => 0xb98de304062ea945 => 4
	i64 13401370062847626945, ; 202: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 98
	i64 13404347523447273790, ; 203: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 55
	i64 13454009404024712428, ; 204: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 111
	i64 13465488254036897740, ; 205: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 118
	i64 13491513212026656886, ; 206: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 49
	i64 13492263892638604996, ; 207: SkiaSharp.Views.Forms.dll => 0xbb3e2686788d9ec4 => 26
	i64 13572454107664307259, ; 208: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 89
	i64 13646648927693774012, ; 209: BruTile => 0xbd62a2e58da71cbc => 5
	i64 13647894001087880694, ; 210: System.Data.dll => 0xbd670f48cb071df6 => 124
	i64 13828521679616088467, ; 211: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 117
	i64 13959074834287824816, ; 212: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 67
	i64 13967638549803255703, ; 213: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 107
	i64 14124974489674258913, ; 214: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 52
	i64 14172845254133543601, ; 215: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 82
	i64 14261073672896646636, ; 216: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 87
	i64 14486659737292545672, ; 217: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 74
	i64 14495724990987328804, ; 218: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 90
	i64 14551742072151931844, ; 219: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 38
	i64 14641944974530824122, ; 220: Mapsui => 0xcb32a360c3b9c7ba => 10
	i64 14644440854989303794, ; 221: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 80
	i64 14792063746108907174, ; 222: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 111
	i64 14852515768018889994, ; 223: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 60
	i64 14931407803744742450, ; 224: HarfBuzzSharp => 0xcf3704499ab36c32 => 8
	i64 14935719434541007538, ; 225: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 132
	i64 14987728460634540364, ; 226: System.IO.Compression.dll => 0xcfff1ba06622494c => 127
	i64 14988210264188246988, ; 227: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 62
	i64 15150743910298169673, ; 228: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 88
	i64 15279429628684179188, ; 229: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 121
	i64 15370334346939861994, ; 230: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 59
	i64 15582737692548360875, ; 231: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 78
	i64 15609085926864131306, ; 232: System.dll => 0xd89e9cf3334914ea => 32
	i64 15777549416145007739, ; 233: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 92
	i64 15810740023422282496, ; 234: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 109
	i64 15930129725311349754, ; 235: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 115
	i64 15963349826457351533, ; 236: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 134
	i64 16154507427712707110, ; 237: System => 0xe03056ea4e39aa26 => 32
	i64 16324796876805858114, ; 238: SkiaSharp.dll => 0xe28d5444586b6342 => 23
	i64 16423015068819898779, ; 239: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 120
	i64 16565028646146589191, ; 240: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 129
	i64 16621146507174665210, ; 241: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 56
	i64 16677317093839702854, ; 242: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 85
	i64 16822611501064131242, ; 243: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 126
	i64 16833383113903931215, ; 244: mscorlib => 0xe99c30c1484d7f4f => 17
	i64 17024911836938395553, ; 245: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 45
	i64 17031351772568316411, ; 246: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 83
	i64 17037200463775726619, ; 247: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 70
	i64 17084484735261948889, ; 248: NetTopologySuite.IO.GeoJSON4STJ => 0xed18485967df3bd9 => 20
	i64 17452310354824359952, ; 249: Mapsui.Tiling.dll => 0xf2330fcd292d7010 => 13
	i64 17544493274320527064, ; 250: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 50
	i64 17671790519499593115, ; 251: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 25
	i64 17704177640604968747, ; 252: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 79
	i64 17710060891934109755, ; 253: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 77
	i64 17816041456001989629, ; 254: Xamarin.Forms.Maps.dll => 0xf73f4b4f90a1bbfd => 106
	i64 17838668724098252521, ; 255: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 30
	i64 17882897186074144999, ; 256: FormsViewGroup => 0xf82cd03e3ac830e7 => 7
	i64 17891337867145587222, ; 257: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 116
	i64 17892495832318972303, ; 258: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 109
	i64 17928294245072900555, ; 259: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 128
	i64 17969331831154222830, ; 260: Xamarin.GooglePlayServices.Maps => 0xf95fe418471126ee => 114
	i64 17986907704309214542, ; 261: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 113
	i64 18096531542100961995, ; 262: NetTopologySuite.dll => 0xfb23cb8ed9946acb => 18
	i64 18116111925905154859, ; 263: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 49
	i64 18121036031235206392, ; 264: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 83
	i64 18129453464017766560, ; 265: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 131
	i64 18260797123374478311, ; 266: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 65
	i64 18305135509493619199, ; 267: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 84
	i64 18380184030268848184, ; 268: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 99
	i64 18421022575907732603 ; 269: Mapsui.dll => 0xffa49e6f1c6e7c7b => 10
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [270 x i32] [
	i32 64, i32 6, i32 16, i32 29, i32 53, i32 91, i32 92, i32 58, ; 0..7
	i32 27, i32 11, i32 76, i32 112, i32 2, i32 69, i32 63, i32 125, ; 8..15
	i32 108, i32 133, i32 0, i32 110, i32 48, i32 4, i32 46, i32 78, ; 16..23
	i32 70, i32 21, i32 33, i32 47, i32 91, i32 15, i32 44, i32 77, ; 24..31
	i32 102, i32 134, i32 119, i32 18, i32 21, i32 82, i32 51, i32 24, ; 32..39
	i32 63, i32 130, i32 90, i32 73, i32 38, i32 36, i32 57, i32 97, ; 40..47
	i32 37, i32 43, i32 40, i32 17, i32 86, i32 36, i32 93, i32 14, ; 48..55
	i32 104, i32 110, i32 123, i32 72, i32 45, i32 35, i32 122, i32 113, ; 56..63
	i32 24, i32 95, i32 94, i32 34, i32 37, i32 29, i32 12, i32 1, ; 64..71
	i32 89, i32 64, i32 33, i32 58, i32 115, i32 131, i32 99, i32 75, ; 72..79
	i32 50, i32 43, i32 94, i32 13, i32 107, i32 103, i32 80, i32 105, ; 80..87
	i32 28, i32 81, i32 97, i32 96, i32 56, i32 31, i32 101, i32 54, ; 88..95
	i32 123, i32 86, i32 74, i32 108, i32 7, i32 39, i32 76, i32 22, ; 96..103
	i32 22, i32 73, i32 51, i32 61, i32 130, i32 132, i32 69, i32 23, ; 104..111
	i32 41, i32 35, i32 71, i32 68, i32 114, i32 41, i32 104, i32 103, ; 112..119
	i32 3, i32 118, i32 42, i32 124, i32 46, i32 25, i32 129, i32 72, ; 120..127
	i32 126, i32 9, i32 26, i32 121, i32 11, i32 55, i32 85, i32 75, ; 128..135
	i32 66, i32 96, i32 9, i32 84, i32 128, i32 6, i32 117, i32 88, ; 136..143
	i32 42, i32 12, i32 27, i32 101, i32 47, i32 20, i32 34, i32 57, ; 144..151
	i32 81, i32 16, i32 54, i32 125, i32 112, i32 66, i32 133, i32 3, ; 152..159
	i32 5, i32 119, i32 61, i32 14, i32 116, i32 95, i32 122, i32 59, ; 160..167
	i32 15, i32 106, i32 48, i32 31, i32 40, i32 102, i32 100, i32 28, ; 168..175
	i32 60, i32 87, i32 105, i32 19, i32 100, i32 71, i32 44, i32 93, ; 176..183
	i32 1, i32 68, i32 0, i32 30, i32 98, i32 39, i32 19, i32 67, ; 184..191
	i32 79, i32 62, i32 52, i32 127, i32 53, i32 120, i32 2, i32 8, ; 192..199
	i32 65, i32 4, i32 98, i32 55, i32 111, i32 118, i32 49, i32 26, ; 200..207
	i32 89, i32 5, i32 124, i32 117, i32 67, i32 107, i32 52, i32 82, ; 208..215
	i32 87, i32 74, i32 90, i32 38, i32 10, i32 80, i32 111, i32 60, ; 216..223
	i32 8, i32 132, i32 127, i32 62, i32 88, i32 121, i32 59, i32 78, ; 224..231
	i32 32, i32 92, i32 109, i32 115, i32 134, i32 32, i32 23, i32 120, ; 232..239
	i32 129, i32 56, i32 85, i32 126, i32 17, i32 45, i32 83, i32 70, ; 240..247
	i32 20, i32 13, i32 50, i32 25, i32 79, i32 77, i32 106, i32 30, ; 248..255
	i32 7, i32 116, i32 109, i32 128, i32 114, i32 113, i32 18, i32 49, ; 256..263
	i32 83, i32 131, i32 65, i32 84, i32 99, i32 10 ; 264..269
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
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
