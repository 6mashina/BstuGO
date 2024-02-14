; ModuleID = 'obj\Release\130\android\environment.arm64-v8a.ll'
source_filename = "obj\Release\130\android\environment.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.ApplicationConfig = type {
	i8,; bool uses_mono_llvm
	i8,; bool uses_mono_aot
	i8,; bool aot_lazy_load
	i8,; bool uses_assembly_preload
	i8,; bool is_a_bundled_app
	i8,; bool broken_exception_transitions
	i8,; bool instant_run_enabled
	i8,; bool jni_add_native_method_registration_attribute_present
	i8,; bool have_runtime_config_blob
	i8,; bool have_assemblies_blob
	i8,; bool marshal_methods_enabled
	i8,; uint8_t bound_stream_io_exception_type
	i32,; uint32_t package_naming_policy
	i32,; uint32_t environment_variable_count
	i32,; uint32_t system_property_count
	i32,; uint32_t number_of_assemblies_in_apk
	i32,; uint32_t bundled_assembly_name_width
	i32,; uint32_t number_of_assembly_store_files
	i32,; uint32_t number_of_dso_cache_entries
	i32,; uint32_t android_runtime_jnienv_class_token
	i32,; uint32_t jnienv_initialize_method_token
	i32,; uint32_t jnienv_registerjninatives_method_token
	i32,; uint32_t jni_remapping_replacement_type_count
	i32,; uint32_t jni_remapping_replacement_method_index_entry_count
	i32,; uint32_t mono_components_mask
	i8*; char* android_package_name
}

%struct.AssemblyStoreAssemblyDescriptor = type {
	i32,; uint32_t data_offset
	i32,; uint32_t data_size
	i32,; uint32_t debug_data_offset
	i32,; uint32_t debug_data_size
	i32,; uint32_t config_data_offset
	i32; uint32_t config_data_size
}

%struct.AssemblyStoreSingleAssemblyRuntimeData = type {
	i8*,; uint8_t* image_data
	i8*,; uint8_t* debug_info_data
	i8*,; uint8_t* config_data
	%struct.AssemblyStoreAssemblyDescriptor*; AssemblyStoreAssemblyDescriptor* descriptor
}

%struct.AssemblyStoreRuntimeData = type {
	i8*,; uint8_t* data_start
	i32,; uint32_t assembly_count
	%struct.AssemblyStoreAssemblyDescriptor*; AssemblyStoreAssemblyDescriptor* assemblies
}

%struct.XamarinAndroidBundledAssembly = type {
	i32,; int32_t apk_fd
	i32,; uint32_t data_offset
	i32,; uint32_t data_size
	i8*,; uint8_t* data
	i32,; uint32_t name_length
	i8*; char* name
}

%struct.DSOCacheEntry = type {
	i64,; uint64_t hash
	i8,; bool ignore
	i8*,; char* name
	i8*; void* handle
}

@format_tag = local_unnamed_addr constant i64 385281960275288, align 8
@__mono_aot_mode_name = internal constant [7 x i8] c"normal\00", align 1
@mono_aot_mode_name = local_unnamed_addr constant i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__mono_aot_mode_name, i64 0, i64 0), align 8

; app_environment_variables
@__app_environment_variables_n_0.0 = internal constant [11 x i8] c"MONO_DEBUG\00", align 1
@__app_environment_variables_v_0.1 = internal constant [23 x i8] c"gen-compact-seq-points\00", align 1
@__app_environment_variables_n_1.2 = internal constant [15 x i8] c"MONO_GC_PARAMS\00", align 1
@__app_environment_variables_v_1.3 = internal constant [21 x i8] c"major=marksweep-conc\00", align 1
@__app_environment_variables_n_2.4 = internal constant [17 x i8] c"XAMARIN_BUILD_ID\00", align 1
@__app_environment_variables_v_2.5 = internal constant [37 x i8] c"430ff1a8-3f42-4758-8b34-95b62a0c7e49\00", align 1
@__app_environment_variables_n_3.6 = internal constant [28 x i8] c"XA_HTTP_CLIENT_HANDLER_TYPE\00", align 1
@__app_environment_variables_v_3.7 = internal constant [41 x i8] c"Xamarin.Android.Net.AndroidClientHandler\00", align 1
@__app_environment_variables_n_4.8 = internal constant [16 x i8] c"XA_TLS_PROVIDER\00", align 1
@__app_environment_variables_v_4.9 = internal constant [5 x i8] c"btls\00", align 1
@__app_environment_variables_n_5.10 = internal constant [29 x i8] c"__XA_PACKAGE_NAMING_POLICY__\00", align 1
@__app_environment_variables_v_5.11 = internal constant [15 x i8] c"LowercaseCrc64\00", align 1

@app_environment_variables = local_unnamed_addr constant [12 x i8*] [
	i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__app_environment_variables_n_0.0, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__app_environment_variables_v_0.1, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__app_environment_variables_n_1.2, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__app_environment_variables_v_1.3, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__app_environment_variables_n_2.4, i32 0, i32 0),
	i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__app_environment_variables_v_2.5, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__app_environment_variables_n_3.6, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__app_environment_variables_v_3.7, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__app_environment_variables_n_4.8, i32 0, i32 0),
	i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__app_environment_variables_v_4.9, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__app_environment_variables_n_5.10, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__app_environment_variables_v_5.11, i32 0, i32 0)
], align 8

; app_system_properties
@app_system_properties = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__ApplicationConfig_android_package_name.0 = internal constant [23 x i8] c"com.companyname.mywork\00", align 1

; application_config
@application_config = local_unnamed_addr constant %struct.ApplicationConfig {
	i8 0, ; uses_mono_llvm
	i8 1, ; uses_mono_aot
	i8 1, ; aot_lazy_load
	i8 1, ; uses_assembly_preload
	i8 0, ; is_a_bundled_app
	i8 0, ; broken_exception_transitions
	i8 0, ; instant_run_enabled
	i8 0, ; jni_add_native_method_registration_attribute_present
	i8 0, ; have_runtime_config_blob
	i8 1, ; have_assemblies_blob
	i8 0, ; marshal_methods_enabled
	i8 1, ; bound_stream_io_exception_type
	i32 3, ; package_naming_policy
	i32 12, ; environment_variable_count
	i32 0, ; system_property_count
	i32 71, ; number_of_assemblies_in_apk
	i32 0, ; bundled_assembly_name_width
	i32 2, ; number_of_assembly_store_files
	i32 458, ; number_of_dso_cache_entries
	i32 33555351, ; android_runtime_jnienv_class_token
	i32 100674219, ; jnienv_initialize_method_token
	i32 100674218, ; jnienv_registerjninatives_method_token
	i32 0, ; jni_remapping_replacement_type_count
	i32 0, ; jni_remapping_replacement_method_index_entry_count
	i32 0, ; mono_components_mask
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__ApplicationConfig_android_package_name.0, i32 0, i32 0); android_package_name
}, align 8

