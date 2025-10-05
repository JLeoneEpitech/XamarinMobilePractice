; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [270 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 76
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 111
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 21
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 104
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 92
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 92
	i32 134690465, ; 6: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 119
	i32 146013796, ; 7: Mapsui.UI.Forms.dll => 0x8b3fe64 => 14
	i32 149764678, ; 8: Svg.Skia.dll => 0x8ed3a46 => 29
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 53
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 94
	i32 209399409, ; 11: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 51
	i32 212497893, ; 12: Xamarin.Forms.Maps.Android => 0xcaa75e5 => 105
	i32 230216969, ; 13: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 70
	i32 232815796, ; 14: System.Web.Services => 0xde07cb4 => 130
	i32 261689757, ; 15: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 56
	i32 278686392, ; 16: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 74
	i32 280482487, ; 17: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 68
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 43
	i32 319314094, ; 19: Xamarin.Forms.Maps => 0x130858ae => 106
	i32 321597661, ; 20: System.Numerics => 0x132b30dd => 34
	i32 342366114, ; 21: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 72
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 33
	i32 441335492, ; 23: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 55
	i32 442521989, ; 24: Xamarin.Essentials => 0x1a605985 => 103
	i32 450948140, ; 25: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 67
	i32 465658307, ; 26: ExCSS => 0x1bc161c3 => 6
	i32 465846621, ; 27: mscorlib => 0x1bc4415d => 17
	i32 469710990, ; 28: System.dll => 0x1bff388e => 32
	i32 469965489, ; 29: Svg.Model => 0x1c031ab1 => 28
	i32 476646585, ; 30: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 68
	i32 486930444, ; 31: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 80
	i32 525008092, ; 32: SkiaSharp.dll => 0x1f4afcdc => 23
	i32 526420162, ; 33: System.Transactions.dll => 0x1f6088c2 => 125
	i32 527452488, ; 34: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 119
	i32 548916678, ; 35: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 15
	i32 605376203, ; 36: System.IO.Compression.FileSystem => 0x24154ecb => 128
	i32 627609679, ; 37: Xamarin.AndroidX.CustomView => 0x2568904f => 61
	i32 639843206, ; 38: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 66
	i32 662205335, ; 39: System.Text.Encodings.Web.dll => 0x27787397 => 38
	i32 663517072, ; 40: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 99
	i32 666292255, ; 41: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 48
	i32 680049820, ; 42: Mapsui.Rendering.Skia.dll => 0x2888bc9c => 12
	i32 690569205, ; 43: System.Xml.Linq.dll => 0x29293ff5 => 41
	i32 691348768, ; 44: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 121
	i32 700284507, ; 45: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 116
	i32 720511267, ; 46: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 120
	i32 775507847, ; 47: System.IO.Compression => 0x2e394f87 => 127
	i32 778756650, ; 48: SkiaSharp.HarfBuzz.dll => 0x2e6ae22a => 24
	i32 809851609, ; 49: System.Drawing.Common.dll => 0x30455ad9 => 2
	i32 843511501, ; 50: Xamarin.AndroidX.Print => 0x3246f6cd => 87
	i32 899130691, ; 51: NetTopologySuite.dll => 0x3597a543 => 18
	i32 928116545, ; 52: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 111
	i32 955402788, ; 53: Newtonsoft.Json => 0x38f24a24 => 21
	i32 956575887, ; 54: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 120
	i32 967690846, ; 55: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 72
	i32 974778368, ; 56: FormsViewGroup.dll => 0x3a19f000 => 7
	i32 1012816738, ; 57: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 91
	i32 1035644815, ; 58: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 47
	i32 1042160112, ; 59: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 108
	i32 1052210849, ; 60: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 77
	i32 1084122840, ; 61: Xamarin.Kotlin.StdLib => 0x409e66d8 => 118
	i32 1098259244, ; 62: System => 0x41761b2c => 32
	i32 1175144683, ; 63: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 97
	i32 1178241025, ; 64: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 84
	i32 1204270330, ; 65: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 48
	i32 1264511973, ; 66: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 93
	i32 1267360935, ; 67: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 98
	i32 1275534314, ; 68: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 121
	i32 1293217323, ; 69: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 63
	i32 1313028017, ; 70: Topten.RichTextKit => 0x4e4337b1 => 42
	i32 1350187636, ; 71: Mapsui.UI.Forms => 0x507a3a74 => 14
	i32 1365406463, ; 72: System.ServiceModel.Internals.dll => 0x516272ff => 131
	i32 1376866003, ; 73: Xamarin.AndroidX.SavedState => 0x52114ed3 => 91
	i32 1388087747, ; 74: Mapsui.dll => 0x52bc89c3 => 10
	i32 1395857551, ; 75: Xamarin.AndroidX.Media.dll => 0x5333188f => 81
	i32 1406073936, ; 76: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 57
	i32 1411638395, ; 77: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 36
	i32 1422967952, ; 78: Mapsui.Tiling.dll => 0x54d0c490 => 13
	i32 1443938015, ; 79: NetTopologySuite => 0x5610bedf => 18
	i32 1460219004, ; 80: Xamarin.Forms.Xaml => 0x57092c7c => 109
	i32 1462112819, ; 81: System.IO.Compression.dll => 0x57261233 => 127
	i32 1469204771, ; 82: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 46
	i32 1530663695, ; 83: Xamarin.Forms.Maps.dll => 0x5b3c130f => 106
	i32 1582372066, ; 84: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 62
	i32 1592978981, ; 85: System.Runtime.Serialization.dll => 0x5ef2ee25 => 4
	i32 1600541741, ; 86: ShimSkiaSharp => 0x5f66542d => 22
	i32 1622152042, ; 87: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 79
	i32 1624863272, ; 88: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 101
	i32 1635184631, ; 89: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 66
	i32 1636350590, ; 90: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 60
	i32 1639515021, ; 91: System.Net.Http.dll => 0x61b9038d => 3
	i32 1657153582, ; 92: System.Runtime => 0x62c6282e => 37
	i32 1658241508, ; 93: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 95
	i32 1658251792, ; 94: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 110
	i32 1670060433, ; 95: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 56
	i32 1672364457, ; 96: NetTopologySuite.IO.GeoJSON4STJ.dll => 0x63ae41a9 => 20
	i32 1698840827, ; 97: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 117
	i32 1722051300, ; 98: SkiaSharp.Views.Forms => 0x66a46ae4 => 26
	i32 1729485958, ; 99: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 52
	i32 1766324549, ; 100: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 94
	i32 1776026572, ; 101: System.Core.dll => 0x69dc03cc => 31
	i32 1788241197, ; 102: Xamarin.AndroidX.Fragment => 0x6a96652d => 67
	i32 1796167890, ; 103: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 15
	i32 1808609942, ; 104: Xamarin.AndroidX.Loader => 0x6bcd3296 => 79
	i32 1813058853, ; 105: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 118
	i32 1813201214, ; 106: Xamarin.Google.Android.Material => 0x6c13413e => 110
	i32 1818569960, ; 107: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 85
	i32 1839733746, ; 108: Mapsui.Nts.dll => 0x6da81bf2 => 11
	i32 1867746548, ; 109: Xamarin.Essentials.dll => 0x6f538cf4 => 103
	i32 1878053835, ; 110: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 109
	i32 1881862856, ; 111: Xamarin.Forms.Maps.Android.dll => 0x702af2c8 => 105
	i32 1885316902, ; 112: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 49
	i32 1908813208, ; 113: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 113
	i32 1919157823, ; 114: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 82
	i32 1983156543, ; 115: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 117
	i32 2011961780, ; 116: System.Buffers.dll => 0x77ec19b4 => 30
	i32 2019465201, ; 117: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 77
	i32 2055257422, ; 118: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 73
	i32 2079903147, ; 119: System.Runtime.dll => 0x7bf8cdab => 37
	i32 2090596640, ; 120: System.Numerics.Vectors => 0x7c9bf920 => 35
	i32 2097448633, ; 121: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 69
	i32 2120018399, ; 122: XamarinPractice.dll => 0x7e5ce9df => 123
	i32 2126786730, ; 123: Xamarin.Forms.Platform.Android => 0x7ec430aa => 107
	i32 2128629340, ; 124: XamarinPractice.Android.dll => 0x7ee04e5c => 0
	i32 2129483829, ; 125: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 112
	i32 2201107256, ; 126: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 122
	i32 2201231467, ; 127: System.Net.Http => 0x8334206b => 3
	i32 2217644978, ; 128: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 97
	i32 2244775296, ; 129: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 80
	i32 2256548716, ; 130: Xamarin.AndroidX.MultiDex => 0x8680336c => 82
	i32 2261435625, ; 131: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 71
	i32 2279755925, ; 132: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 89
	i32 2315684594, ; 133: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 44
	i32 2327893114, ; 134: ExCSS.dll => 0x8ac0d47a => 6
	i32 2403452196, ; 135: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 65
	i32 2409053734, ; 136: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 86
	i32 2453119181, ; 137: XamarinPractice.Android => 0x9237a0cd => 0
	i32 2465532216, ; 138: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 55
	i32 2471841756, ; 139: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 140: Java.Interop.dll => 0x93918882 => 9
	i32 2501346920, ; 141: System.Data.DataSetExtensions => 0x95178668 => 126
	i32 2505896520, ; 142: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 76
	i32 2523023297, ; 143: Svg.Custom.dll => 0x966247c1 => 27
	i32 2570120770, ; 144: System.Text.Encodings.Web => 0x9930ee42 => 38
	i32 2577414832, ; 145: Mapsui.Nts => 0x99a03ab0 => 11
	i32 2581819634, ; 146: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 98
	i32 2602257211, ; 147: Svg.Model.dll => 0x9b1b4b3b => 28
	i32 2605712449, ; 148: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 122
	i32 2609324236, ; 149: Svg.Custom => 0x9b8720cc => 27
	i32 2620871830, ; 150: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 60
	i32 2624644809, ; 151: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 64
	i32 2633051222, ; 152: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 74
	i32 2701096212, ; 153: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 95
	i32 2732626843, ; 154: Xamarin.AndroidX.Activity => 0xa2e0939b => 43
	i32 2737747696, ; 155: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 46
	i32 2756874198, ; 156: NetTopologySuite.IO.GeoJSON4STJ => 0xa4528fd6 => 20
	i32 2765824710, ; 157: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 132
	i32 2766581644, ; 158: Xamarin.Forms.Core => 0xa4e6af8c => 104
	i32 2770495804, ; 159: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 116
	i32 2778768386, ; 160: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 100
	i32 2779977773, ; 161: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 90
	i32 2795602088, ; 162: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 25
	i32 2810250172, ; 163: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 57
	i32 2819470561, ; 164: System.Xml.dll => 0xa80db4e1 => 40
	i32 2821294376, ; 165: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 90
	i32 2847418871, ; 166: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 112
	i32 2853208004, ; 167: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 100
	i32 2855708567, ; 168: Xamarin.AndroidX.Transition => 0xaa36a797 => 96
	i32 2903344695, ; 169: System.ComponentModel.Composition => 0xad0d8637 => 129
	i32 2905242038, ; 170: mscorlib.dll => 0xad2a79b6 => 17
	i32 2912489636, ; 171: SkiaSharp.Views.Android => 0xad9910a4 => 25
	i32 2916838712, ; 172: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 101
	i32 2919462931, ; 173: System.Numerics.Vectors.dll => 0xae037813 => 35
	i32 2921128767, ; 174: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 45
	i32 2974793899, ; 175: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 26
	i32 2978675010, ; 176: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 63
	i32 2996846495, ; 177: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 75
	i32 3016983068, ; 178: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 93
	i32 3017076677, ; 179: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 114
	i32 3024354802, ; 180: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 70
	i32 3044182254, ; 181: FormsViewGroup => 0xb57288ee => 7
	i32 3057625584, ; 182: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 83
	i32 3058099980, ; 183: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 115
	i32 3111772706, ; 184: System.Runtime.Serialization => 0xb979e222 => 4
	i32 3124832203, ; 185: System.Threading.Tasks.Extensions => 0xba4127cb => 134
	i32 3134694676, ; 186: ShimSkiaSharp.dll => 0xbad7a514 => 22
	i32 3204380047, ; 187: System.Data.dll => 0xbefef58f => 124
	i32 3211777861, ; 188: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 62
	i32 3230466174, ; 189: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 113
	i32 3247949154, ; 190: Mono.Security => 0xc197c562 => 133
	i32 3258312781, ; 191: Xamarin.AndroidX.CardView => 0xc235e84d => 52
	i32 3265893370, ; 192: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 134
	i32 3267021929, ; 193: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 50
	i32 3278552754, ; 194: Mapsui => 0xc36abeb2 => 10
	i32 3317135071, ; 195: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 61
	i32 3317144872, ; 196: System.Data => 0xc5b79d28 => 124
	i32 3340387945, ; 197: SkiaSharp => 0xc71a4669 => 23
	i32 3340431453, ; 198: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 49
	i32 3345895724, ; 199: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 88
	i32 3346324047, ; 200: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 84
	i32 3353484488, ; 201: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 69
	i32 3353544232, ; 202: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 102
	i32 3358260929, ; 203: System.Text.Json => 0xc82afec1 => 39
	i32 3362522851, ; 204: Xamarin.AndroidX.Core => 0xc86c06e3 => 59
	i32 3366347497, ; 205: Java.Interop => 0xc8a662e9 => 9
	i32 3374999561, ; 206: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 89
	i32 3395150330, ; 207: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 36
	i32 3404865022, ; 208: System.ServiceModel.Internals => 0xcaf21dfe => 131
	i32 3407215217, ; 209: Xamarin.CommunityToolkit => 0xcb15fa71 => 102
	i32 3429136800, ; 210: System.Xml => 0xcc6479a0 => 40
	i32 3430777524, ; 211: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 212: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 64
	i32 3459815001, ; 213: Mapsui.Rendering.Skia => 0xce389659 => 12
	i32 3476120550, ; 214: Mono.Android => 0xcf3163e6 => 16
	i32 3485117614, ; 215: System.Text.Json.dll => 0xcfbaacae => 39
	i32 3486566296, ; 216: System.Transactions => 0xcfd0c798 => 125
	i32 3491825791, ; 217: XamarinPractice => 0xd021087f => 123
	i32 3493954962, ; 218: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 54
	i32 3501239056, ; 219: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 50
	i32 3509114376, ; 220: System.Xml.Linq => 0xd128d608 => 41
	i32 3536029504, ; 221: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 107
	i32 3567349600, ; 222: System.ComponentModel.Composition.dll => 0xd4a16f60 => 129
	i32 3618140916, ; 223: Xamarin.AndroidX.Preference => 0xd7a872f4 => 86
	i32 3627220390, ; 224: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 87
	i32 3632359727, ; 225: Xamarin.Forms.Platform => 0xd881692f => 108
	i32 3633644679, ; 226: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 45
	i32 3641597786, ; 227: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 73
	i32 3672681054, ; 228: Mono.Android.dll => 0xdae8aa5e => 16
	i32 3676310014, ; 229: System.Web.Services.dll => 0xdb2009fe => 130
	i32 3682565725, ; 230: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 51
	i32 3684561358, ; 231: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 54
	i32 3689375977, ; 232: System.Drawing.Common => 0xdbe768e9 => 2
	i32 3706696989, ; 233: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 58
	i32 3718780102, ; 234: Xamarin.AndroidX.Annotation => 0xdda814c6 => 44
	i32 3724971120, ; 235: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 83
	i32 3758932259, ; 236: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 71
	i32 3786282454, ; 237: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 53
	i32 3792835768, ; 238: HarfBuzzSharp => 0xe21214b8 => 8
	i32 3798102808, ; 239: BruTile => 0xe2627318 => 5
	i32 3822602673, ; 240: Xamarin.AndroidX.Media => 0xe3d849b1 => 81
	i32 3829621856, ; 241: System.Numerics.dll => 0xe4436460 => 34
	i32 3885922214, ; 242: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 96
	i32 3888767677, ; 243: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 88
	i32 3896760992, ; 244: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 59
	i32 3920810846, ; 245: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 128
	i32 3921031405, ; 246: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 99
	i32 3931092270, ; 247: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 85
	i32 3934069706, ; 248: Topten.RichTextKit.dll => 0xea7d23ca => 42
	i32 3945713374, ; 249: System.Data.DataSetExtensions.dll => 0xeb2ecede => 126
	i32 3952289091, ; 250: NetTopologySuite.Features.dll => 0xeb932543 => 19
	i32 3953583589, ; 251: Svg.Skia => 0xeba6e5e5 => 29
	i32 3953953790, ; 252: System.Text.Encoding.CodePages => 0xebac8bfe => 132
	i32 3955647286, ; 253: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 47
	i32 3959773229, ; 254: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 75
	i32 3970018735, ; 255: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 115
	i32 4003906742, ; 256: HarfBuzzSharp.dll => 0xeea6c4b6 => 8
	i32 4013003792, ; 257: BruTile.dll => 0xef319410 => 5
	i32 4022681963, ; 258: Mapsui.Tiling => 0xefc5416b => 13
	i32 4025784931, ; 259: System.Memory => 0xeff49a63 => 33
	i32 4066802364, ; 260: SkiaSharp.HarfBuzz => 0xf2667abc => 24
	i32 4101593132, ; 261: Xamarin.AndroidX.Emoji2 => 0xf479582c => 65
	i32 4105002889, ; 262: Mono.Security.dll => 0xf4ad5f89 => 133
	i32 4144557198, ; 263: NetTopologySuite.Features => 0xf708ec8e => 19
	i32 4151237749, ; 264: System.Core => 0xf76edc75 => 31
	i32 4182413190, ; 265: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 78
	i32 4256097574, ; 266: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 58
	i32 4260525087, ; 267: System.Buffers => 0xfdf2741f => 30
	i32 4278134329, ; 268: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 114
	i32 4292120959 ; 269: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 78
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [270 x i32] [
	i32 76, i32 111, i32 21, i32 104, i32 92, i32 92, i32 119, i32 14, ; 0..7
	i32 29, i32 53, i32 94, i32 51, i32 105, i32 70, i32 130, i32 56, ; 8..15
	i32 74, i32 68, i32 43, i32 106, i32 34, i32 72, i32 33, i32 55, ; 16..23
	i32 103, i32 67, i32 6, i32 17, i32 32, i32 28, i32 68, i32 80, ; 24..31
	i32 23, i32 125, i32 119, i32 15, i32 128, i32 61, i32 66, i32 38, ; 32..39
	i32 99, i32 48, i32 12, i32 41, i32 121, i32 116, i32 120, i32 127, ; 40..47
	i32 24, i32 2, i32 87, i32 18, i32 111, i32 21, i32 120, i32 72, ; 48..55
	i32 7, i32 91, i32 47, i32 108, i32 77, i32 118, i32 32, i32 97, ; 56..63
	i32 84, i32 48, i32 93, i32 98, i32 121, i32 63, i32 42, i32 14, ; 64..71
	i32 131, i32 91, i32 10, i32 81, i32 57, i32 36, i32 13, i32 18, ; 72..79
	i32 109, i32 127, i32 46, i32 106, i32 62, i32 4, i32 22, i32 79, ; 80..87
	i32 101, i32 66, i32 60, i32 3, i32 37, i32 95, i32 110, i32 56, ; 88..95
	i32 20, i32 117, i32 26, i32 52, i32 94, i32 31, i32 67, i32 15, ; 96..103
	i32 79, i32 118, i32 110, i32 85, i32 11, i32 103, i32 109, i32 105, ; 104..111
	i32 49, i32 113, i32 82, i32 117, i32 30, i32 77, i32 73, i32 37, ; 112..119
	i32 35, i32 69, i32 123, i32 107, i32 0, i32 112, i32 122, i32 3, ; 120..127
	i32 97, i32 80, i32 82, i32 71, i32 89, i32 44, i32 6, i32 65, ; 128..135
	i32 86, i32 0, i32 55, i32 1, i32 9, i32 126, i32 76, i32 27, ; 136..143
	i32 38, i32 11, i32 98, i32 28, i32 122, i32 27, i32 60, i32 64, ; 144..151
	i32 74, i32 95, i32 43, i32 46, i32 20, i32 132, i32 104, i32 116, ; 152..159
	i32 100, i32 90, i32 25, i32 57, i32 40, i32 90, i32 112, i32 100, ; 160..167
	i32 96, i32 129, i32 17, i32 25, i32 101, i32 35, i32 45, i32 26, ; 168..175
	i32 63, i32 75, i32 93, i32 114, i32 70, i32 7, i32 83, i32 115, ; 176..183
	i32 4, i32 134, i32 22, i32 124, i32 62, i32 113, i32 133, i32 52, ; 184..191
	i32 134, i32 50, i32 10, i32 61, i32 124, i32 23, i32 49, i32 88, ; 192..199
	i32 84, i32 69, i32 102, i32 39, i32 59, i32 9, i32 89, i32 36, ; 200..207
	i32 131, i32 102, i32 40, i32 1, i32 64, i32 12, i32 16, i32 39, ; 208..215
	i32 125, i32 123, i32 54, i32 50, i32 41, i32 107, i32 129, i32 86, ; 216..223
	i32 87, i32 108, i32 45, i32 73, i32 16, i32 130, i32 51, i32 54, ; 224..231
	i32 2, i32 58, i32 44, i32 83, i32 71, i32 53, i32 8, i32 5, ; 232..239
	i32 81, i32 34, i32 96, i32 88, i32 59, i32 128, i32 99, i32 85, ; 240..247
	i32 42, i32 126, i32 19, i32 29, i32 132, i32 47, i32 75, i32 115, ; 248..255
	i32 8, i32 5, i32 13, i32 33, i32 24, i32 65, i32 133, i32 19, ; 256..263
	i32 31, i32 78, i32 58, i32 30, i32 114, i32 78 ; 264..269
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
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