@__DSOCacheEntry_name.1 = internal constant [28 x i8] c"libaot-Mono.Security.dll.so\00", align 1
@__DSOCacheEntry_name.2 = internal constant [29 x i8] c"libaot-System.Buffers.dll.so\00", align 1
@__DSOCacheEntry_name.3 = internal constant [40 x i8] c"libaot-Xamarin.AndroidX.CardView.dll.so\00", align 1
@__DSOCacheEntry_name.4 = internal constant [47 x i8] c"libaot-Xamarin.GooglePlayServices.Tasks.dll.so\00", align 1
@__DSOCacheEntry_name.5 = internal constant [46 x i8] c"libaot-Xamarin.GooglePlayServices.Base.dll.so\00", align 1
@__DSOCacheEntry_name.6 = internal constant [27 x i8] c"libaot-Mono.Android.dll.so\00", align 1
@__DSOCacheEntry_name.7 = internal constant [29 x i8] c"libaot-MyWork.Android.dll.so\00", align 1
@__DSOCacheEntry_name.8 = internal constant [44 x i8] c"libaot-System.ServiceModel.Internals.dll.so\00", align 1
@__DSOCacheEntry_name.9 = internal constant [30 x i8] c"libaot-System.Reactive.dll.so\00", align 1
@__DSOCacheEntry_name.10 = internal constant [46 x i8] c"libaot-Xamarin.Google.Android.Material.dll.so\00", align 1
@__DSOCacheEntry_name.11 = internal constant [30 x i8] c"libaot-Newtonsoft.Json.dll.so\00", align 1
@__DSOCacheEntry_name.12 = internal constant [21 x i8] c"libaot-LiteDB.dll.so\00", align 1
@__DSOCacheEntry_name.13 = internal constant [54 x i8] c"libaot-Xamarin.AndroidX.Legacy.Support.Core.UI.dll.so\00", align 1
@__DSOCacheEntry_name.14 = internal constant [44 x i8] c"libaot-Xamarin.AndroidX.RecyclerView.dll.so\00", align 1
@__DSOCacheEntry_name.15 = internal constant [51 x i8] c"libaot-Xamarin.Android.Support.Media.Compat.dll.so\00", align 1
@__DSOCacheEntry_name.16 = internal constant [23 x i8] c"libaot-mscorlib.dll.so\00", align 1
@__DSOCacheEntry_name.17 = internal constant [34 x i8] c"libaot-Google.Api.Gax.Rest.dll.so\00", align 1
@__DSOCacheEntry_name.18 = internal constant [33 x i8] c"libaot-Xamarin.Forms.Core.dll.so\00", align 1
@__DSOCacheEntry_name.19 = internal constant [26 x i8] c"libaot-System.Data.dll.so\00", align 1
@__DSOCacheEntry_name.20 = internal constant [31 x i8] c"libaot-Firebase.Storage.dll.so\00", align 1
@__DSOCacheEntry_name.21 = internal constant [36 x i8] c"libaot-System.Drawing.Common.dll.so\00", align 1
@__DSOCacheEntry_name.22 = internal constant [36 x i8] c"libaot-Xamarin.AndroidX.Core.dll.so\00", align 1
@__DSOCacheEntry_name.23 = internal constant [26 x i8] c"libaot-System.Core.dll.so\00", align 1
@__DSOCacheEntry_name.24 = internal constant [44 x i8] c"libaot-Xamarin.AndroidX.DrawerLayout.dll.so\00", align 1
@__DSOCacheEntry_name.25 = internal constant [27 x i8] c"libaot-Java.Interop.dll.so\00", align 1
@__DSOCacheEntry_name.26 = internal constant [48 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so\00", align 1
@__DSOCacheEntry_name.27 = internal constant [37 x i8] c"libaot-Xamarin.Forms.Platform.dll.so\00", align 1
@__DSOCacheEntry_name.28 = internal constant [42 x i8] c"libaot-Xamarin.AndroidX.Collection.dll.so\00", align 1
@__DSOCacheEntry_name.29 = internal constant [26 x i8] c"libaot-Google.Apis.dll.so\00", align 1
@__DSOCacheEntry_name.30 = internal constant [41 x i8] c"libaot-Xamarin.AndroidX.ViewPager.dll.so\00", align 1
@__DSOCacheEntry_name.31 = internal constant [53 x i8] c"libaot-System.Runtime.CompilerServices.Unsafe.dll.so\00", align 1
@__DSOCacheEntry_name.32 = internal constant [41 x i8] c"libaot-Xamarin.AndroidX.AppCompat.dll.so\00", align 1
@__DSOCacheEntry_name.33 = internal constant [18 x i8] c"libmono-native.so\00", align 1
@__DSOCacheEntry_name.34 = internal constant [28 x i8] c"libaot-Firebase.Auth.dll.so\00", align 1
@__DSOCacheEntry_name.35 = internal constant [42 x i8] c"libaot-Xamarin.AndroidX.SavedState.dll.so\00", align 1
@__DSOCacheEntry_name.36 = internal constant [44 x i8] c"libaot-Microsoft.Bcl.AsyncInterfaces.dll.so\00", align 1
@__DSOCacheEntry_name.37 = internal constant [55 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so\00", align 1
@__DSOCacheEntry_name.38 = internal constant [38 x i8] c"libaot-Xamarin.Firebase.Common.dll.so\00", align 1
@__DSOCacheEntry_name.39 = internal constant [52 x i8] c"libaot-Xamarin.Google.Guava.ListenableFuture.dll.so\00", align 1
@__DSOCacheEntry_name.40 = internal constant [25 x i8] c"libaot-System.Xml.dll.so\00", align 1
@__DSOCacheEntry_name.41 = internal constant [31 x i8] c"libaot-Google.Apis.Core.dll.so\00", align 1
@__DSOCacheEntry_name.42 = internal constant [34 x i8] c"libaot-System.Web.Services.dll.so\00", align 1
@__DSOCacheEntry_name.43 = internal constant [40 x i8] c"libaot-System.Text.Encodings.Web.dll.so\00", align 1
@__DSOCacheEntry_name.44 = internal constant [36 x i8] c"libaot-Xamarin.Firebase.Auth.dll.so\00", align 1
@__DSOCacheEntry_name.45 = internal constant [49 x i8] c"libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so\00", align 1
@__DSOCacheEntry_name.46 = internal constant [50 x i8] c"libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so\00", align 1
@__DSOCacheEntry_name.47 = internal constant [33 x i8] c"libaot-Xamarin.Forms.Xaml.dll.so\00", align 1
@__DSOCacheEntry_name.48 = internal constant [45 x i8] c"libaot-Xamarin.Forms.Platform.Android.dll.so\00", align 1
@__DSOCacheEntry_name.49 = internal constant [21 x i8] c"libaot-System.dll.so\00", align 1
@__DSOCacheEntry_name.50 = internal constant [28 x i8] c"libaot-FirebaseAdmin.dll.so\00", align 1
@__DSOCacheEntry_name.51 = internal constant [30 x i8] c"libaot-System.Xml.Linq.dll.so\00", align 1
@__DSOCacheEntry_name.52 = internal constant [23 x i8] c"libmono-btls-shared.so\00", align 1
@__DSOCacheEntry_name.53 = internal constant [50 x i8] c"libaot-Xamarin.GooglePlayServices.Basement.dll.so\00", align 1
@__DSOCacheEntry_name.54 = internal constant [30 x i8] c"libaot-System.Numerics.dll.so\00", align 1
@__DSOCacheEntry_name.55 = internal constant [43 x i8] c"libaot-System.Collections.Immutable.dll.so\00", align 1
@__DSOCacheEntry_name.56 = internal constant [43 x i8] c"libaot-System.Runtime.Serialization.dll.so\00", align 1
@__DSOCacheEntry_name.57 = internal constant [21 x i8] c"libaot-MyWork.dll.so\00", align 1
@__DSOCacheEntry_name.58 = internal constant [31 x i8] c"libaot-Google.Apis.Auth.dll.so\00", align 1
@__DSOCacheEntry_name.59 = internal constant [31 x i8] c"libaot-FirebaseDatabase.dll.so\00", align 1
@__DSOCacheEntry_name.60 = internal constant [48 x i8] c"libaot-System.Threading.Tasks.Extensions.dll.so\00", align 1
@__DSOCacheEntry_name.61 = internal constant [51 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so\00", align 1
@__DSOCacheEntry_name.62 = internal constant [38 x i8] c"libaot-Xamarin.AndroidX.Loader.dll.so\00", align 1
@__DSOCacheEntry_name.63 = internal constant [40 x i8] c"libaot-Xamarin.AndroidX.Activity.dll.so\00", align 1
@__DSOCacheEntry_name.64 = internal constant [33 x i8] c"libaot-Xamarin.Essentials.dll.so\00", align 1
@__DSOCacheEntry_name.65 = internal constant [29 x i8] c"libaot-FormsViewGroup.dll.so\00", align 1
@__DSOCacheEntry_name.66 = internal constant [29 x i8] c"libaot-Google.Api.Gax.dll.so\00", align 1
@__DSOCacheEntry_name.67 = internal constant [48 x i8] c"libaot-Google.Apis.Auth.PlatformServices.dll.so\00", align 1
@__DSOCacheEntry_name.68 = internal constant [23 x i8] c"libaot-Firebase.dll.so\00", align 1
@__DSOCacheEntry_name.69 = internal constant [45 x i8] c"libaot-Xamarin.Android.Support.Compat.dll.so\00", align 1
@__DSOCacheEntry_name.70 = internal constant [42 x i8] c"libaot-Xamarin.AndroidX.CustomView.dll.so\00", align 1
@__DSOCacheEntry_name.71 = internal constant [16 x i8] c"libmonodroid.so\00", align 1
@__DSOCacheEntry_name.72 = internal constant [60 x i8] c"libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so\00", align 1
@__DSOCacheEntry_name.73 = internal constant [30 x i8] c"libaot-System.Net.Http.dll.so\00", align 1
@__DSOCacheEntry_name.74 = internal constant [31 x i8] c"libaot-System.Text.Json.dll.so\00", align 1
@__DSOCacheEntry_name.75 = internal constant [22 x i8] c"libxa-internal-api.so\00", align 1
@__DSOCacheEntry_name.76 = internal constant [19 x i8] c"libmonosgen-2.0.so\00", align 1
@__DSOCacheEntry_name.77 = internal constant [24 x i8] c"libaot-RestSharp.dll.so\00", align 1
@__DSOCacheEntry_name.78 = internal constant [40 x i8] c"libaot-Xamarin.AndroidX.Fragment.dll.so\00", align 1

; dso_cache
@dso_cache = local_unnamed_addr global [458 x %struct.DSOCacheEntry] [
	; 0
	%struct.DSOCacheEntry {
		i64 5995979035480722, ; hash 0x154d4fa87d9292, from name: Mono.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1
	%struct.DSOCacheEntry {
		i64 10013782901593326, ; hash 0x23937b84b514ee, from name: aot-System.Buffers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 2
	%struct.DSOCacheEntry {
		i64 16604595802139920, ; hash 0x3afdcaba6ced10, from name: libaot-Xamarin.AndroidX.CardView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 3
	%struct.DSOCacheEntry {
		i64 72427043973674519, ; hash 0x1015003442eb617, from name: aot-Mono.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 4
	%struct.DSOCacheEntry {
		i64 102964479474942274, ; hash 0x16dcda607964142, from name: libaot-Xamarin.GooglePlayServices.Tasks
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 5
	%struct.DSOCacheEntry {
		i64 119522282513760569, ; hash 0x1a8a0e1f7fa0139, from name: libaot-Xamarin.GooglePlayServices.Base
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 6
	%struct.DSOCacheEntry {
		i64 120698629574877762, ; hash 0x1accec39cafe242, from name: Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 7
	%struct.DSOCacheEntry {
		i64 173356215839273722, ; hash 0x267e28f50b4b2fa, from name: aot-MyWork.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 8
	%struct.DSOCacheEntry {
		i64 192459931963937950, ; hash 0x2abc149d634d49e, from name: libaot-System.ServiceModel.Internals
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 9
	%struct.DSOCacheEntry {
		i64 247316500576022056, ; hash 0x36ea50c03ed2e28, from name: System.Reactive.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 10
	%struct.DSOCacheEntry {
		i64 310829165835334582, ; hash 0x450497abf7233b6, from name: libaot-Xamarin.Google.Android.Material.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 11
	%struct.DSOCacheEntry {
		i64 318998200374973725, ; hash 0x46d4f2c5156d51d, from name: libaot-Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 12
	%struct.DSOCacheEntry {
		i64 373691228994403894, ; hash 0x52f9e315fe3fe36, from name: aot-LiteDB.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 13
	%struct.DSOCacheEntry {
		i64 379089755283511301, ; hash 0x542cc1fb9a9d805, from name: aot-Xamarin.AndroidX.Legacy.Support.Core.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 14
	%struct.DSOCacheEntry {
		i64 483259409837255036, ; hash 0x6b4e1df71b6e97c, from name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 15
	%struct.DSOCacheEntry {
		i64 517305746021661547, ; hash 0x72dd6d5cfe3bb6b, from name: Xamarin.Android.Support.Media.Compat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 16
	%struct.DSOCacheEntry {
		i64 544667435434772016, ; hash 0x78f0c2591d00630, from name: libaot-mscorlib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 17
	%struct.DSOCacheEntry {
		i64 551592884818111861, ; hash 0x7a7a6ce68376d75, from name: aot-Google.Api.Gax.Rest
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 18
	%struct.DSOCacheEntry {
		i64 587670444148824379, ; hash 0x827d327c47c993b, from name: aot-Xamarin.Forms.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 19
	%struct.DSOCacheEntry {
		i64 643375859359477927, ; hash 0x8edbaef722ef0a7, from name: aot-System.Data.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 20
	%struct.DSOCacheEntry {
		i64 666508016683072949, ; hash 0x93fe98286583db5, from name: aot-Firebase.Storage.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 21
	%struct.DSOCacheEntry {
		i64 687654259221141486, ; hash 0x98b09e7c92917ee, from name: Xamarin.GooglePlayServices.Base
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 22
	%struct.DSOCacheEntry {
		i64 702024105029695270, ; hash 0x9be17343c0e7726, from name: System.Drawing.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 23
	%struct.DSOCacheEntry {
		i64 720058930071658100, ; hash 0x9fe29c82844de74, from name: Xamarin.AndroidX.Legacy.Support.Core.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 24
	%struct.DSOCacheEntry {
		i64 743359736279824557, ; hash 0xa50f1bddd4978ad, from name: libaot-Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 25
	%struct.DSOCacheEntry {
		i64 771524290733889039, ; hash 0xab5014134c7560f, from name: libaot-System.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 26
	%struct.DSOCacheEntry {
		i64 872800313462103108, ; hash 0xc1ccf42c3c21c44, from name: Xamarin.AndroidX.DrawerLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 27
	%struct.DSOCacheEntry {
		i64 885517307436000596, ; hash 0xc49fd4ca82ee554, from name: aot-System.Drawing.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 28
	%struct.DSOCacheEntry {
		i64 926729488379472330, ; hash 0xcdc678f45bce9ca, from name: aot-Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 29
	%struct.DSOCacheEntry {
		i64 926762996762141689, ; hash 0xcdc86090cfbe3f9, from name: libaot-Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 30
	%struct.DSOCacheEntry {
		i64 995368324521637483, ; hash 0xdd04237abc9b66b, from name: aot-Xamarin.Forms.Platform.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 31
	%struct.DSOCacheEntry {
		i64 996343623809489702, ; hash 0xdd3b93f3b63db26, from name: Xamarin.Forms.Platform
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 32
	%struct.DSOCacheEntry {
		i64 1105823786017116690, ; hash 0xf58acdfddba5212, from name: libaot-LiteDB
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 33
	%struct.DSOCacheEntry {
		i64 1151394494093259064, ; hash 0xffa933128c4f138, from name: aot-Xamarin.AndroidX.Collection
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 34
	%struct.DSOCacheEntry {
		i64 1256379984108980784, ; hash 0x116f8ef05fba0a30, from name: aot-Google.Apis
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 35
	%struct.DSOCacheEntry {
		i64 1310390983169450822, ; hash 0x122f71a80cb0a346, from name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 36
	%struct.DSOCacheEntry {
		i64 1336414576634453616, ; hash 0x128be5fa10f35e70, from name: aot-System.Runtime.CompilerServices.Unsafe
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 37
	%struct.DSOCacheEntry {
		i64 1347602760944503386, ; hash 0x12b3a592386eca5a, from name: libaot-Xamarin.AndroidX.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 38
	%struct.DSOCacheEntry {
		i64 1354059257266509963, ; hash 0x12ca95b86a33188b, from name: libaot-System.Reactive
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 39
	%struct.DSOCacheEntry {
		i64 1620383766352397640, ; hash 0x167cc273493e8548, from name: libaot-Xamarin.Forms.Platform
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 40
	%struct.DSOCacheEntry {
		i64 1641320959751678609, ; hash 0x16c724b78066ea91, from name: Xamarin.GooglePlayServices.Tasks.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 41
	%struct.DSOCacheEntry {
		i64 1731380447121279447, ; hash 0x18071957e9b889d7, from name: Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 42
	%struct.DSOCacheEntry {
		i64 1735841361372535901, ; hash 0x1816f285730a5c5d, from name: mono-native
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 43
	%struct.DSOCacheEntry {
		i64 1756598369329214952, ; hash 0x1860b0e8f8e5f5e8, from name: libaot-Xamarin.GooglePlayServices.Tasks.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 44
	%struct.DSOCacheEntry {
		i64 1785208683505924762, ; hash 0x18c655d6d6503a9a, from name: libaot-Firebase.Auth
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 45
	%struct.DSOCacheEntry {
		i64 1836611346387731153, ; hash 0x197cf449ebe482d1, from name: Xamarin.AndroidX.SavedState
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 46
	%struct.DSOCacheEntry {
		i64 1865037103900624886, ; hash 0x19e1f15d56eb87f6, from name: Microsoft.Bcl.AsyncInterfaces
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 47
	%struct.DSOCacheEntry {
		i64 1893652335120276468, ; hash 0x1a479ac40aeedbf4, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 48
	%struct.DSOCacheEntry {
		i64 1948032851833966999, ; hash 0x1b08cd8ec05ad197, from name: libaot-Xamarin.Firebase.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 49
	%struct.DSOCacheEntry {
		i64 1998496697131023285, ; hash 0x1bbc162855493bb5, from name: aot-System.Runtime.CompilerServices.Unsafe.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 50
	%struct.DSOCacheEntry {
		i64 2051156130528451545, ; hash 0x1c772ba21b035bd9, from name: System.Drawing.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 51
	%struct.DSOCacheEntry {
		i64 2054529855940994150, ; hash 0x1c832804c3cc2466, from name: aot-Xamarin.AndroidX.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 52
	%struct.DSOCacheEntry {
		i64 2056946083084152442, ; hash 0x1c8bbd907c5cae7a, from name: aot-Xamarin.Google.Guava.ListenableFuture.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 53
	%struct.DSOCacheEntry {
		i64 2059885036233362492, ; hash 0x1c962e86d6d50c3c, from name: libaot-Xamarin.AndroidX.Legacy.Support.Core.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 54
	%struct.DSOCacheEntry {
		i64 2063968891640723124, ; hash 0x1ca4b0c585b3b6b4, from name: System.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 55
	%struct.DSOCacheEntry {
		i64 2064796236023081417, ; hash 0x1ca7a13ca5b829c9, from name: aot-Google.Apis.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 56
	%struct.DSOCacheEntry {
		i64 2117103631422224137, ; hash 0x1d6176892f9c7709, from name: libaot-System.ServiceModel.Internals.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 57
	%struct.DSOCacheEntry {
		i64 2184987568895080118, ; hash 0x1e52a29e0aa2b6b6, from name: Google.Api.Gax.Rest.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 58
	%struct.DSOCacheEntry {
		i64 2188053935818705699, ; hash 0x1e5d877639de8b23, from name: aot-Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 59
	%struct.DSOCacheEntry {
		i64 2220005773605754997, ; hash 0x1ecf0b7d2f165875, from name: libaot-Xamarin.AndroidX.Legacy.Support.Core.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 60
	%struct.DSOCacheEntry {
		i64 2284400282711631002, ; hash 0x1fb3d1f42fd4249a, from name: System.Web.Services
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 61
	%struct.DSOCacheEntry {
		i64 2285715472525506263, ; hash 0x1fb87e1cad7f36d7, from name: aot-Xamarin.AndroidX.Legacy.Support.Core.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 62
	%struct.DSOCacheEntry {
		i64 2335503487726329082, ; hash 0x2069600c4d9d1cfa, from name: System.Text.Encodings.Web
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 63
	%struct.DSOCacheEntry {
		i64 2337758774805907496, ; hash 0x207163383edbc828, from name: System.Runtime.CompilerServices.Unsafe
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 64
	%struct.DSOCacheEntry {
		i64 2337838956718365125, ; hash 0x2071ac250d4499c5, from name: aot-Xamarin.Firebase.Auth
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 65
	%struct.DSOCacheEntry {
		i64 2470498323731680442, ; hash 0x2248f922dc398cba, from name: Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 66
	%struct.DSOCacheEntry {
		i64 2471278266606390833, ; hash 0x224bbe7d76378e31, from name: libaot-Xamarin.Forms.Platform.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 67
	%struct.DSOCacheEntry {
		i64 2522582145975789087, ; hash 0x23020318b7a1261f, from name: Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 68
	%struct.DSOCacheEntry {
		i64 2564867392456424521, ; hash 0x23983d4ddf58fc49, from name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 69
	%struct.DSOCacheEntry {
		i64 2583255201894690065, ; hash 0x23d990eb611ced11, from name: libaot-Xamarin.Forms.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 70
	%struct.DSOCacheEntry {
		i64 2685939715526887227, ; hash 0x25465ff0c818073b, from name: Xamarin.Forms.Platform.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 71
	%struct.DSOCacheEntry {
		i64 2799603620072217830, ; hash 0x26da30a8d64d5ce6, from name: aot-Xamarin.Forms.Platform.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 72
	%struct.DSOCacheEntry {
		i64 2895224535127013735, ; hash 0x282de760093db967, from name: libaot-System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 73
	%struct.DSOCacheEntry {
		i64 2960931600190307745, ; hash 0x2917579a49927da1, from name: Xamarin.Forms.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 74
	%struct.DSOCacheEntry {
		i64 2967592192117877398, ; hash 0x292f01603168aa96, from name: Xamarin.Forms.Platform.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 75
	%struct.DSOCacheEntry {
		i64 3017704767998173186, ; hash 0x29e10a7f7d88a002, from name: Xamarin.Google.Android.Material
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 76
	%struct.DSOCacheEntry {
		i64 3038175307180388234, ; hash 0x2a29c4584dd9af8a, from name: aot-Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 77
	%struct.DSOCacheEntry {
		i64 3108167353802057239, ; hash 0x2b226dbd91d66617, from name: libaot-Xamarin.AndroidX.SavedState
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 78
	%struct.DSOCacheEntry {
		i64 3136711587397723322, ; hash 0x2b87d691d9b164ba, from name: FirebaseAdmin.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 79
	%struct.DSOCacheEntry {
		i64 3188209531010000695, ; hash 0x2c3ecbad355da737, from name: System.Text.Encodings.Web.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 80
	%struct.DSOCacheEntry {
		i64 3228004203549710724, ; hash 0x2ccc2cb86e0c5984, from name: aot-System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 81
	%struct.DSOCacheEntry {
		i64 3245573717126666778, ; hash 0x2d0a981995adda1a, from name: mono-btls-shared
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 82
	%struct.DSOCacheEntry {
		i64 3282577833136852042, ; hash 0x2d8e0f25bbb18c4a, from name: aot-Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 83
	%struct.DSOCacheEntry {
		i64 3289520064315143713, ; hash 0x2da6b911e3063621, from name: Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 84
	%struct.DSOCacheEntry {
		i64 3293430362434453585, ; hash 0x2db49d771d644051, from name: aot-System.ServiceModel.Internals.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 85
	%struct.DSOCacheEntry {
		i64 3351936572949933674, ; hash 0x2e84788dc4522e6a, from name: libaot-Google.Apis.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 86
	%struct.DSOCacheEntry {
		i64 3364695309916733813, ; hash 0x2eb1cc8eb5028175, from name: Xamarin.Firebase.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 87
	%struct.DSOCacheEntry {
		i64 3387343871458221356, ; hash 0x2f02434dde5d1d2c, from name: Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 88
	%struct.DSOCacheEntry {
		i64 3411255996856937470, ; hash 0x2f5737416a942bfe, from name: Xamarin.GooglePlayServices.Basement
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 89
	%struct.DSOCacheEntry {
		i64 3522470458906976663, ; hash 0x30e2543832f52197, from name: Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 90
	%struct.DSOCacheEntry {
		i64 3531994851595924923, ; hash 0x31042a9aade235bb, from name: System.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 91
	%struct.DSOCacheEntry {
		i64 3577153083746314324, ; hash 0x31a499c6efe46854, from name: libaot-System.Collections.Immutable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 92
	%struct.DSOCacheEntry {
		i64 3585225387666355025, ; hash 0x31c1477ea790b351, from name: libaot-Xamarin.Android.Support.Media.Compat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 93
	%struct.DSOCacheEntry {
		i64 3624954949676586435, ; hash 0x324e6d52264455c3, from name: libmono-native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 94
	%struct.DSOCacheEntry {
		i64 3673950514234315711, ; hash 0x32fc7e86fb4cd3bf, from name: System.Runtime.Serialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 95
	%struct.DSOCacheEntry {
		i64 3707216742628388692, ; hash 0x3372adfc59beef54, from name: aot-Xamarin.AndroidX.CardView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 96
	%struct.DSOCacheEntry {
		i64 3727469159507183293, ; hash 0x33baa1739ba646bd, from name: Xamarin.AndroidX.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 97
	%struct.DSOCacheEntry {
		i64 3750968707670692760, ; hash 0x340e1e2a88515398, from name: aot-Xamarin.Forms.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 98
	%struct.DSOCacheEntry {
		i64 3757256743119320929, ; hash 0x34247519df917761, from name: aot-Xamarin.GooglePlayServices.Base.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 99
	%struct.DSOCacheEntry {
		i64 3766788760912740873, ; hash 0x3446526bb6234209, from name: aot-System.Collections.Immutable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 100
	%struct.DSOCacheEntry {
		i64 3792734155220677803, ; hash 0x34a27f9e916b74ab, from name: libaot-System.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 101
	%struct.DSOCacheEntry {
		i64 3831950323221560130, ; hash 0x352dd28434907b42, from name: Xamarin.GooglePlayServices.Basement.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 102
	%struct.DSOCacheEntry {
		i64 3865117617889807977, ; hash 0x35a3a7fec56d0e69, from name: aot-Xamarin.GooglePlayServices.Tasks
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 103
	%struct.DSOCacheEntry {
		i64 3883875758066343538, ; hash 0x35e64c6c9f4b9e72, from name: libmono-btls-shared
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 104
	%struct.DSOCacheEntry {
		i64 3889872676870108338, ; hash 0x35fb9a97165734b2, from name: libaot-MyWork.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 105
	%struct.DSOCacheEntry {
		i64 3926486732424186854, ; hash 0x367daee1356d8be6, from name: aot-Xamarin.AndroidX.DrawerLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 106
	%struct.DSOCacheEntry {
		i64 4056584864658557221, ; hash 0x384be27113330925, from name: Google.Apis.Auth
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 107
	%struct.DSOCacheEntry {
		i64 4115927144641244248, ; hash 0x391eb5ee51baac58, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 108
	%struct.DSOCacheEntry {
		i64 4166305674373401598, ; hash 0x39d1b0efd2b88bfe, from name: aot-FirebaseDatabase
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 109
	%struct.DSOCacheEntry {
		i64 4220783285704279373, ; hash 0x3a933c09224f454d, from name: aot-System.Threading.Tasks.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 110
	%struct.DSOCacheEntry {
		i64 4243001330476888824, ; hash 0x3ae22b3acc95b2f8, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 111
	%struct.DSOCacheEntry {
		i64 4247996603072512073, ; hash 0x3af3ea6755340049, from name: Xamarin.GooglePlayServices.Tasks
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 112
	%struct.DSOCacheEntry {
		i64 4253135428940497963, ; hash 0x3b062c2377a0842b, from name: aot-Xamarin.Forms.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 113
	%struct.DSOCacheEntry {
		i64 4425588670699136170, ; hash 0x3d6ad972bf03e4aa, from name: Xamarin.AndroidX.Collection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 114
	%struct.DSOCacheEntry {
		i64 4472958691645351923, ; hash 0x3e13243b368467f3, from name: aot-mscorlib
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 115
	%struct.DSOCacheEntry {
		i64 4480088684592380434, ; hash 0x3e2c78ec0f603a12, from name: aot-Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 116
	%struct.DSOCacheEntry {
		i64 4510320249702611779, ; hash 0x3e97e05ed2c67b43, from name: aot-MyWork.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 117
	%struct.DSOCacheEntry {
		i64 4511511353632409648, ; hash 0x3e9c1bac5166c830, from name: libaot-System.Runtime.CompilerServices.Unsafe.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 118
	%struct.DSOCacheEntry {
		i64 4519937209358600751, ; hash 0x3eba0af1bae3ca2f, from name: aot-Xamarin.AndroidX.Loader
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 119
	%struct.DSOCacheEntry {
		i64 4525561845656915374, ; hash 0x3ece06856b710dae, from name: System.ServiceModel.Internals
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 120
	%struct.DSOCacheEntry {
		i64 4535721413119024522, ; hash 0x3ef21e980d179d8a, from name: System.ServiceModel.Internals.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 121
	%struct.DSOCacheEntry {
		i64 4727951288059655328, ; hash 0x419d0ea5902574a0, from name: aot-Xamarin.GooglePlayServices.Basement
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 122
	%struct.DSOCacheEntry {
		i64 4746643953623332214, ; hash 0x41df7786eaf97576, from name: libaot-mscorlib
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 123
	%struct.DSOCacheEntry {
		i64 4794310189461587505, ; hash 0x4288cfb749e4c631, from name: Xamarin.AndroidX.Activity
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 124
	%struct.DSOCacheEntry {
		i64 4799618160137045028, ; hash 0x429bab49847b8424, from name: aot-System.Runtime.Serialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 125
	%struct.DSOCacheEntry {
		i64 4904233532833714071, ; hash 0x440f566a141ccf97, from name: libaot-System.Reactive.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 126
	%struct.DSOCacheEntry {
		i64 4942169814716192606, ; hash 0x44961d4301d1175e, from name: aot-Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 127
	%struct.DSOCacheEntry {
		i64 5019825185704047249, ; hash 0x45aa00690472f291, from name: MyWork.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 128
	%struct.DSOCacheEntry {
		i64 5052429638295086546, ; hash 0x461dd5fcb33be5d2, from name: FirebaseDatabase
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 129
	%struct.DSOCacheEntry {
		i64 5065336944551345014, ; hash 0x464bb11d1fa53b76, from name: aot-LiteDB
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 130
	%struct.DSOCacheEntry {
		i64 5084339791899622993, ; hash 0x468f341a4d8f7e51, from name: aot-System.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 131
	%struct.DSOCacheEntry {
		i64 5109692736403029004, ; hash 0x46e94678b0b23c0c, from name: libaot-System.Text.Encodings.Web
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 132
	%struct.DSOCacheEntry {
		i64 5161979805990825802, ; hash 0x47a30948c1d2af4a, from name: libaot-Xamarin.Forms.Platform.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 133
	%struct.DSOCacheEntry {
		i64 5203618020066742981, ; hash 0x4836f704f0e652c5, from name: Xamarin.Essentials
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 134
	%struct.DSOCacheEntry {
		i64 5255546469364035812, ; hash 0x48ef73ab370070e4, from name: aot-Xamarin.AndroidX.Activity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 135
	%struct.DSOCacheEntry {
		i64 5266401548478623734, ; hash 0x4916044e45a2aff6, from name: aot-Xamarin.Google.Android.Material
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 136
	%struct.DSOCacheEntry {
		i64 5355160709108388812, ; hash 0x4a515a4ac588d3cc, from name: libaot-Xamarin.Essentials
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 137
	%struct.DSOCacheEntry {
		i64 5384941644731431548, ; hash 0x4abb27e52e6cba7c, from name: aot-Xamarin.Essentials
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 138
	%struct.DSOCacheEntry {
		i64 5428475970428150530, ; hash 0x4b55d222411d2302, from name: System.Buffers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 139
	%struct.DSOCacheEntry {
		i64 5535824497487583294, ; hash 0x4cd3330ce7a7183e, from name: libaot-System.Drawing.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 140
	%struct.DSOCacheEntry {
		i64 5550865768259438606, ; hash 0x4d08a301a8fac80e, from name: aot-FormsViewGroup
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 141
	%struct.DSOCacheEntry {
		i64 5655953059672538577, ; hash 0x4e7dfb575c10bdd1, from name: aot-Google.Api.Gax
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 142
	%struct.DSOCacheEntry {
		i64 5665389054145784248, ; hash 0x4e9f815406bee9b8, from name: Google.Apis.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 143
	%struct.DSOCacheEntry {
		i64 5678506072386041620, ; hash 0x4ece1b2fd377f714, from name: aot-System.Buffers
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 144
	%struct.DSOCacheEntry {
		i64 5737677363812651997, ; hash 0x4fa05329b1da53dd, from name: libaot-Google.Apis.Auth
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 145
	%struct.DSOCacheEntry {
		i64 5759268217942071081, ; hash 0x4fed07ee28a25729, from name: aot-Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 146
	%struct.DSOCacheEntry {
		i64 5769168473139204438, ; hash 0x50103428f2d85156, from name: libaot-Google.Apis.Auth.PlatformServices
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 147
	%struct.DSOCacheEntry {
		i64 5913405167774985393, ; hash 0x5210a2ab662fecb1, from name: libaot-Firebase
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 148
	%struct.DSOCacheEntry {
		i64 6120656991460866797, ; hash 0x54f0f11ae8093aed, from name: aot-System.Runtime.Serialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 149
	%struct.DSOCacheEntry {
		i64 6340165506210936529, ; hash 0x57fccaefaee336d1, from name: Firebase.Storage.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 150
	%struct.DSOCacheEntry {
		i64 6352489697598145066, ; hash 0x582893b918aa822a, from name: Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 151
	%struct.DSOCacheEntry {
		i64 6376181678372852540, ; hash 0x587cbf743ac4933c, from name: aot-Xamarin.Forms.Platform.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 152
	%struct.DSOCacheEntry {
		i64 6401687960814735282, ; hash 0x58d75d486341cfb2, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 153
	%struct.DSOCacheEntry {
		i64 6406020188140135493, ; hash 0x58e6c16baa12e445, from name: aot-Xamarin.GooglePlayServices.Base
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 154
	%struct.DSOCacheEntry {
		i64 6424285127514928827, ; hash 0x5927a549415a36bb, from name: libaot-Xamarin.Firebase.Auth.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 155
	%struct.DSOCacheEntry {
		i64 6457195912600883720, ; hash 0x599c917887ae1208, from name: libaot-Xamarin.Forms.Platform.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 156
	%struct.DSOCacheEntry {
		i64 6494981841148195907, ; hash 0x5a22cf9298403443, from name: MyWork.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 157
	%struct.DSOCacheEntry {
		i64 6510495227258673129, ; hash 0x5a59ecea44a117e9, from name: libaot-Google.Apis.Auth.PlatformServices.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 158
	%struct.DSOCacheEntry {
		i64 6521880595188375514, ; hash 0x5a825fd8cfb75fda, from name: aot-Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 159
	%struct.DSOCacheEntry {
		i64 6560588458386133218, ; hash 0x5b0be47183a210e2, from name: libaot-Xamarin.AndroidX.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 160
	%struct.DSOCacheEntry {
		i64 6577451265566395219, ; hash 0x5b47cd13c3874b53, from name: libaot-Firebase.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 161
	%struct.DSOCacheEntry {
		i64 6693611715830464971, ; hash 0x5ce47c642a77c1cb, from name: aot-FirebaseAdmin.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 162
	%struct.DSOCacheEntry {
		i64 6811092106988893788, ; hash 0x5e85dc2f418a365c, from name: aot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 163
	%struct.DSOCacheEntry {
		i64 6836385375498469829, ; hash 0x5edfb8473e4301c5, from name: Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 164
	%struct.DSOCacheEntry {
		i64 6876862101832370452, ; hash 0x5f6f85a57d108914, from name: System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 165
	%struct.DSOCacheEntry {
		i64 6879679050593672945, ; hash 0x5f7987a57b551ef1, from name: libaot-Xamarin.AndroidX.CardView
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 166
	%struct.DSOCacheEntry {
		i64 6934772601320367100, ; hash 0x603d42f05bcfe3fc, from name: Google.Api.Gax.Rest
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 167
	%struct.DSOCacheEntry {
		i64 6935204139325058492, ; hash 0x603ecb6ba149edbc, from name: libaot-System.Data
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 168
	%struct.DSOCacheEntry {
		i64 6941080589610463230, ; hash 0x6053ac0555172ffe, from name: Google.Apis.Auth.PlatformServices
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 169
	%struct.DSOCacheEntry {
		i64 6981457747060663977, ; hash 0x60e31ed4e3f326a9, from name: aot-Google.Api.Gax.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 170
	%struct.DSOCacheEntry {
		i64 7005231924406374519, ; hash 0x61379551e777d077, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 171
	%struct.DSOCacheEntry {
		i64 7056657826117625895, ; hash 0x61ee48e7b338a827, from name: Google.Api.Gax.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 172
	%struct.DSOCacheEntry {
		i64 7086827931071621775, ; hash 0x62597874a7d72a8f, from name: aot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 173
	%struct.DSOCacheEntry {
		i64 7089461996855839628, ; hash 0x6262d41fe3394b8c, from name: aot-Xamarin.Firebase.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 174
	%struct.DSOCacheEntry {
		i64 7103284369736571931, ; hash 0x6293ef7fdcbb9c1b, from name: libaot-Xamarin.Android.Support.Compat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 175
	%struct.DSOCacheEntry {
		i64 7106548671186296926, ; hash 0x629f885d4515605e, from name: libaot-System.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 176
	%struct.DSOCacheEntry {
		i64 7198932752074671326, ; hash 0x63e7bf32495604de, from name: libaot-Xamarin.AndroidX.Collection
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 177
	%struct.DSOCacheEntry {
		i64 7250280782241497866, ; hash 0x649e2bf53358830a, from name: System.Web.Services.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 178
	%struct.DSOCacheEntry {
		i64 7293199643205339005, ; hash 0x6536a66f3942877d, from name: aot-Xamarin.AndroidX.CustomView
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 179
	%struct.DSOCacheEntry {
		i64 7338982286544642983, ; hash 0x65d94d818a60a3a7, from name: monodroid.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 180
	%struct.DSOCacheEntry {
		i64 7407203823444058461, ; hash 0x66cbaca1e34c615d, from name: libaot-Xamarin.Forms.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 181
	%struct.DSOCacheEntry {
		i64 7447924280570395180, ; hash 0x675c57ac2167ba2c, from name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 182
	%struct.DSOCacheEntry {
		i64 7465578309990517956, ; hash 0x679b0feb29d88cc4, from name: aot-System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 183
	%struct.DSOCacheEntry {
		i64 7477302391979602800, ; hash 0x67c4b6e8b81f7370, from name: Xamarin.AndroidX.CardView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 184
	%struct.DSOCacheEntry {
		i64 7535601351437907993, ; hash 0x6893d580f968f819, from name: System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 185
	%struct.DSOCacheEntry {
		i64 7562745243648569747, ; hash 0x68f444bade72b193, from name: libaot-System.Web.Services.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 186
	%struct.DSOCacheEntry {
		i64 7564660874610836040, ; hash 0x68fb12fc75798248, from name: Xamarin.AndroidX.CustomView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 187
	%struct.DSOCacheEntry {
		i64 7602111570124318452, ; hash 0x698020320025a6f4, from name: System.Reactive
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 188
	%struct.DSOCacheEntry {
		i64 7647307132791111439, ; hash 0x6a20b151f2533f0f, from name: libaot-Xamarin.Firebase.Auth
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 189
	%struct.DSOCacheEntry {
		i64 7654504624184590948, ; hash 0x6a3a4366801b8264, from name: System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 190
	%struct.DSOCacheEntry {
		i64 7658328537957887241, ; hash 0x6a47d93ace376d09, from name: libaot-Xamarin.Google.Android.Material
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 191
	%struct.DSOCacheEntry {
		i64 7668171543473388158, ; hash 0x6a6ad1641d7d7a7e, from name: aot-Google.Api.Gax.Rest.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 192
	%struct.DSOCacheEntry {
		i64 7682845583411130467, ; hash 0x6a9ef35a47663063, from name: aot-MyWork.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 193
	%struct.DSOCacheEntry {
		i64 7695876457946633523, ; hash 0x6acd3edd2f335533, from name: aot-System.Text.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 194
	%struct.DSOCacheEntry {
		i64 7717568796801148197, ; hash 0x6b1a4fee66f8a525, from name: libxa-internal-api
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 195
	%struct.DSOCacheEntry {
		i64 7740286304433625072, ; hash 0x6b6b0562539657f0, from name: libmonosgen-2.0
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 196
	%struct.DSOCacheEntry {
		i64 7775464348757467397, ; hash 0x6be7ffa107672105, from name: libaot-Xamarin.AndroidX.CustomView
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 197
	%struct.DSOCacheEntry {
		i64 7820441508502274321, ; hash 0x6c87ca1e14ff8111, from name: System.Data
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 198
	%struct.DSOCacheEntry {
		i64 7836164640616011524, ; hash 0x6cbfa6390d64d704, from name: Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 199
	%struct.DSOCacheEntry {
		i64 7974095695751206426, ; hash 0x6ea9adc96638d61a, from name: libaot-System.Text.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 200
	%struct.DSOCacheEntry {
		i64 8022274032104026556, ; hash 0x6f54d7ba7666b1bc, from name: libaot-FormsViewGroup
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 201
	%struct.DSOCacheEntry {
		i64 8069027220385562465, ; hash 0x6ffaf1816209ff61, from name: aot-System.Text.Encodings.Web
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 202
	%struct.DSOCacheEntry {
		i64 8115332864039026455, ; hash 0x709f743e33197f17, from name: aot-System.Web.Services.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 203
	%struct.DSOCacheEntry {
		i64 8219953027056599434, ; hash 0x721323ba181b018a, from name: libaot-FirebaseAdmin
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 204
	%struct.DSOCacheEntry {
		i64 8226234685625342969, ; hash 0x722974dcb3b21bf9, from name: aot-FirebaseDatabase.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 205
	%struct.DSOCacheEntry {
		i64 8245499330237193625, ; hash 0x726de5f44e825d99, from name: aot-System.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 206
	%struct.DSOCacheEntry {
		i64 8254466535980081171, ; hash 0x728dc19497712013, from name: libaot-RestSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 207
	%struct.DSOCacheEntry {
		i64 8298665547085841745, ; hash 0x732ac858cbd30551, from name: aot-System.Text.Encodings.Web.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 208
	%struct.DSOCacheEntry {
		i64 8316843229190310146, ; hash 0x736b5cda38804902, from name: Xamarin.Forms.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 209
	%struct.DSOCacheEntry {
		i64 8392333777418328833, ; hash 0x74778f1b27881b01, from name: libmonodroid.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 210
	%struct.DSOCacheEntry {
		i64 8518412311883997971, ; hash 0x76377add7c28e313, from name: System.Collections.Immutable
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 211
	%struct.DSOCacheEntry {
		i64 8522025752637549819, ; hash 0x7644514538b12cfb, from name: aot-Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 212
	%struct.DSOCacheEntry {
		i64 8612207396229290788, ; hash 0x7784b4ff583d1b24, from name: aot-System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 213
	%struct.DSOCacheEntry {
		i64 8623099412595258045, ; hash 0x77ab673a869eb2bd, from name: libaot-System.Text.Encodings.Web.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 214
	%struct.DSOCacheEntry {
		i64 8626175481042262068, ; hash 0x77b654e585b55834, from name: Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 215
	%struct.DSOCacheEntry {
		i64 8628664141348535547, ; hash 0x77bf2c51e73afcfb, from name: Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 216
	%struct.DSOCacheEntry {
		i64 8658236679209272073, ; hash 0x78283c62ed86c309, from name: libaot-Xamarin.AndroidX.ViewPager
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 217
	%struct.DSOCacheEntry {
		i64 8659658257135061456, ; hash 0x782d494dd4d049d0, from name: aot-Microsoft.Bcl.AsyncInterfaces.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 218
	%struct.DSOCacheEntry {
		i64 8673945120601860270, ; hash 0x78600b2172b4e8ae, from name: mono-btls-shared.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 219
	%struct.DSOCacheEntry {
		i64 8697971954255762265, ; hash 0x78b5676897b99359, from name: libaot-System.Drawing.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 220
	%struct.DSOCacheEntry {
		i64 8725230987032401247, ; hash 0x79163f5abd4c155f, from name: aot-Xamarin.Android.Support.Compat
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 221
	%struct.DSOCacheEntry {
		i64 8730145678495508517, ; hash 0x7927b53d8422e825, from name: Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 222
	%struct.DSOCacheEntry {
		i64 8772604801161716260, ; hash 0x79be8d9660216224, from name: aot-Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 223
	%struct.DSOCacheEntry {
		i64 8835771961918162062, ; hash 0x7a9ef7c9127d048e, from name: libaot-MyWork.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 224
	%struct.DSOCacheEntry {
		i64 8879040545617680294, ; hash 0x7b38b05543d517a6, from name: libaot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 225
	%struct.DSOCacheEntry {
		i64 8959200230209785136, ; hash 0x7c55792439408d30, from name: aot-Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 226
	%struct.DSOCacheEntry {
		i64 9055317871244365271, ; hash 0x7daaf3a073c44dd7, from name: monodroid
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 227
	%struct.DSOCacheEntry {
		i64 9057635389615298436, ; hash 0x7db32f65bf06d784, from name: LiteDB
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 228
	%struct.DSOCacheEntry {
		i64 9061383771165184746, ; hash 0x7dc08087d5ca52ea, from name: Microsoft.Bcl.AsyncInterfaces.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 229
	%struct.DSOCacheEntry {
		i64 9089904904477581872, ; hash 0x7e25d459a977a230, from name: aot-Xamarin.AndroidX.Collection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 230
	%struct.DSOCacheEntry {
		i64 9098834300896121870, ; hash 0x7e458d96c70d940e, from name: libaot-System.Threading.Tasks.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 231
	%struct.DSOCacheEntry {
		i64 9171632214465058671, ; hash 0x7f482ee7d9b8176f, from name: aot-Xamarin.GooglePlayServices.Basement.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 232
	%struct.DSOCacheEntry {
		i64 9175378338110836888, ; hash 0x7f557dfc3ae91098, from name: Firebase.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 233
	%struct.DSOCacheEntry {
		i64 9184990959724848206, ; hash 0x7f77a49d1b92e44e, from name: aot-Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 234
	%struct.DSOCacheEntry {
		i64 9207742526868940023, ; hash 0x7fc8790b2147e4f7, from name: libaot-System.Runtime.Serialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 235
	%struct.DSOCacheEntry {
		i64 9219236770475081177, ; hash 0x7ff14eff4462fdd9, from name: aot-Xamarin.AndroidX.ViewPager
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 236
	%struct.DSOCacheEntry {
		i64 9225652551807385394, ; hash 0x80081a1dc3a7bf32, from name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 237
	%struct.DSOCacheEntry {
		i64 9303952551300417018, ; hash 0x811e478d0b59c5fa, from name: libaot-Xamarin.Android.Support.Media.Compat
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 238
	%struct.DSOCacheEntry {
		i64 9320110914003983870, ; hash 0x8157af7f0872ddfe, from name: libaot-Firebase.Storage
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 239
	%struct.DSOCacheEntry {
		i64 9324707631942237306, ; hash 0x8168042fd44a7c7a, from name: Xamarin.AndroidX.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 240
	%struct.DSOCacheEntry {
		i64 9338662132064502671, ; hash 0x819997bb1318c38f, from name: xa-internal-api.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 241
	%struct.DSOCacheEntry {
		i64 9378874895478182807, ; hash 0x82287506a9ce5397, from name: libaot-RestSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 242
	%struct.DSOCacheEntry {
		i64 9521858668726978755, ; hash 0x842470029ef208c3, from name: libaot-MyWork
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 243
	%struct.DSOCacheEntry {
		i64 9558843833562065670, ; hash 0x84a7d5d25ae66b06, from name: libaot-System.Web.Services
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 244
	%struct.DSOCacheEntry {
		i64 9641796949223436837, ; hash 0x85ce8b3daae87225, from name: libaot-Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 245
	%struct.DSOCacheEntry {
		i64 9730585375023143521, ; hash 0x8709fbd7fedd9a61, from name: aot-System.Collections.Immutable
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 246
	%struct.DSOCacheEntry {
		i64 9803047054801588640, ; hash 0x880b6b5b89e351a0, from name: Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 247
	%struct.DSOCacheEntry {
		i64 9936325631032871085, ; hash 0x89e4eb843a52c8ad, from name: Xamarin.Firebase.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 248
	%struct.DSOCacheEntry {
		i64 9998632235833408227, ; hash 0x8ac2470b209ebae3, from name: Mono.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 249
	%struct.DSOCacheEntry {
		i64 10015375852568681786, ; hash 0x8afdc34630619d3a, from name: libaot-Google.Apis.Auth.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 250
	%struct.DSOCacheEntry {
		i64 10131599475156204988, ; hash 0x8c9aac0b0b383dbc, from name: libaot-System.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 251
	%struct.DSOCacheEntry {
		i64 10135111847970059755, ; hash 0x8ca72687111bb5eb, from name: libaot-Firebase.Storage.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 252
	%struct.DSOCacheEntry {
		i64 10144742755892837524, ; hash 0x8cc95dc98eb5bc94, from name: Firebase
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 253
	%struct.DSOCacheEntry {
		i64 10168685327757836708, ; hash 0x8d1e6d6df9bb81a4, from name: Xamarin.Firebase.Auth.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 254
	%struct.DSOCacheEntry {
		i64 10207954440838677834, ; hash 0x8da9f07ad98f854a, from name: mono-native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 255
	%struct.DSOCacheEntry {
		i64 10220684565739810458, ; hash 0x8dd72a76063d2e9a, from name: FirebaseAdmin
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 256
	%struct.DSOCacheEntry {
		i64 10229024438826829339, ; hash 0x8df4cb880b10061b, from name: Xamarin.AndroidX.CustomView
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 257
	%struct.DSOCacheEntry {
		i64 10275328470277907089, ; hash 0x8e994ccd7d5f6291, from name: libaot-Xamarin.Firebase.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 258
	%struct.DSOCacheEntry {
		i64 10346703248572197335, ; hash 0x8f96dfc90f86a9d7, from name: aot-Mono.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 259
	%struct.DSOCacheEntry {
		i64 10356807666685550219, ; hash 0x8fbac5b33bd59e8b, from name: libaot-System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 260
	%struct.DSOCacheEntry {
		i64 10430153318873392755, ; hash 0x90bf592ea44f6673, from name: Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 261
	%struct.DSOCacheEntry {
		i64 10445573484590211502, ; hash 0x90f621bdc03d21ae, from name: aot-Xamarin.AndroidX.Activity
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 262
	%struct.DSOCacheEntry {
		i64 10459842050192071028, ; hash 0x9128d2ed10645974, from name: aot-Firebase.Storage
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 263
	%struct.DSOCacheEntry {
		i64 10462325736163448418, ; hash 0x9131a5d344731662, from name: libaot-System.Text.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 264
	%struct.DSOCacheEntry {
		i64 10466948571583855296, ; hash 0x914212450389bac0, from name: libaot-Google.Api.Gax.Rest.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 265
	%struct.DSOCacheEntry {
		i64 10564753587979417148, ; hash 0x929d8b69ef0bf63c, from name: libaot-Xamarin.Google.Guava.ListenableFuture
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 266
	%struct.DSOCacheEntry {
		i64 10570531572605629302, ; hash 0x92b21275d035b376, from name: libaot-FirebaseAdmin.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 267
	%struct.DSOCacheEntry {
		i64 10827433220396269482, ; hash 0x9642c525d2fbbfaa, from name: aot-Xamarin.AndroidX.SavedState
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 268
	%struct.DSOCacheEntry {
		i64 10959662263064203642, ; hash 0x98188ac2f032117a, from name: aot-Xamarin.AndroidX.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 269
	%struct.DSOCacheEntry {
		i64 11023048688141570732, ; hash 0x98f9bc61168392ac, from name: System.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 270
	%struct.DSOCacheEntry {
		i64 11023068237404901644, ; hash 0x98f9ce28c169110c, from name: aot-Xamarin.Firebase.Auth.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 271
	%struct.DSOCacheEntry {
		i64 11034702678985625136, ; hash 0x9923239f46fd4e30, from name: libaot-Firebase.Auth.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 272
	%struct.DSOCacheEntry {
		i64 11037814507248023548, ; hash 0x992e31d0412bf7fc, from name: System.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 273
	%struct.DSOCacheEntry {
		i64 11043073226667459111, ; hash 0x9940e09748240227, from name: aot-Firebase.Auth.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 274
	%struct.DSOCacheEntry {
		i64 11063900969707219733, ; hash 0x998adf50197fab15, from name: libaot-System.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 275
	%struct.DSOCacheEntry {
		i64 11064494395972030134, ; hash 0x998cfb07eb368eb6, from name: libaot-Microsoft.Bcl.AsyncInterfaces
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 276
	%struct.DSOCacheEntry {
		i64 11162124722117608902, ; hash 0x9ae7d54b986d05c6, from name: Xamarin.AndroidX.ViewPager
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 277
	%struct.DSOCacheEntry {
		i64 11175324742386364903, ; hash 0x9b16baa4cf92b1e7, from name: System.Threading.Tasks.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 278
	%struct.DSOCacheEntry {
		i64 11257780223580665023, ; hash 0x9c3bab7791f174bf, from name: libaot-MyWork.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 279
	%struct.DSOCacheEntry {
		i64 11270596618290860596, ; hash 0x9c6933e8fff21234, from name: libaot-System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 280
	%struct.DSOCacheEntry {
		i64 11297733651869727064, ; hash 0x9cc99ce5feabf958, from name: Google.Apis.Auth.PlatformServices.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 281
	%struct.DSOCacheEntry {
		i64 11369008813813839762, ; hash 0x9dc6d547d3a8b792, from name: aot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 282
	%struct.DSOCacheEntry {
		i64 11376461258732682436, ; hash 0x9de14f3d5fc13cc4, from name: Xamarin.Android.Support.Compat
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 283
	%struct.DSOCacheEntry {
		i64 11398019558505627056, ; hash 0x9e2de6662faebdb0, from name: libaot-FormsViewGroup.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 284
	%struct.DSOCacheEntry {
		i64 11418345596566047934, ; hash 0x9e761cd2b5f70cbe, from name: System.Runtime.CompilerServices.Unsafe.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 285
	%struct.DSOCacheEntry {
		i64 11468676103134815411, ; hash 0x9f28ec26f35ca4b3, from name: libaot-Xamarin.Forms.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 286
	%struct.DSOCacheEntry {
		i64 11521729796983092563, ; hash 0x9fe56834a335f553, from name: libmonodroid
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 287
	%struct.DSOCacheEntry {
		i64 11557754129944451209, ; hash 0xa065642544a49889, from name: System.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 288
	%struct.DSOCacheEntry {
		i64 11575256371452467757, ; hash 0xa0a392576c805a2d, from name: aot-Xamarin.Android.Support.Media.Compat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 289
	%struct.DSOCacheEntry {
		i64 11618310510421413434, ; hash 0xa13c87da4fdb0e3a, from name: MyWork.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 290
	%struct.DSOCacheEntry {
		i64 11846332969256999943, ; hash 0xa466a1122b8fdc07, from name: aot-System.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 291
	%struct.DSOCacheEntry {
		i64 11905546682503808667, ; hash 0xa538ffa12378469b, from name: aot-System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 292
	%struct.DSOCacheEntry {
		i64 11909085194873014816, ; hash 0xa54591e340450a20, from name: System.Data.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 293
	%struct.DSOCacheEntry {
		i64 11949219802464515130, ; hash 0xa5d42819c4f5f43a, from name: aot-System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 294
	%struct.DSOCacheEntry {
		i64 12025475895945156578, ; hash 0xa6e3129d18d557e2, from name: Xamarin.AndroidX.Loader.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 295
	%struct.DSOCacheEntry {
		i64 12102847907131387746, ; hash 0xa7f5f40c43256f62, from name: System.Buffers
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 296
	%struct.DSOCacheEntry {
		i64 12145679461940342714, ; hash 0xa88e1f1ebcb62fba, from name: System.Text.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 297
	%struct.DSOCacheEntry {
		i64 12173441707462773849, ; hash 0xa8f0c0bc3b3e4c59, from name: aot-System.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 298
	%struct.DSOCacheEntry {
		i64 12192045520349597797, ; hash 0xa932d8cdf5d49065, from name: libaot-Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 299
	%struct.DSOCacheEntry {
		i64 12270192781745332849, ; hash 0xaa487b53217e2271, from name: libaot-Xamarin.GooglePlayServices.Basement.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 300
	%struct.DSOCacheEntry {
		i64 12299321273609848463, ; hash 0xaaaff788a3eb868f, from name: libaot-System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 301
	%struct.DSOCacheEntry {
		i64 12390532849474323736, ; hash 0xabf403fa8eb9c518, from name: aot-Microsoft.Bcl.AsyncInterfaces
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 302
	%struct.DSOCacheEntry {
		i64 12517594088963136022, ; hash 0xadb76d80bb2d5a16, from name: Xamarin.Android.Support.Compat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 303
	%struct.DSOCacheEntry {
		i64 12528155905152483962, ; hash 0xaddcf36b3153827a, from name: Firebase.Auth
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 304
	%struct.DSOCacheEntry {
		i64 12531980697337323275, ; hash 0xadea8a0c04d7df0b, from name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 305
	%struct.DSOCacheEntry {
		i64 12568601679441068061, ; hash 0xae6ca4a2da76801d, from name: aot-Xamarin.Android.Support.Compat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 306
	%struct.DSOCacheEntry {
		i64 12674984561979589840, ; hash 0xafe6974dde5a84d0, from name: Xamarin.AndroidX.Activity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 307
	%struct.DSOCacheEntry {
		i64 12692782186682205760, ; hash 0xb025d22648994640, from name: libaot-FirebaseDatabase.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 308
	%struct.DSOCacheEntry {
		i64 12697791992431014197, ; hash 0xb0379e8a94a67135, from name: Xamarin.Google.Guava.ListenableFuture.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 309
	%struct.DSOCacheEntry {
		i64 12700543734426720211, ; hash 0xb041653c70d157d3, from name: Xamarin.AndroidX.Collection
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 310
	%struct.DSOCacheEntry {
		i64 12704269318333514606, ; hash 0xb04ea1a28a29c36e, from name: aot-Xamarin.Forms.Platform
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 311
	%struct.DSOCacheEntry {
		i64 12786979835043836249, ; hash 0xb1747a6961def159, from name: aot-System.Web.Services
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 312
	%struct.DSOCacheEntry {
		i64 12872620911514443596, ; hash 0xb2a4bc8457155f4c, from name: aot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 313
	%struct.DSOCacheEntry {
		i64 12875951528938057945, ; hash 0xb2b091b2238030d9, from name: Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 314
	%struct.DSOCacheEntry {
		i64 12937319369933575792, ; hash 0xb38a976c0eabd670, from name: aot-Xamarin.Google.Android.Material.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 315
	%struct.DSOCacheEntry {
		i64 12941098956319990056, ; hash 0xb39804ef96a1a128, from name: Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 316
	%struct.DSOCacheEntry {
		i64 12958614573187252691, ; hash 0xb3d63f4bf006c1d3, from name: Google.Apis
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 317
	%struct.DSOCacheEntry {
		i64 12964673882120879242, ; hash 0xb3ebc634bc997c8a, from name: libaot-System.Runtime.Serialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 318
	%struct.DSOCacheEntry {
		i64 12988035350267542210, ; hash 0xb43ec55666e9bac2, from name: xa-internal-api
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 319
	%struct.DSOCacheEntry {
		i64 12996638905122625135, ; hash 0xb45d56399ddb166f, from name: System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 320
	%struct.DSOCacheEntry {
		i64 13006425725023322809, ; hash 0xb4801b49318482b9, from name: libaot-Xamarin.AndroidX.DrawerLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 321
	%struct.DSOCacheEntry {
		i64 13073566528136159500, ; hash 0xb56ea37d98fe210c, from name: aot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 322
	%struct.DSOCacheEntry {
		i64 13101809809254258831, ; hash 0xb5d2fa9aeb54188f, from name: aot-Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 323
	%struct.DSOCacheEntry {
		i64 13114936752209646297, ; hash 0xb6019d7d7f2bd2d9, from name: Xamarin.Google.Android.Material.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 324
	%struct.DSOCacheEntry {
		i64 13222957746497227746, ; hash 0xb78162031ff78be2, from name: libaot-Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 325
	%struct.DSOCacheEntry {
		i64 13343226877734096688, ; hash 0xb92caa265cc90f30, from name: libaot-Xamarin.Forms.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 326
	%struct.DSOCacheEntry {
		i64 13352871532007464144, ; hash 0xb94eede96cbb1cd0, from name: libaot-Xamarin.AndroidX.Activity
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 327
	%struct.DSOCacheEntry {
		i64 13370592475155966277, ; hash 0xb98de304062ea945, from name: System.Runtime.Serialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 328
	%struct.DSOCacheEntry {
		i64 13380041663667534323, ; hash 0xb9af7500aad479f3, from name: libmono-btls-shared.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 329
	%struct.DSOCacheEntry {
		i64 13384594276806126840, ; hash 0xb9bfa19483c16cf8, from name: aot-Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 330
	%struct.DSOCacheEntry {
		i64 13454009404024712428, ; hash 0xbab63e4543a86cec, from name: Xamarin.Google.Guava.ListenableFuture
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 331
	%struct.DSOCacheEntry {
		i64 13589927487757454067, ; hash 0xbc991f0c2f198af3, from name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 332
	%struct.DSOCacheEntry {
		i64 13600047321235904275, ; hash 0xbcbd12fb86c4d713, from name: aot-FirebaseAdmin
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 333
	%struct.DSOCacheEntry {
		i64 13603500654432575449, ; hash 0xbcc957c5513f5fd9, from name: System.Collections.Immutable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 334
	%struct.DSOCacheEntry {
		i64 13636747691872754204, ; hash 0xbd3f75c671b41a1c, from name: aot-Google.Apis.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 335
	%struct.DSOCacheEntry {
		i64 13646140969043279215, ; hash 0xbd60d4e936babd6f, from name: aot-FormsViewGroup.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 336
	%struct.DSOCacheEntry {
		i64 13699603031714047885, ; hash 0xbe1ec45fad2e278d, from name: libaot-Xamarin.AndroidX.Loader
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 337
	%struct.DSOCacheEntry {
		i64 13701089264222207624, ; hash 0xbe240c1825e1fe88, from name: libaot-Mono.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 338
	%struct.DSOCacheEntry {
		i64 13717233136797750441, ; hash 0xbe5d66dc640c14a9, from name: aot-System.Text.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 339
	%struct.DSOCacheEntry {
		i64 13739044888507636575, ; hash 0xbeaae48894a4db5f, from name: libaot-Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 340
	%struct.DSOCacheEntry {
		i64 13784476538474629663, ; hash 0xbf4c4c60e27c8a1f, from name: aot-mscorlib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 341
	%struct.DSOCacheEntry {
		i64 13786269793005612187, ; hash 0xbf52ab557dcc2c9b, from name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 342
	%struct.DSOCacheEntry {
		i64 13807487031629930123, ; hash 0xbf9e0c4cd11d5e8b, from name: libaot-Xamarin.AndroidX.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 343
	%struct.DSOCacheEntry {
		i64 13839218887849320298, ; hash 0xc00ec84153229f6a, from name: aot-Xamarin.Forms.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 344
	%struct.DSOCacheEntry {
		i64 13842731643823728203, ; hash 0xc01b43168f2c264b, from name: libaot-System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 345
	%struct.DSOCacheEntry {
		i64 13856099392739027244, ; hash 0xc04ac0fc24b7292c, from name: FormsViewGroup.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 346
	%struct.DSOCacheEntry {
		i64 13900452450741477987, ; hash 0xc0e853db2fa76263, from name: Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 347
	%struct.DSOCacheEntry {
		i64 13904753614831582715, ; hash 0xc0f79bbdfd5d7dfb, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 348
	%struct.DSOCacheEntry {
		i64 13918643515869505000, ; hash 0xc128f48896b225e8, from name: aot-Xamarin.AndroidX.CustomView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 349
	%struct.DSOCacheEntry {
		i64 13934622921725558032, ; hash 0xc161b9b7f077bd10, from name: aot-Xamarin.AndroidX.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 350
	%struct.DSOCacheEntry {
		i64 13941813585485361025, ; hash 0xc17b4596cf91ef81, from name: Google.Apis.Auth.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 351
	%struct.DSOCacheEntry {
		i64 13959074834287824816, ; hash 0xc1b8989a7ad20fb0, from name: Xamarin.AndroidX.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 352
	%struct.DSOCacheEntry {
		i64 13963056008128377571, ; hash 0xc1c6bd75bf6032e3, from name: aot-Xamarin.Google.Guava.ListenableFuture
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 353
	%struct.DSOCacheEntry {
		i64 13963744846780922848, ; hash 0xc1c92ff47e917be0, from name: libaot-System.Buffers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 354
	%struct.DSOCacheEntry {
		i64 13967638549803255703, ; hash 0xc1d70541e0134797, from name: Xamarin.Forms.Platform.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 355
	%struct.DSOCacheEntry {
		i64 14124974489674258913, ; hash 0xc405fd76067d19e1, from name: Xamarin.AndroidX.CardView
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 356
	%struct.DSOCacheEntry {
		i64 14137679297576702812, ; hash 0xc433206aa074135c, from name: aot-System.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 357
	%struct.DSOCacheEntry {
		i64 14165531176311179688, ; hash 0xc496138d7abfc9a8, from name: Xamarin.Firebase.Auth
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 358
	%struct.DSOCacheEntry {
		i64 14221132589051481638, ; hash 0xc55b9cbe32250e26, from name: libaot-Google.Apis
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 359
	%struct.DSOCacheEntry {
		i64 14319327830875434373, ; hash 0xc6b878cb8db1ed85, from name: System.Text.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 360
	%struct.DSOCacheEntry {
		i64 14343351667264400691, ; hash 0xc70dd258d7cd2d33, from name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 361
	%struct.DSOCacheEntry {
		i64 14343849879592858025, ; hash 0xc70f9777f0a971a9, from name: System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 362
	%struct.DSOCacheEntry {
		i64 14351510784141839845, ; hash 0xc72acf0546f64de5, from name: aot-Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 363
	%struct.DSOCacheEntry {
		i64 14360875924539294536, ; hash 0xc74c1490f19fc348, from name: Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 364
	%struct.DSOCacheEntry {
		i64 14407337225322813049, ; hash 0xc7f124df82a0d679, from name: libaot-Xamarin.Android.Support.Compat
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 365
	%struct.DSOCacheEntry {
		i64 14424844866220670826, ; hash 0xc82f57facf333f6a, from name: monosgen-2.0.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 366
	%struct.DSOCacheEntry {
		i64 14429843176364016121, ; hash 0xc84119ea93c581f9, from name: libaot-System.Runtime.CompilerServices.Unsafe
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 367
	%struct.DSOCacheEntry {
		i64 14451641756074362323, ; hash 0xc88e8b9bec03c5d3, from name: libaot-Google.Api.Gax.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 368
	%struct.DSOCacheEntry {
		i64 14456811589373396671, ; hash 0xc8a0e98b895a06bf, from name: aot-System.Reactive
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 369
	%struct.DSOCacheEntry {
		i64 14527879662654061136, ; hash 0xc99d6594c81dfa50, from name: libaot-FirebaseDatabase
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 370
	%struct.DSOCacheEntry {
		i64 14545879230304754868, ; hash 0xc9dd5817b40c1cb4, from name: aot-Firebase.Auth
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 371
	%struct.DSOCacheEntry {
		i64 14562678984415238708, ; hash 0xca190761441dda34, from name: aot-Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 372
	%struct.DSOCacheEntry {
		i64 14604015534980822382, ; hash 0xcaabe2c0f0d1756e, from name: aot-System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 373
	%struct.DSOCacheEntry {
		i64 14613375034728387395, ; hash 0xcacd232b4a8c1343, from name: libaot-Mono.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 374
	%struct.DSOCacheEntry {
		i64 14656406628158936632, ; hash 0xcb66042ce3181638, from name: Google.Apis.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 375
	%struct.DSOCacheEntry {
		i64 14726144688497773647, ; hash 0xcc5dc6925cea4c4f, from name: libaot-Xamarin.AndroidX.Loader.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 376
	%struct.DSOCacheEntry {
		i64 14749613074536373161, ; hash 0xccb126f1ca329ba9, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 377
	%struct.DSOCacheEntry {
		i64 14761658010069183920, ; hash 0xccdbf1bfe1f92db0, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 378
	%struct.DSOCacheEntry {
		i64 14793308678264731746, ; hash 0xcd4c63dd54ac3862, from name: libaot-System.Collections.Immutable
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 379
	%struct.DSOCacheEntry {
		i64 14809900564945508170, ; hash 0xcd875618fc6f174a, from name: libxa-internal-api.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 380
	%struct.DSOCacheEntry {
		i64 14826013439368941144, ; hash 0xcdc094abe8c0ce58, from name: libaot-Google.Apis.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 381
	%struct.DSOCacheEntry {
		i64 14848298015145851925, ; hash 0xce0fc06007e7fc15, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 382
	%struct.DSOCacheEntry {
		i64 14852025521463078876, ; hash 0xce1cfe85b9d7afdc, from name: aot-Xamarin.AndroidX.Loader.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 383
	%struct.DSOCacheEntry {
		i64 14956307603113479594, ; hash 0xcf8f7a85eb0d8daa, from name: aot-RestSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 384
	%struct.DSOCacheEntry {
		i64 15036185568982365226, ; hash 0xd0ab431c200c742a, from name: libaot-Xamarin.Google.Guava.ListenableFuture.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 385
	%struct.DSOCacheEntry {
		i64 15168682236028041291, ; hash 0xd281fc20653ab84b, from name: aot-Firebase.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 386
	%struct.DSOCacheEntry {
		i64 15180267551769671907, ; hash 0xd2ab24e8ea9eb8e3, from name: aot-Google.Apis.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 387
	%struct.DSOCacheEntry {
		i64 15216590919956829692, ; hash 0xd32c30d21c7615fc, from name: mscorlib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 388
	%struct.DSOCacheEntry {
		i64 15223138012495999962, ; hash 0xd343735de191f3da, from name: aot-Xamarin.Android.Support.Media.Compat
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 389
	%struct.DSOCacheEntry {
		i64 15250907202261913866, ; hash 0xd3a61b4c3544910a, from name: Google.Apis.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 390
	%struct.DSOCacheEntry {
		i64 15326452432051871014, ; hash 0xd4b27f48af5f9d26, from name: libaot-Xamarin.GooglePlayServices.Basement
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 391
	%struct.DSOCacheEntry {
		i64 15394198501530322172, ; hash 0xd5a32df9a590c4fc, from name: libaot-Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 392
	%struct.DSOCacheEntry {
		i64 15420320794302889280, ; hash 0xd5fffc0fe2fe3d40, from name: aot-System.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 393
	%struct.DSOCacheEntry {
		i64 15457813392950723921, ; hash 0xd6852f61c31a8551, from name: Xamarin.Android.Support.Media.Compat
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 394
	%struct.DSOCacheEntry {
		i64 15504943967887695793, ; hash 0xd72ca063dc481fb1, from name: aot-Google.Apis.Auth.PlatformServices.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 395
	%struct.DSOCacheEntry {
		i64 15589903077943111974, ; hash 0xd85a764023917126, from name: libaot-LiteDB.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 396
	%struct.DSOCacheEntry {
		i64 15599084397433935389, ; hash 0xd87b149caa63561d, from name: Xamarin.Forms.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 397
	%struct.DSOCacheEntry {
		i64 15602862011767004647, ; hash 0xd88880550acf1de7, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 398
	%struct.DSOCacheEntry {
		i64 15810740023422282496, ; hash 0xdb6b08484c22eb00, from name: Xamarin.Forms.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 399
	%struct.DSOCacheEntry {
		i64 15817820344157854568, ; hash 0xdb842fcbee79db68, from name: aot-System.ServiceModel.Internals
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 400
	%struct.DSOCacheEntry {
		i64 15847727014260307913, ; hash 0xdbee6fc12e58f7c9, from name: aot-Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 401
	%struct.DSOCacheEntry {
		i64 15950146203746389098, ; hash 0xdd5a4d76fdd94c6a, from name: FirebaseDatabase.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 402
	%struct.DSOCacheEntry {
		i64 15963349826457351533, ; hash 0xdd893616f748b56d, from name: System.Threading.Tasks.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 403
	%struct.DSOCacheEntry {
		i64 15964641699753034279, ; hash 0xdd8dcd0aa82b0227, from name: libaot-Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 404
	%struct.DSOCacheEntry {
		i64 15966880053891205882, ; hash 0xdd95c0d017748afa, from name: libaot-System.Threading.Tasks.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 405
	%struct.DSOCacheEntry {
		i64 15987609494471769098, ; hash 0xdddf662115a6fc0a, from name: Firebase.Storage
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 406
	%struct.DSOCacheEntry {
		i64 16028608729857509950, ; hash 0xde710eb772e1ca3e, from name: aot-MyWork
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 407
	%struct.DSOCacheEntry {
		i64 16113014851066227886, ; hash 0xdf9ceda2fa656cae, from name: Xamarin.Essentials.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 408
	%struct.DSOCacheEntry {
		i64 16140149539819930312, ; hash 0xdffd547e06a6c2c8, from name: libaot-Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 409
	%struct.DSOCacheEntry {
		i64 16154507427712707110, ; hash 0xe03056ea4e39aa26, from name: System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 410
	%struct.DSOCacheEntry {
		i64 16163189466141030950, ; hash 0xe04f2f2ee6abfa26, from name: libaot-Google.Api.Gax.Rest
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 411
	%struct.DSOCacheEntry {
		i64 16215129991522364183, ; hash 0xe107b6d0db792b17, from name: libaot-Xamarin.AndroidX.Activity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 412
	%struct.DSOCacheEntry {
		i64 16237324308683727476, ; hash 0xe156906e01e8a274, from name: libmono-native
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 413
	%struct.DSOCacheEntry {
		i64 16366575316213272407, ; hash 0xe321c18948918f57, from name: Xamarin.GooglePlayServices.Base.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 414
	%struct.DSOCacheEntry {
		i64 16385961452171063167, ; hash 0xe366a11fcbe66f7f, from name: aot-Google.Apis.Auth.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 415
	%struct.DSOCacheEntry {
		i64 16477862173331498088, ; hash 0xe4ad2057db452468, from name: Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 416
	%struct.DSOCacheEntry {
		i64 16587993013165085709, ; hash 0xe63463c22e5dd40d, from name: libaot-Xamarin.GooglePlayServices.Base.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 417
	%struct.DSOCacheEntry {
		i64 16588517629423600604, ; hash 0xe63640e4ec1943dc, from name: MyWork
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 418
	%struct.DSOCacheEntry {
		i64 16687522843226958423, ; hash 0xe795fd9c93c26a57, from name: aot-System.Data
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 419
	%struct.DSOCacheEntry {
		i64 16717189724135467099, ; hash 0xe7ff637b8de7a85b, from name: libmonosgen-2.0.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 420
	%struct.DSOCacheEntry {
		i64 16768067971893542065, ; hash 0xe8b424faba51bcb1, from name: libaot-Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 421
	%struct.DSOCacheEntry {
		i64 16804602679676381986, ; hash 0xe935f11a41b02b22, from name: monosgen-2.0
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 422
	%struct.DSOCacheEntry {
		i64 16817845534611371786, ; hash 0xe964fd68b1e6770a, from name: aot-System.Drawing.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 423
	%struct.DSOCacheEntry {
		i64 16833383113903931215, ; hash 0xe99c30c1484d7f4f, from name: mscorlib
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 424
	%struct.DSOCacheEntry {
		i64 16844590903504305673, ; hash 0xe9c4022e26267e09, from name: aot-RestSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 425
	%struct.DSOCacheEntry {
		i64 16955525858597485057, ; hash 0xeb4e20ef25a73a01, from name: Google.Api.Gax
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 426
	%struct.DSOCacheEntry {
		i64 16979513440363620576, ; hash 0xeba359833fd828e0, from name: libaot-Google.Api.Gax
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 427
	%struct.DSOCacheEntry {
		i64 16989764869531577419, ; hash 0xebc7c52219d72c4b, from name: aot-Xamarin.GooglePlayServices.Tasks.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 428
	%struct.DSOCacheEntry {
		i64 17109269413053002539, ; hash 0xed7055e1e37af32b, from name: libaot-Google.Apis.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 429
	%struct.DSOCacheEntry {
		i64 17140013521844864265, ; hash 0xeddd8f7c86f48509, from name: aot-Google.Apis.Auth.PlatformServices
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 430
	%struct.DSOCacheEntry {
		i64 17151170952569239713, ; hash 0xee05331c4de338a1, from name: RestSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 431
	%struct.DSOCacheEntry {
		i64 17219983998060401322, ; hash 0xeef9ac35fa4d12aa, from name: RestSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 432
	%struct.DSOCacheEntry {
		i64 17235955048890289645, ; hash 0xef3269cc05b4cded, from name: Firebase.Auth.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 433
	%struct.DSOCacheEntry {
		i64 17252806954862991943, ; hash 0xef6e488422ff5a47, from name: libaot-Xamarin.AndroidX.Collection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 434
	%struct.DSOCacheEntry {
		i64 17309541862275468045, ; hash 0xf037d89d25aecb0d, from name: Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 435
	%struct.DSOCacheEntry {
		i64 17353272485882399419, ; hash 0xf0d3356263948abb, from name: Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 436
	%struct.DSOCacheEntry {
		i64 17385151973004961448, ; hash 0xf144779be52466a8, from name: libaot-System.Data.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 437
	%struct.DSOCacheEntry {
		i64 17435078777942294054, ; hash 0xf1f5d7c60633be26, from name: libaot-Xamarin.Essentials.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 438
	%struct.DSOCacheEntry {
		i64 17474527379847198219, ; hash 0xf281fe1165a1360b, from name: libaot-System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 439
	%struct.DSOCacheEntry {
		i64 17493041716060925370, ; hash 0xf2c3c4c236e6adba, from name: aot-Xamarin.Firebase.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 440
	%struct.DSOCacheEntry {
		i64 17550854928489061607, ; hash 0xf3912991ad011ce7, from name: libaot-Microsoft.Bcl.AsyncInterfaces.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 441
	%struct.DSOCacheEntry {
		i64 17650520122967326458, ; hash 0xf4f33e890e59fefa, from name: aot-Google.Apis.Auth
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 442
	%struct.DSOCacheEntry {
		i64 17672164719550421811, ; hash 0xf540242e68fe5b33, from name: aot-Xamarin.Essentials.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 443
	%struct.DSOCacheEntry {
		i64 17700327150769387356, ; hash 0xf5a431c365cfb75c, from name: System.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 444
	%struct.DSOCacheEntry {
		i64 17704177640604968747, ; hash 0xf5b1dfc36cac272b, from name: Xamarin.AndroidX.Loader
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 445
	%struct.DSOCacheEntry {
		i64 17710060891934109755, ; hash 0xf5c6c68c9e45303b, from name: Xamarin.AndroidX.Lifecycle.ViewModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 446
	%struct.DSOCacheEntry {
		i64 17798155118191535816, ; hash 0xf6ffbfc8051b66c8, from name: Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 447
	%struct.DSOCacheEntry {
		i64 17882897186074144999, ; hash 0xf82cd03e3ac830e7, from name: FormsViewGroup
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 448
	%struct.DSOCacheEntry {
		i64 17895855011690415023, ; hash 0xf85ad9511bb383af, from name: Xamarin.AndroidX.Legacy.Support.Core.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 449
	%struct.DSOCacheEntry {
		i64 17909918875706965630, ; hash 0xf88cd0539e93be7e, from name: aot-Firebase
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 450
	%struct.DSOCacheEntry {
		i64 17927396739616034639, ; hash 0xf8cae859ec4f4f4f, from name: libaot-System.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 451
	%struct.DSOCacheEntry {
		i64 17973251829753629267, ; hash 0xf96dd150131aca53, from name: aot-System.Reactive.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 452
	%struct.DSOCacheEntry {
		i64 18122114450755693480, ; hash 0xfb7eaf13f0442ba8, from name: libaot-System.Buffers
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 453
	%struct.DSOCacheEntry {
		i64 18221351848920533778, ; hash 0xfcdf3ef73a50cb12, from name: LiteDB.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 454
	%struct.DSOCacheEntry {
		i64 18252036729645089111, ; hash 0xfd4c42b3c1e0c157, from name: libaot-Xamarin.AndroidX.CustomView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 455
	%struct.DSOCacheEntry {
		i64 18253685954460439423, ; hash 0xfd521ea9d526d37f, from name: aot-Xamarin.AndroidX.CardView
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 456
	%struct.DSOCacheEntry {
		i64 18327710550568384473, ; hash 0xfe591ba430ceb7d9, from name: libaot-Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 457
	%struct.DSOCacheEntry {
		i64 18429503703191461742, ; hash 0xffc2bff96f791f6e, from name: aot-System.Threading.Tasks.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}
], align 8; end of 'dso_cache' array


; Bundled assembly name buffers, all 0 bytes long
@bundled_assemblies = local_unnamed_addr global [0 x %struct.XamarinAndroidBundledAssembly] zeroinitializer, align 8


; Assembly store individual assembly data
@assembly_store_bundled_assemblies = local_unnamed_addr global [71 x %struct.AssemblyStoreSingleAssemblyRuntimeData] zeroinitializer, align 8

; Assembly store data
@assembly_stores = local_unnamed_addr global [2 x %struct.AssemblyStoreRuntimeData] zeroinitializer, align 8

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
