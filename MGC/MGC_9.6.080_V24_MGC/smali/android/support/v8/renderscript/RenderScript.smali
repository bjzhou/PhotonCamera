.class public Landroid/support/v8/renderscript/RenderScript;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final CACHE_PATH:Ljava/lang/String; = "com.android.renderscript.cache"

.field public static final CREATE_FLAG_NONE:I = 0x0

.field static final DEBUG:Z = false

.field static final LOG_ENABLED:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "RenderScript_jni"

.field static final SUPPORT_LIB_API:I = 0x17

.field static final SUPPORT_LIB_VERSION:I = 0x8fd

.field static lock:Ljava/lang/Object;

.field private static mBlackList:Ljava/lang/String;

.field static mCachePath:Ljava/lang/String;

.field private static mProcessContextList:Ljava/util/ArrayList;

.field static registerNativeAllocation:Ljava/lang/reflect/Method;

.field static registerNativeFree:Ljava/lang/reflect/Method;

.field static sInitialized:Z

.field private static sNative:I

.field static sPointerSize:I

.field static sRuntime:Ljava/lang/Object;

.field private static sSdkVersion:I

.field static sUseGCHooks:Z

.field private static useIOlib:Z

.field private static useNative:Z


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field mContext:J

.field private mContextFlags:I

.field private mContextSdkVersion:I

.field mContextType:Landroid/support/v8/renderscript/RenderScript$ContextType;

.field private mDestroyed:Z

.field private mDispatchAPILevel:I

.field mElement_ALLOCATION:Landroid/support/v8/renderscript/Element;

.field mElement_A_8:Landroid/support/v8/renderscript/Element;

.field mElement_BOOLEAN:Landroid/support/v8/renderscript/Element;

.field mElement_CHAR_2:Landroid/support/v8/renderscript/Element;

.field mElement_CHAR_3:Landroid/support/v8/renderscript/Element;

.field mElement_CHAR_4:Landroid/support/v8/renderscript/Element;

.field mElement_DOUBLE_2:Landroid/support/v8/renderscript/Element;

.field mElement_DOUBLE_3:Landroid/support/v8/renderscript/Element;

.field mElement_DOUBLE_4:Landroid/support/v8/renderscript/Element;

.field mElement_ELEMENT:Landroid/support/v8/renderscript/Element;

.field mElement_F32:Landroid/support/v8/renderscript/Element;

.field mElement_F64:Landroid/support/v8/renderscript/Element;

.field mElement_FLOAT_2:Landroid/support/v8/renderscript/Element;

.field mElement_FLOAT_3:Landroid/support/v8/renderscript/Element;

.field mElement_FLOAT_4:Landroid/support/v8/renderscript/Element;

.field mElement_I16:Landroid/support/v8/renderscript/Element;

.field mElement_I32:Landroid/support/v8/renderscript/Element;

.field mElement_I64:Landroid/support/v8/renderscript/Element;

.field mElement_I8:Landroid/support/v8/renderscript/Element;

.field mElement_INT_2:Landroid/support/v8/renderscript/Element;

.field mElement_INT_3:Landroid/support/v8/renderscript/Element;

.field mElement_INT_4:Landroid/support/v8/renderscript/Element;

.field mElement_LONG_2:Landroid/support/v8/renderscript/Element;

.field mElement_LONG_3:Landroid/support/v8/renderscript/Element;

.field mElement_LONG_4:Landroid/support/v8/renderscript/Element;

.field mElement_MATRIX_2X2:Landroid/support/v8/renderscript/Element;

.field mElement_MATRIX_3X3:Landroid/support/v8/renderscript/Element;

.field mElement_MATRIX_4X4:Landroid/support/v8/renderscript/Element;

.field mElement_RGBA_4444:Landroid/support/v8/renderscript/Element;

.field mElement_RGBA_5551:Landroid/support/v8/renderscript/Element;

.field mElement_RGBA_8888:Landroid/support/v8/renderscript/Element;

.field mElement_RGB_565:Landroid/support/v8/renderscript/Element;

.field mElement_RGB_888:Landroid/support/v8/renderscript/Element;

.field mElement_SAMPLER:Landroid/support/v8/renderscript/Element;

.field mElement_SCRIPT:Landroid/support/v8/renderscript/Element;

.field mElement_SHORT_2:Landroid/support/v8/renderscript/Element;

.field mElement_SHORT_3:Landroid/support/v8/renderscript/Element;

.field mElement_SHORT_4:Landroid/support/v8/renderscript/Element;

.field mElement_TYPE:Landroid/support/v8/renderscript/Element;

.field mElement_U16:Landroid/support/v8/renderscript/Element;

.field mElement_U32:Landroid/support/v8/renderscript/Element;

.field mElement_U64:Landroid/support/v8/renderscript/Element;

.field mElement_U8:Landroid/support/v8/renderscript/Element;

.field mElement_UCHAR_2:Landroid/support/v8/renderscript/Element;

.field mElement_UCHAR_3:Landroid/support/v8/renderscript/Element;

.field mElement_UCHAR_4:Landroid/support/v8/renderscript/Element;

.field mElement_UINT_2:Landroid/support/v8/renderscript/Element;

.field mElement_UINT_3:Landroid/support/v8/renderscript/Element;

.field mElement_UINT_4:Landroid/support/v8/renderscript/Element;

.field mElement_ULONG_2:Landroid/support/v8/renderscript/Element;

.field mElement_ULONG_3:Landroid/support/v8/renderscript/Element;

.field mElement_ULONG_4:Landroid/support/v8/renderscript/Element;

.field mElement_USHORT_2:Landroid/support/v8/renderscript/Element;

.field mElement_USHORT_3:Landroid/support/v8/renderscript/Element;

.field mElement_USHORT_4:Landroid/support/v8/renderscript/Element;

.field private mEnableMultiInput:Z

.field mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

.field mIncCon:J

.field mIncLoaded:Z

.field private mIsProcessContext:Z

.field mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

.field mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;

.field private mNativeLibDir:Ljava/lang/String;

.field mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field mSampler_CLAMP_LINEAR:Landroid/support/v8/renderscript/Sampler;

.field mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

.field mSampler_CLAMP_NEAREST:Landroid/support/v8/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_LINEAR:Landroid/support/v8/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_NEAREST:Landroid/support/v8/renderscript/Sampler;

.field mSampler_WRAP_LINEAR:Landroid/support/v8/renderscript/Sampler;

.field mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

.field mSampler_WRAP_NEAREST:Landroid/support/v8/renderscript/Sampler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    sput v0, Landroid/support/v8/renderscript/RenderScript;->sSdkVersion:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    sput-object v0, Landroid/support/v8/renderscript/RenderScript;->mBlackList:Ljava/lang/String;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    sput-object v0, Landroid/support/v8/renderscript/RenderScript;->lock:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    sput v0, Landroid/support/v8/renderscript/RenderScript;->sNative:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    sput-boolean v0, Landroid/support/v8/renderscript/RenderScript;->useIOlib:Z

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    sput-object v0, Landroid/support/v8/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Landroid/support/v8/renderscript/RenderScript;->mDispatchAPILevel:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIsProcessContext:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Landroid/support/v8/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean v0, p0, Landroid/support/v8/renderscript/RenderScript;->mDestroyed:Z

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Landroid/support/v8/renderscript/RenderScript;->RZlgbmHcCzQCGnab(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_d
    iput-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContextType:Landroid/support/v8/renderscript/RenderScript$ContextType;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-boolean v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncLoaded:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContextSdkVersion:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    iput v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContextFlags:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_17
    iput-object p1, p0, Landroid/support/v8/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    iput-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p1, p0, Landroid/support/v8/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1e
    invoke-static {p1}, Landroid/support/v8/renderscript/RenderScript;->LqTqGoUQOCPOqIQG(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v1, Landroid/support/v8/renderscript/RenderScript$ContextType;->NORMAL:Landroid/support/v8/renderscript/RenderScript$ContextType;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_21
    iput-boolean v0, p0, Landroid/support/v8/renderscript/RenderScript;->mEnableMultiInput:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_23
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public static AAKJzhzWzgouVtCI(Landroid/support/v8/renderscript/RenderScript;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->nLoadIOSO()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static ACIwnrGLswUQzrsg(Landroid/support/v8/renderscript/RenderScript;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnIncContextDestroy(J)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static AKnlcJmEPIOvjBfc(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static ARHCCsceOYbWhQrL(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static AmGLvqesnsGuimHJ(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static AotLyYdwBlRxjSmQ(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static BAureEqIXNNYWZZa(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static BHpWqVKeFXNhrgRg(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static BHvLgSEBJxOemlSE(Landroid/support/v8/renderscript/RenderScript;JJILandroid/graphics/Bitmap;I)J
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    :goto_5
    const v1, 0x8

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCubeCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J

    move-result-wide v0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop
.end method

.method public static BOBcMFChIicKChis(Landroid/support/v8/renderscript/RenderScript;JJJIJJ[BZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p13}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEach(JJJIJJ[BZ)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static BawfwLSdQjmCXefQ(Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static BksnZAdGLcQRTZue(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->nIncContextFinish()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static CKmrTGCUqycXdntG(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->nIncContextDestroy()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static CcxahPIKWLCzSsPU(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static CzoBxFdyJmquZsfw(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static DCcMQMncJCcWFTcI(Landroid/support/v8/renderscript/RenderScript;JJIZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p6}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptInvoke(JJIZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static DSTDeFYqcKRJoeNT(Landroid/support/v8/renderscript/RenderScript$MessageThread;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->join()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static DZnjNwopYItQjInW(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ENXYdzofBfPSYXUD(Ljava/io/File;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ENYNCodWRwqTkdgn(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static EStepnUlQCJAbxus(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ETuUBobhLXYVENLQ(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static EbwLkHOmJVAVZqcC(Landroid/support/v8/renderscript/RenderScript;JJJIJJ[BIIIIIIZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p19}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEachClipped(JJJIJJ[BIIIIIIZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static EfLwiaJVEdMByTms(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static EpiVzhlbPIadJjkV(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static EqUwesyyfsHsSGJt(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static FIVkqkAtmBkLoZtG(Ljava/util/Iterator;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static FKZMeMeyfePaoUkq(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static FNbYFOHqpXKzclng(Landroid/support/v8/renderscript/RenderScript;JJIIIILandroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p9}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData2D(JJIIIILandroid/graphics/Bitmap;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static FZCBVSDcTRNyJYDf(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static FoBcQkhjGWclpkhm(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static GJDrxwiIMJnIRVEn(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static GVhjVJgpULnbzAYn(Landroid/support/v8/renderscript/RenderScript;JJIJZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p8}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarJ(JJIJZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static GWrCcGDYNBhsHtaz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static GYJodRlWwgUAQqum(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static GfkOQhmLyXMgZuLn(Landroid/support/v8/renderscript/RenderScript;JLjava/lang/String;Ljava/lang/String;[J)J
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptGroup2Create(JLjava/lang/String;Ljava/lang/String;[J)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x5

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    const v1, 0xa

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_9
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public static GyKrPgKsyTBuiYsp(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static HHxJtjiaXqjrBlLF(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static HKmdlaiTuCXwKhRc(Landroid/support/v8/renderscript/RenderScript;JJIIILjava/lang/Object;IIIZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p12}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationRead1D(JJIIILjava/lang/Object;IIIZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static HhVEgakRIvVNIDhy(Landroid/support/v8/renderscript/RenderScript;JJJIIIIIIIIIFJJFJIIIIZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p28}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Single(JJJIIIIIIIIIFJJFJIIIIZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static IPDmJjTwWCcwAKft(Landroid/support/v8/renderscript/RenderScript;JI)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnContextSetPriority(JI)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static IbiHZGpHXrChjvqU(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static IoCYKFYvuDWBafLQ(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static IpSKsqDjlYOZTyHo(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static IwtuwQodTXXtasrG(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static JNNKfaGsMwCMTHci(Landroid/support/v8/renderscript/RenderScript;JJJJI)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p9}, Landroid/support/v8/renderscript/RenderScript;->rsnClosureSetGlobal(JJJJI)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static JdyfIwFEEZUwRQkn(ILandroid/content/Context;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/RenderScript;->setupNative(ILandroid/content/Context;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static JxWBxWOTNxUxHRRZ(Landroid/support/v8/renderscript/RenderScript;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nContextDeinitToClient(J)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static KXsAInpyQWPXkRET(Landroid/support/v8/renderscript/RenderScript;JJI)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationSyncAll(JJI)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static KkCXwpMCBlCZpqMp(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static KmJhRwlNbLwoxBVz(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static LDAWdFNNuBcLGHAu(Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    return-wide v0

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->nDeviceCreate()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public static LHeXBeTLblFLVSJr(Landroid/support/v8/renderscript/RenderScript;JJIJI)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p8}, Landroid/support/v8/renderscript/RenderScript;->rsnClosureSetArg(JJIJI)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static LYUDSXTHmxSZpjLy(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static LfhaUXohwWYRifRe()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->rsnSystemGetPointerSize()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static LhsfNvIIqjZDvQIl(Ljava/util/ArrayList;)Ljava/util/Iterator;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static LqTqGoUQOCPOqIQG(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static LruuEyTvFLrbLqbE(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static LtCcuGNTjNbMZTws(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static MMAarAVKuUeEwqLC(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static MPXIdbmQVpYhITdZ(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static McbVANnvgsjRZUYM(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static MfHBUbgSpOnSspjY(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-static {p0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static NQjvUkRBKmHzOILj(Landroid/support/v8/renderscript/RenderScript$MessageThread;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->interrupt()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static NXoicmHMTrAakLxl(Landroid/support/v8/renderscript/RenderScript;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/RenderScript;->nContextSetPriority(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static NdRebpYAzUyarXDH(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->nContextFinish()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static NiLQKMSbcCCDmYns(Landroid/support/v8/renderscript/RenderScript;ZILjava/lang/String;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->nLoadSO(ZILjava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static NxAMIAJSEKtwrzNR(Landroid/support/v8/renderscript/RenderScript;JIIILjava/lang/String;)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x15

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    return-wide v0

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual/range {p0 .. p6}, Landroid/support/v8/renderscript/RenderScript;->rsnContextCreate(JIIILjava/lang/String;)J

    move-result-wide v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public static NyzAThBqLOSmUQRN(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static OLGvOlGxoxhwbJMk(Landroid/support/v8/renderscript/RenderScript;JJ)J
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationGetType(JJ)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    :goto_4
    return-wide v0

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static OaPIewELIQXKfUGT(Landroid/support/v8/renderscript/RenderScript;JJIIIIIILjava/lang/Object;IIIZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p15}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData2D(JJIIIIIILjava/lang/Object;IIIZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static OcRfWotihbLIjJHV(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static OdapAgPLQxoGdMeU(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static OlscQXrHewZzksLr(Landroid/support/v8/renderscript/RenderScript;J[J[J[J[J[J)J
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptGroupCreate(J[J[J[J[J[J)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static OnkvXbxCKbjhcpgh(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static PQmaPsrzHTwOaMtc(Landroid/support/v8/renderscript/RenderScript;JJII)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p6}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationResize2D(JJII)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static PeNeTjUDzoUHsgzi(Landroid/support/v8/renderscript/RenderScript;JJJJI)J
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-wide v0

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual/range {p0 .. p9}, Landroid/support/v8/renderscript/RenderScript;->rsnIncAllocationCreateTyped(JJJJI)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop
.end method

.method public static PjGfbDbkXYsOYTob(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static QFCoKrEZwqKwWLdI(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static QOhyWWVqyPsonaxq(Landroid/support/v8/renderscript/RenderScript;JIII)J
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/RenderScript;->rsnIncContextCreate(JIII)J

    move-result-wide v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_6
    return-wide v0

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    const v1, 0x11

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public static QPGKHIRmwFsEFREb(Ljava/lang/Thread;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static QnqfFYdDcvrSyxeq(Landroid/support/v8/renderscript/RenderScript;JJ[I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/RenderScript;->rsnElementGetNativeData(JJ[I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static QszebNzssvGyCmoq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static QwCcsnYvQwjlpOsl(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static RXLFIAjixnVULvDS(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    return-wide v0

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_9
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public static RZlgbmHcCzQCGnab(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static RZqpDfynpZwjgLbv(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static RbqtxrfohmryjeOe(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static RfeCSMVBNiTCeKWH(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static SEFmKWXhrcuNzgXm(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static SOREXZQpMBDvieyv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static SVrWEpHMtYgYgzYj(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static SXFehbXMlYQdvfTs(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static SbJfzIskpqpQiuKo(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static SdJoNQMvlETukerD(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static SrsuZtxVAImVAgHY(Landroid/support/v8/renderscript/RenderScript;JJIIIIIIIJIIII)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p17}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData3D(JJIIIIIIIJIIII)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static SwChvWCfDHINMkTJ(Landroid/support/v8/renderscript/RenderScript;JIII)J
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/RenderScript;->nIncContextCreate(JIII)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    const v1, 0x5

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    return-wide v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public static SzAweCPDleHaKIEA(Landroid/support/v8/renderscript/RenderScript;JJ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/RenderScript;->rsnObjDestroy(JJ)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static TGzSVhvznKamHTIK(Landroid/support/v8/renderscript/RenderScript;JJIZI)J
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    const v0, 0x10

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    return-wide v0

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/RenderScript;->rsnIncElementCreate(JJIZI)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public static TOMzlXpjCwUMFMcH(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static TPCRiKUfoaLvirsA(Landroid/support/v8/renderscript/RenderScript;JJIFZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarF(JJIFZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static TXvDLIdhetcVKylb(Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static TXwUscejdVmkukiF(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static TgdyADlrIHrjWApX(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static TlrJucKntcdCVCCc(Landroid/support/v8/renderscript/RenderScript;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnContextFinish(J)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static TnxFJifnIkBrIWnE(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static URenGrLhLQVEQzFS(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static UVLWmPmzkiCPbtwZ(Landroid/support/v8/renderscript/RenderScript;JJIIIIIIILjava/lang/Object;IIIZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p16}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData3D(JJIIIIIIILjava/lang/Object;IIIZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static UaRqdWQxsQkaDjeU(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static UkRVXXkeZeuvKsZH(Landroid/support/v8/renderscript/RenderScript;ILjava/lang/String;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nIncLoadSO(ILjava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static UtXnbjuYLDZHCySh(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static VLrinyGeLIvxhAkp(Ljava/util/List;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static VXgJlBgcvsjbEUFl(Landroid/support/v8/renderscript/RenderScript;JJ[J[Ljava/lang/String;[I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/RenderScript;->rsnElementGetSubElements(JJ[J[Ljava/lang/String;[I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static VbQenzppyOqGYOlH(Landroid/support/v8/renderscript/RenderScript;JJIZ)J
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    :goto_1
    goto/32 :goto_4

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x6

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual/range {p0 .. p6}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptFieldIDCreate(JJIZ)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public static WPNHHpWSxXSFIkVZ(Ljava/lang/Integer;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static WVGhuXrKbLdWxZmd(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static XBnktEDoveEXeXqs(Ljava/lang/String;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static XCGuChcnnQmfeCth(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static XTzAVYYAYgHRNiid(Landroid/support/v8/renderscript/RenderScript;JJILandroid/graphics/Bitmap;I)J
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateBitmapBackedAllocation(JJILandroid/graphics/Bitmap;I)J

    move-result-wide v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_7
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static XaNinBKWahAvECbf(Landroid/support/v8/renderscript/RenderScript;JJ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationIoSend(JJ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static XciemucMPzNvDSxU(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static YOukkNeGgxHAGYWG(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static YXopJMOedFhcLHbd(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static YnixGDbgWXCbLhZp(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static YpYXcHluCYFFgtCX(Landroid/support/v8/renderscript/RenderScript;I[I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nContextSendMessage(I[I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static YraMvQucnzgOnUdb(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static YtkIvJOFnHCzlydg(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static YxIwcQDCeJJvAIGK(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ZALERIRRGpAebZQA(Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static ZQnHULxEOsWBIbCZ(Landroid/support/v8/renderscript/RenderScript;JJIII[BI)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p9}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationElementData1D(JJIII[BI)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static ZWxZJbKUuWqFPWln(Ljava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static ZZuFTfbMlfIryOgz(Landroid/support/v8/renderscript/RenderScript;JI[I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/RenderScript;->rsnContextSendMessage(JI[I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static ZkLFrZiJeYVjPDrw(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static ZwwQKnkmGYsBSBge(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ZxrSAJlIMlLysZwM(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static aKCjAmQTxiWrdAhe(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ahGbwZhycKwgtXvI(Landroid/support/v8/renderscript/RenderScript;JJJIIIIIIIIIDJJDJIIIIZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p30}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Double(JJJIIIIIIIIIDJJDJIIIIZ)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static aiqwcWzEnGerNEGp(Landroid/support/v8/renderscript/RenderScript;JJ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptGroupExecute(JJ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ajBzHIkSIWLFBqwb(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static apupANwdXImsMQuU(Landroid/support/v8/renderscript/RenderScript;JJIIZ)J
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-wide v0

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptKernelIDCreate(JJIIZ)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static arLEhhBVDodapWcQ(Landroid/support/v8/renderscript/RenderScript;JIJZ)J
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p6}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptIntrinsicCreate(JIJZ)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-wide v0

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xb

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static arwuVIgVZaAOkKnR(Landroid/support/v8/renderscript/RenderScript;JIIILjava/lang/String;)J
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual/range {p0 .. p6}, Landroid/support/v8/renderscript/RenderScript;->nContextCreate(JIIILjava/lang/String;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const v1, 0x19

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    return-wide v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_9
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public static awCnGdLPdiaJNuxw(Landroid/support/v8/renderscript/RenderScript;JJJJ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p8}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptGroupSetInput(JJJJ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static bEfsCuUgooKUFQIt(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static bFzcSrTPHpaiFEZD(Ljava/lang/Long;)J
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public static bIgobeYQvcJcEfTo(Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    const v1, 0x13

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-wide v0

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1d

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->nIncDeviceCreate()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public static bPBDUSYdCAoNzzal(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static bPxzVdqXqtJNXcSc(Landroid/support/v8/renderscript/RenderScript;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/RenderScript;->nContextDump(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static bXuGFGOVrhBkucFG(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static bkRjWZsCklhJIwYI(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->nContextFinish()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static btDaaDgOFkxGPCPl(Landroid/support/v8/renderscript/RenderScript;JJ)J
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-wide v0

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationGetStride(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xa

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public static bwvRyyfhsXRpJXcI()Ljava/lang/Thread;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static cJWTbFvwbNuQGMoD(Landroid/support/v8/renderscript/RenderScript;JJ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptGroup2Execute(JJ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static covXglzVIGsgACyY(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->TXwUscejdVmkukiF(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    sget-object v0, Landroid/support/v8/renderscript/RenderScript$ContextType;->NORMAL:Landroid/support/v8/renderscript/RenderScript$ContextType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static create(Landroid/content/Context;I)Landroid/support/v8/renderscript/RenderScript;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Landroid/support/v8/renderscript/RenderScript$ContextType;->NORMAL:Landroid/support/v8/renderscript/RenderScript$ContextType;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/RenderScript;->OdapAgPLQxoGdMeU(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public static create(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2, v0}, Landroid/support/v8/renderscript/RenderScript;->MfHBUbgSpOnSspjY(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static create(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;
    .locals 4

    goto/32 :goto_3

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    const v1, 0x17

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Landroid/support/v8/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter v0

    nop

    nop

    :try_start_0
    sget-object v1, Landroid/support/v8/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Landroid/support/v8/renderscript/RenderScript;->LhsfNvIIqjZDvQIl(Ljava/util/ArrayList;)Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    :cond_0
    invoke-static {v1}, Landroid/support/v8/renderscript/RenderScript;->FIVkqkAtmBkLoZtG(Ljava/util/Iterator;)Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    invoke-static {v1}, Landroid/support/v8/renderscript/RenderScript;->sIAkmRPHXtbsAqfV(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScript;->mContextType:Landroid/support/v8/renderscript/RenderScript$ContextType;

    nop

    nop

    nop

    nop

    if-ne v3, p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget v3, v2, Landroid/support/v8/renderscript/RenderScript;->mContextFlags:I

    nop

    nop

    if-ne v3, p3, :cond_0

    nop

    iget v3, v2, Landroid/support/v8/renderscript/RenderScript;->mContextSdkVersion:I

    nop

    nop

    nop

    nop

    nop

    if-ne v3, p1, :cond_0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-object v2

    nop

    nop

    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->UtXnbjuYLDZHCySh(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object p0

    nop

    const/4 p1, 0x1

    nop

    nop

    nop

    iput-boolean p1, p0, Landroid/support/v8/renderscript/RenderScript;->mIsProcessContext:Z

    nop

    nop

    sget-object p1, Landroid/support/v8/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-static {p1, p0}, Landroid/support/v8/renderscript/RenderScript;->ZWxZJbKUuWqFPWln(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop
.end method

.method public static create(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-static {p0, p1, v0}, Landroid/support/v8/renderscript/RenderScript;->gURriSyESBujSiIB(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop
.end method

.method public static create(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->IbiHZGpHXrChjvqU(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    invoke-static {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->uOMqmzjvrNhBBcLI(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public static createMultiContext(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;II)Landroid/support/v8/renderscript/RenderScript;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-static {p0, p3, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nWYAOheXpYbacKOh(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static dMjrsWqBvExcdThG(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static dOmYqVyyLqavhNJe(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static dQiVgFDJRsLhnNDn(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static dqGemcwtEGXasQny(Landroid/support/v8/renderscript/RenderScript;JJ[BZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual/range {p0 .. p6}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetTimeZone(JJ[BZ)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static dyagYXXMszhsgYJV(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method private e2b123f4bfb6a6e404ef6ff971d40a0am()V
    .locals 7

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->bkRjWZsCklhJIwYI(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    cmp-long v0, v3, v5

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-wide v3, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v8/renderscript/RenderScript;->mDestroyed:Z

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    iput-boolean v1, p0, Landroid/support/v8/renderscript/RenderScript;->mDestroyed:Z

    nop

    nop

    move v0, v1

    nop

    nop

    nop

    nop

    nop

    goto :goto_4

    nop

    nop

    :cond_0
    move v0, v2

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x17

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->qjMMjzwXdSslPOHl(Landroid/support/v8/renderscript/RenderScript;)V

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v2, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_f
    move v0, v2

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_11
    iput-boolean v2, v0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRun:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-wide v5, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    const-wide/16 v5, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->CKmrTGCUqycXdntG(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->NQjvUkRBKmHzOILj(Landroid/support/v8/renderscript/RenderScript$MessageThread;)V

    goto/32 :goto_f

    nop

    nop

    :goto_1d
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->bwvRyyfhsXRpJXcI()Ljava/lang/Thread;

    move-result-object v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1f
    iget-wide v3, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_4
    :try_start_2
    iget-object v3, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;

    nop

    nop

    nop

    invoke-static {v3}, Landroid/support/v8/renderscript/RenderScript;->DSTDeFYqcKRJoeNT(Landroid/support/v8/renderscript/RenderScript$MessageThread;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->BksnZAdGLcQRTZue(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_22
    throw v0

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1d

    nop

    nop

    :goto_24
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_18

    nop

    :goto_25
    invoke-static {p0, v3, v4}, Landroid/support/v8/renderscript/RenderScript;->JxWBxWOTNxUxHRRZ(Landroid/support/v8/renderscript/RenderScript;J)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->QPGKHIRmwFsEFREb(Ljava/lang/Thread;)V

    :goto_27
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1a

    nop

    nop
.end method

.method public static eNBrlEvdAHhhUWDf(Landroid/support/v8/renderscript/RenderScript;JJI)J
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    return-wide v0

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    const v0, 0x8

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptInvokeIDCreate(JJI)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static eZQgKPxGmUnfbKSS(Landroid/support/v8/renderscript/RenderScript;JI)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnContextDump(JI)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static eaIvmsazYLVIQMLq(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static eazJFJGGtfqUmIRH(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static efNQilpTQjgSNFkd(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static ehZFmDRuFwaPtLnW(Landroid/support/v8/renderscript/RenderScript;JJ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationGenerateMipmaps(JJ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ekuYNFWpIGFkEVwq(Landroid/support/v8/renderscript/RenderScript;JJI[JJ[B[I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p10}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEach(JJI[JJ[B[I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static esTVzBApnkDxGVpr(Landroid/support/v8/renderscript/RenderScript;JJIIIIIILjava/lang/Object;IIIZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p15}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationRead2D(JJIIIIIILjava/lang/Object;IIIZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static fTgShPsePPkZOdmY(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static faguHKYJeEgpsBCF(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static fceMxCaLIGjjGtnm(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static forceCompat()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    sput v0, Landroid/support/v8/renderscript/RenderScript;->sNative:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public static frogmEUrJODhmZAh(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static fsxglQOvEXFBqHwB(Landroid/support/v8/renderscript/RenderScript;JJIIILjava/lang/Object;IIIZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p12}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData1D(JJIIILjava/lang/Object;IIIZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static gObztnckjdpYhsas(Landroid/support/v8/renderscript/RenderScript;JJJIIIIIIIIIFFJJFFJIIIIZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p30}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Complex(JJJIIIIIIIIIFFJJFFJIIIIZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static gURriSyESBujSiIB(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static goGASDFXznmsteki(Landroid/support/v8/renderscript/RenderScript$MessageThread;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->start()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static hFAqFxkfJqzRaaMO(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static hFUSnBkZwGTSWLaM(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/RenderScript;->e2b123f4bfb6a6e404ef6ff971d40a0am()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static hxoqsPJJDWAbbbSZ(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static ibdtbwCpdAHuvjyz(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method private static internalCreate(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;
    .locals 11

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p0, v10, Landroid/support/v8/renderscript/RenderScript;->mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Landroid/support/v8/renderscript/RSRuntimeException;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_8
    if-eq v3, v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    const-string v3, "dalvik.system.VMRuntime"

    nop

    nop

    invoke-static {v3}, Landroid/support/v8/renderscript/RenderScript;->ysapUNIMRbrUGXcR(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    const-string v7, "getRuntime"

    nop

    nop

    nop

    nop

    invoke-static {v3, v7, v6}, Landroid/support/v8/renderscript/RenderScript;->jvRQpEAFIZUCBvUo(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    nop

    invoke-static {v7, v6, v6}, Landroid/support/v8/renderscript/RenderScript;->aKCjAmQTxiWrdAhe(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    nop

    sput-object v7, Landroid/support/v8/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    const-string v7, "registerNativeAllocation"

    nop

    nop

    nop

    nop

    nop

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v7, v8}, Landroid/support/v8/renderscript/RenderScript;->eaIvmsazYLVIQMLq(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    nop

    nop

    nop

    nop

    sput-object v7, Landroid/support/v8/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    nop

    const-string v7, "registerNativeFree"

    nop

    nop

    nop

    nop

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    nop

    nop

    nop

    invoke-static {v3, v7, v8}, Landroid/support/v8/renderscript/RenderScript;->yyiGAjdwQMREcvdO(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    sput-object v3, Landroid/support/v8/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    nop

    nop

    sput-boolean v4, Landroid/support/v8/renderscript/RenderScript;->sUseGCHooks:Z

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->XciemucMPzNvDSxU(Ljava/lang/Object;)Ljava/lang/String;

    :goto_b
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p1, p0}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    :goto_10
    const-wide/16 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_11
    const/4 v4, -0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, v10}, Landroid/support/v8/renderscript/RenderScript$MessageThread;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    cmp-long p0, v0, p0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput p1, v10, Landroid/support/v8/renderscript/RenderScript;->mContextSdkVersion:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sput p1, Landroid/support/v8/renderscript/RenderScript;->sSdkVersion:I

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput p0, v10, Landroid/support/v8/renderscript/RenderScript;->mDispatchAPILevel:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eq v3, p1, :cond_2

    nop

    goto/32 :goto_72

    nop

    nop

    :cond_2
    :goto_19
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v8, p2, Landroid/support/v8/renderscript/RenderScript$ContextType;->mID:I

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string p1, "Error loading RS Compat library: nLoadSO() failed; Support lib version: 2301"

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v3, v10

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sput-boolean v5, Landroid/support/v8/renderscript/RenderScript;->useNative:Z

    nop

    :goto_1e
    :try_start_1
    const-string v0, "RSSupport"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->qFurmrsALmgvFhOe(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_3

    nop

    goto/32 :goto_60

    nop

    nop

    :cond_3
    goto/32 :goto_5f

    nop

    :goto_21
    const/16 v0, 0x17

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_22
    const-string p1, "Error loading libRSSupport library, Support lib version: 2301"

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_23
    invoke-static {v10}, Landroid/support/v8/renderscript/RenderScript;->AAKJzhzWzgouVtCI(Landroid/support/v8/renderscript/RenderScript;)Z

    move-result v0

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_7a

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sput-boolean v5, Landroid/support/v8/renderscript/RenderScript;->useIOlib:Z

    nop

    :goto_27
    goto/32 :goto_21

    nop

    nop

    :goto_28
    const-string v0, "Error loading RS Compat library: "

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_2a
    new-instance p0, Landroid/support/v8/renderscript/RSRuntimeException;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_5

    nop

    nop

    :goto_2d
    goto/32 :goto_66

    nop

    nop

    :goto_2e
    const-string v0, " Support lib API: 2301"

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance p3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_30
    return-object v10

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_32
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_23

    nop

    nop

    :goto_34
    invoke-static/range {v3 .. v9}, Landroid/support/v8/renderscript/RenderScript;->arwuVIgVZaAOkKnR(Landroid/support/v8/renderscript/RenderScript;JIIILjava/lang/String;)J

    move-result-wide v0

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_35
    invoke-static {p1, p2}, Landroid/support/v8/renderscript/RenderScript;->dQiVgFDJRsLhnNDn(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_36

    nop

    nop

    :goto_36
    invoke-static {p1}, Landroid/support/v8/renderscript/RenderScript;->GyKrPgKsyTBuiYsp(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {p3, p1}, Landroid/support/v8/renderscript/RenderScript;->lxjUFkQCXZFCpTmN(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_38
    sget v3, Landroid/support/v8/renderscript/RenderScript;->sSdkVersion:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_60

    nop

    nop

    :goto_3a
    iput-wide v0, v10, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance p0, Landroid/support/v8/renderscript/RSRuntimeException;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_3c
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_2
    sget-boolean v3, Landroid/support/v8/renderscript/RenderScript;->sInitialized:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_16

    nop

    nop

    :goto_3d
    move v3, p1

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_3e
    const v1, 0xa

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_40
    sget-object p0, Landroid/support/v8/renderscript/RenderScript;->lock:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_41
    throw p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_3
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const-string v1, "Error loading RS jni library: "

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_43
    const-string v2, "Error loading RS jni library: "

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-eqz v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_45
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const-string p1, "Can\'t have two contexts with different SDK versions in support lib"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_47
    sput-boolean p0, Landroid/support/v8/renderscript/RenderScript;->useNative:Z

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_48
    new-instance v10, Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_49
    if-ge p0, v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_8
    goto/32 :goto_54

    nop

    nop

    :goto_4a
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_4b
    goto :goto_4c

    nop

    nop

    nop

    :catch_1
    :try_start_4
    const-string v3, "RenderScript_jni"

    nop

    nop

    nop

    nop

    nop

    const-string v7, "No GC methods"

    nop

    nop

    nop

    nop

    invoke-static {v3, v7}, Landroid/support/v8/renderscript/RenderScript;->hFAqFxkfJqzRaaMO(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Landroid/support/v8/renderscript/RenderScript;->sUseGCHooks:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4c
    :try_start_5
    const-string v3, "rsjni"

    nop

    invoke-static {v3}, Landroid/support/v8/renderscript/RenderScript;->bPBDUSYdCAoNzzal(Ljava/lang/String;)V

    sput-boolean v4, Landroid/support/v8/renderscript/RenderScript;->sInitialized:Z

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->LfhaUXohwWYRifRe()I

    move-result v3

    nop

    nop

    nop

    sput v3, Landroid/support/v8/renderscript/RenderScript;->sPointerSize:I

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->useNative:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_4e
    invoke-static {v10}, Landroid/support/v8/renderscript/RenderScript;->LDAWdFNNuBcLGHAu(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_51
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_52
    goto/16 :goto_64

    nop

    nop

    nop

    :catch_2
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_53
    const v0, 0x1d

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iput-boolean v4, v10, Landroid/support/v8/renderscript/RenderScript;->mEnableMultiInput:Z

    nop

    nop

    nop

    nop

    :try_start_6
    const-string v0, "blasV8"

    nop

    nop

    nop

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->faguHKYJeEgpsBCF(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_3

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_55
    move v7, p1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_b

    nop

    nop

    :catch_3
    move-exception v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const-string p2, "Error loading RS Compat library: "

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_58
    if-eqz v0, :cond_9

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_9
    :goto_59
    goto/32 :goto_26

    nop

    nop

    :goto_5a
    invoke-static {p1, p0}, Landroid/support/v8/renderscript/RenderScript;->lrngzcclyxCiRZNn(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-static {p3, p0}, Landroid/support/v8/renderscript/RenderScript;->pTDROaoFsTqRJpwx(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_5e

    nop

    nop

    :goto_5c
    iput-object p2, v10, Landroid/support/v8/renderscript/RenderScript;->mContextType:Landroid/support/v8/renderscript/RenderScript$ContextType;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {v10, v5, p0, v6}, Landroid/support/v8/renderscript/RenderScript;->NiLQKMSbcCCDmYns(Landroid/support/v8/renderscript/RenderScript;ZILjava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {p3, p2}, Landroid/support/v8/renderscript/RenderScript;->IpSKsqDjlYOZTyHo(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_2e

    nop

    nop

    :goto_61
    invoke-static {p3}, Landroid/support/v8/renderscript/RenderScript;->mKXiGdylVyUMxlhE(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iput p3, v10, Landroid/support/v8/renderscript/RenderScript;->mContextFlags:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    sput-boolean v5, Landroid/support/v8/renderscript/RenderScript;->useIOlib:Z

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_67

    nop

    nop

    :goto_65
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->goGASDFXznmsteki(Landroid/support/v8/renderscript/RenderScript$MessageThread;)V

    goto/32 :goto_30

    nop

    nop

    :goto_66
    const-string p0, "RenderScript_jni"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_67
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->useIOlib:Z

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_68
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-static {v10, v0, p0, v6}, Landroid/support/v8/renderscript/RenderScript;->seRIymwXQTPerFfP(Landroid/support/v8/renderscript/RenderScript;ZILjava/lang/String;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_6b
    new-instance p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/RenderScript;->kqSwIkOmLsifGHkF(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v9, v10, Landroid/support/v8/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    if-nez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_b
    :try_start_7
    const-string v0, "RSSupportIO"

    nop

    nop

    nop

    nop

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->xtBDDctGjnRUmRqX(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_7} :catch_2

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    new-instance p0, Landroid/support/v8/renderscript/RSDriverException;

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_70
    invoke-static {v3, p0}, Landroid/support/v8/renderscript/RenderScript;->JdyfIwFEEZUwRQkn(ILandroid/content/Context;)Z

    move-result p0

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_71
    throw p1

    nop

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_73
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->useIOlib:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-direct {v10, p0}, Landroid/support/v8/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    goto/32 :goto_38

    nop

    nop

    :goto_75
    const-string p2, " Support lib version: 2301"

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_76
    const-string p1, "Failed to create RS context."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_77
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    move p0, p1

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto :goto_7c

    nop

    nop

    nop

    :catch_4
    move-exception p1

    nop

    :try_start_8
    const-string p2, "RenderScript_jni"

    nop

    new-instance p3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p1}, Landroid/support/v8/renderscript/RenderScript;->LtCcuGNTjNbMZTws(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/support/v8/renderscript/RenderScript;->ufhiPdJeWoVjwIka(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    nop

    invoke-static {p2, p3}, Landroid/support/v8/renderscript/RenderScript;->YXopJMOedFhcLHbd(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Landroid/support/v8/renderscript/RSRuntimeException;

    nop

    nop

    new-instance p3, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p1}, Landroid/support/v8/renderscript/RenderScript;->KkCXwpMCBlCZpqMp(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p3, v0}, Landroid/support/v8/renderscript/RenderScript;->LruuEyTvFLrbLqbE(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/support/v8/renderscript/RenderScript;->AmGLvqesnsGuimHJ(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-direct {p2, p1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    monitor-exit p0

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/32 :goto_7d

    nop

    nop

    :goto_7d
    sput-boolean v4, Landroid/support/v8/renderscript/RenderScript;->useIOlib:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_7e
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->useNative:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_7f
    if-lt p1, p0, :cond_c

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_c
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    const-string p3, "RenderScript_jni"

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop
.end method

.method public static ioAVbOiiRFAYvTgk(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static jIasXuQxbtjyuxYS(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static jOsJEBebuPqMWQSj(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static jTOwcPcNNOGZgsBO(Landroid/support/v8/renderscript/RenderScript;JJIIIZZI)J
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    const v0, 0x12

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    invoke-virtual/range {p0 .. p10}, Landroid/support/v8/renderscript/RenderScript;->rsnTypeCreate(JJIIIZZI)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public static jUUgqmRMzxoTKkfm(Landroid/support/v8/renderscript/RenderScript;J[J[Ljava/lang/String;[I)J
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/RenderScript;->rsnElementCreate2(J[J[Ljava/lang/String;[I)J

    move-result-wide v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-wide v0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x15

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x4

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static jkljPkiPKpGNuhvM(Landroid/support/v8/renderscript/RenderScript;JJJ[J[J[I[J[J)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    invoke-virtual/range {p0 .. p11}, Landroid/support/v8/renderscript/RenderScript;->rsnClosureCreate(JJJ[J[J[I[J[J)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    return-wide v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop
.end method

.method public static jtEovHXicwgqPKsm(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static jvRQpEAFIZUCBvUo(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static kGkhgtTPHELRwpYU(Landroid/support/v8/renderscript/RenderScript;JJIDZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p8}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarD(JJIDZ)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static kqSwIkOmLsifGHkF(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static ktcVCYlUoJLuQMxN(Landroid/support/v8/renderscript/RenderScript;JJLjava/lang/Object;IIZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p8}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationRead(JJLjava/lang/Object;IIZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static kyUiiRiIIqgOTwjb(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static lAuCbrNoyenOiBaA(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static lRsiMAFsYzLAdhFy(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static lrngzcclyxCiRZNn(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static luzpTHPhgdNMyViP(Landroid/support/v8/renderscript/RenderScript;JJ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationIoReceive(JJ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static lxjUFkQCXZFCpTmN(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static mKXiGdylVyUMxlhE(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static mYnlUYbbnlyftYlb(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static mgtzAjZitEQgGVGn(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static mwrvsrBVJQoPvrhb(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static mxXKeAFpctNRZbaA(Landroid/support/v8/renderscript/RenderScript;JJI)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationResize1D(JJI)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static nHvWrWuSfeDCNEqv(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static nOGEyyAEncCduqmn(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static nTqZupnIixsOmHEb(Landroid/support/v8/renderscript/RenderScript;JJ[B[J[J[I)J
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p8}, Landroid/support/v8/renderscript/RenderScript;->rsnInvokeClosureCreate(JJ[B[J[J[I)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_7
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static nWYAOheXpYbacKOh(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static nbzUczqhoqVghYuz(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static npbuVLGfzoTJAVmG(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/RenderScript;->e2b123f4bfb6a6e404ef6ff971d40a0am()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static nrCxtGpzTygEVYQM(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static nryexHjQFYEalSlS(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static oImpMLbFtPVUfIby(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static oWHjOirpYVoutLfT(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static okdfNJRNvFQgqYGh(Landroid/support/v8/renderscript/RenderScript;JJJJ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p8}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptGroupSetOutput(JJJJ)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static oxJyKTiBKrLYLgap(Landroid/support/v8/renderscript/RenderScript;JJIIZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarI(JJIIZ)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static pBJyvuIAxCntlDzl(Landroid/support/v8/renderscript/RenderScript;JJJIIIJIJIJIIZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p20}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_BNNM(JJJIIIJIJIJIIZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static pJwRRlGzQXoGZYxI(Landroid/support/v8/renderscript/RenderScript;JJ[J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/RenderScript;->rsnTypeGetNativeData(JJ[J)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static pTDROaoFsTqRJpwx(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static pVWiuhTTcgzAurkg(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static pXtxlLoYxudxyjFd(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static pcKRjlOBblmieZtx(Landroid/support/v8/renderscript/RenderScript;JJIIIZZI)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x7

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    :goto_9
    invoke-virtual/range {p0 .. p10}, Landroid/support/v8/renderscript/RenderScript;->rsnIncTypeCreate(JJIIIZZI)J

    move-result-wide v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public static pdGIydetPqtvDYLC(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static pemglSErnWvjMIjb(Landroid/support/v8/renderscript/RenderScript;JIIIIIF)J
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual/range {p0 .. p8}, Landroid/support/v8/renderscript/RenderScript;->rsnSamplerCreate(JIIIIIF)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x18

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public static qFurmrsALmgvFhOe(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static qNDAzZYMnQDbqwTU(Landroid/support/v8/renderscript/RenderScript;JLjava/lang/String;Ljava/lang/String;[BI)J
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x7

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    invoke-virtual/range {p0 .. p6}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptCCreate(JLjava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop
.end method

.method public static qXCBevxydviHKuga(Landroid/support/v8/renderscript/RenderScript;JJLandroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCopyFromBitmap(JJLandroid/graphics/Bitmap;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static qjMMjzwXdSslPOHl(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->nContextDestroy()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static qsSNszteFeNSgSuk(Landroid/support/v8/renderscript/RenderScript;JJ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/RenderScript;->rsnIncObjDestroy(JJ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static qxsvqZwAIibPTSQJ(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static rDNeRlQwWxSaSErk(Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static rIlxMToHLDITCMux(Landroid/support/v8/renderscript/RenderScript;JJJIJJIIIIIIZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p18}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEachClipped(JJJIJJIIIIIIZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static rUVYwLFNKjDuYmOT(Landroid/support/v8/renderscript/RenderScript;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnIncContextFinish(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static rZIBaUdhXsEjMCml(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static rbhkGZoMdAFKpryy(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static releaseAllContexts()V
    .locals 5

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, v3}, Landroid/support/v8/renderscript/RenderScript;->wEWWApmQhPMDrGZS(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    throw v1

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v1, Landroid/support/v8/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    nop

    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Landroid/support/v8/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_6
    sget-object v0, Landroid/support/v8/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1}, Landroid/support/v8/renderscript/RenderScript;->VLrinyGeLIvxhAkp(Ljava/util/List;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    if-lt v3, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    check-cast v4, Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    invoke-static {v1}, Landroid/support/v8/renderscript/RenderScript;->xhoAJUQayHPDlMfS(Ljava/util/ArrayList;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    iput-boolean v2, v4, Landroid/support/v8/renderscript/RenderScript;->mIsProcessContext:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_13
    goto :goto_17

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    move v3, v2

    nop

    :goto_17
    goto/32 :goto_b

    nop

    nop

    :goto_18
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_19
    invoke-static {v4}, Landroid/support/v8/renderscript/RenderScript;->xzOUftrHYzcbtGQk(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_15

    nop

    nop

    nop
.end method

.method public static rkHaGXrehtBChNVH(Landroid/support/v8/renderscript/RenderScript;JJIZI)J
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/RenderScript;->rsnElementCreate(JJIZI)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method static native rsnSystemGetPointerSize()I
.end method

.method public static sIAkmRPHXtbsAqfV(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static sKsVKewcvefqNDda(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static sLnOsxXprOmzIMkF(Landroid/support/v8/renderscript/RenderScript;JJLandroid/graphics/Bitmap;)J
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateBitmapRef(JJLandroid/graphics/Bitmap;)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-wide v0

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public static sMCWxhXiCzYlEkvo(Landroid/support/v8/renderscript/RenderScript;JJIIIIIIJIIII)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p16}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData2D(JJIIIIIIJIIII)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static sOJmOzLDmNyCqxmp(Landroid/support/v8/renderscript/RenderScript;JJJIZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual/range {p0 .. p8}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptBindAllocation(JJJIZ)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static sTdjNPsSxDnlzaJd(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static sWQRLbMlgoCOotsL(Landroid/support/v8/renderscript/RenderScript;JJIII)Ljava/nio/ByteBuffer;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationGetByteBuffer(JJIII)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static sYGsPcCobEOUiGFf(Landroid/support/v8/renderscript/RenderScript;JJI[BZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptInvokeV(JJI[BZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static seRIymwXQTPerFfP(Landroid/support/v8/renderscript/RenderScript;ZILjava/lang/String;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->nLoadSO(ZILjava/lang/String;)Z

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static setBlackList(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object p0, Landroid/support/v8/renderscript/RenderScript;->mBlackList:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/io/File;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->ENXYdzofBfPSYXUD(Ljava/io/File;)Z

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_4
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "com.android.renderscript.cache"

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->EStepnUlQCJAbxus(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sput-object p0, Landroid/support/v8/renderscript/RenderScript;->mCachePath:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method private static setupNative(ILandroid/content/Context;)Z
    .locals 7

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p1, Landroid/support/v8/renderscript/RenderScript;->mBlackList:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2
    sget p0, Landroid/support/v8/renderscript/RenderScript;->sNative:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput v2, Landroid/support/v8/renderscript/RenderScript;->sNative:I

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_4
    goto/16 :goto_2d

    nop

    nop

    :catch_0
    goto/32 :goto_2c

    nop

    nop

    :goto_5
    return v2

    nop

    :goto_6
    goto/32 :goto_3e

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eq p0, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_b
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string p1, "com.android.support.v8.renderscript.EnableBlurWorkaround"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    sput v2, Landroid/support/v8/renderscript/RenderScript;->sNative:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/RenderScript;->vGEgmLpVdGJIDBhW(Landroid/os/Bundle;Ljava/lang/String;)Z

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/RenderScript;->covXglzVIGsgACyY(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->TgdyADlrIHrjWApX(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_16
    const/16 p1, 0x3a

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v0, "com.android.support.v8.renderscript.EnableAsyncTeardown"

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_19
    sget p0, Landroid/support/v8/renderscript/RenderScript;->sNative:I

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1a
    sget-object p0, Landroid/support/v8/renderscript/RenderScript;->mBlackList:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1b
    const v0, 0x17

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p0, :cond_4

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1f
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->zxMXykqkPeiQvOgX(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_20
    return v2

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return v1

    nop

    nop

    :goto_23
    goto/32 :goto_19

    nop

    nop

    :goto_24
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/RenderScript;->McbVANnvgsjRZUYM(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    :goto_25
    const/16 p1, 0x29

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_26
    invoke-static {p1, p0}, Landroid/support/v8/renderscript/RenderScript;->RZqpDfynpZwjgLbv(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance p0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_29
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto :goto_23

    nop

    nop

    nop

    nop

    :catch_1
    :goto_2b
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_2c
    move-wide v5, v3

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_2e
    if-gtz p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2f
    if-eq p0, v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_31
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/RenderScript;->TnxFJifnIkBrIWnE(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->XBnktEDoveEXeXqs(Ljava/lang/String;)I

    move-result p0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    nop

    :try_start_0
    const-string v0, "android.renderscript.RenderScript"

    nop

    nop

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->ytsxWlzHhlyMZIJE(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    nop

    const-string v5, "getMinorID"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v5, p0}, Landroid/support/v8/renderscript/RenderScript;->rZIBaUdhXsEjMCml(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    invoke-static {v0, p0, p0}, Landroid/support/v8/renderscript/RenderScript;->AKnlcJmEPIOvjBfc(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    check-cast p0, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->bFzcSrTPHpaiFEZD(Ljava/lang/Long;)J

    move-result-wide v5

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    :goto_34
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/RenderScript;->MPXIdbmQVpYhITdZ(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    goto/32 :goto_3b

    nop

    nop

    :goto_35
    if-eq p0, v1, :cond_8

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_8
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_36
    sput v2, Landroid/support/v8/renderscript/RenderScript;->sNative:I

    nop

    :goto_37
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_38
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_39
    const/4 v1, 0x1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :catch_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->URenGrLhLQVEQzFS(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3c
    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3d
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/RenderScript;->dOmYqVyyLqavhNJe(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    cmp-long p0, v5, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_41
    add-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sput v1, Landroid/support/v8/renderscript/RenderScript;->sNative:I

    nop

    nop

    nop

    :try_start_1
    invoke-static {p1}, Landroid/support/v8/renderscript/RenderScript;->ETuUBobhLXYVENLQ(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {p1}, Landroid/support/v8/renderscript/RenderScript;->FKZMeMeyfePaoUkq(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    const/16 v3, 0x80

    nop

    nop

    nop

    nop

    invoke-static {v0, p1, v3}, Landroid/support/v8/renderscript/RenderScript;->jIasXuQxbtjyuxYS(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const-string p1, "("

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    return v1

    nop

    nop

    :goto_45
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    const-string v0, "android.os.SystemProperties"

    nop

    nop

    nop

    nop

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->xKBmwHpoxCIOyDDN(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    nop

    const-class v3, Ljava/lang/String;

    nop

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    nop

    const-string v4, "getInt"

    nop

    nop

    nop

    invoke-static {v0, v4, v3}, Landroid/support/v8/renderscript/RenderScript;->EfLwiaJVEdMByTms(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    const-string v3, "debug.rs.forcecompat"

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/lang/Integer;

    nop

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    invoke-static {v0, p0, v3}, Landroid/support/v8/renderscript/RenderScript;->xQqkzuKKqKnwnVrB(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->WPNHHpWSxXSFIkVZ(Ljava/lang/Integer;)I

    move-result v0

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_27

    nop

    nop
.end method

.method public static sjqMqXZzdoYrRMyI(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static srkqtCcKXXjEZIPm(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static srpZpdnMudNyqAZY(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static tAsWBtxaSUnvXgSu(Landroid/support/v8/renderscript/RenderScript;JJILandroid/graphics/Bitmap;I)J
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    const v0, 0x16

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop
.end method

.method public static tWqditsNnzNTZKQB(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static uByCSpsqckcQyFbD(Landroid/support/v8/renderscript/RenderScript;JJJIJJZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p12}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEach(JJJIJJZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static uGddOUOuHMZPdenD(Landroid/support/v8/renderscript/RenderScript;JIJZ)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x7

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-virtual/range {p0 .. p6}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptIntrinsicCreate(JIJZ)J

    move-result-wide v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop
.end method

.method public static uLyXiCGkbkEVbpvb(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static uNCLZtjHKZXCBNjD(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static uOMqmzjvrNhBBcLI(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static uYiLTlWOoAlTOijH(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static ufhiPdJeWoVjwIka(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static uvJHkhktTrUBBNoL(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static vGEgmLpVdGJIDBhW(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static vVubrNrPLmUjjAGZ(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static vZZreWNIlUqMIfgo(Landroid/support/v8/renderscript/RenderScript;JJI[BZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarV(JJI[BZ)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static vbuBLWQogJjRWWUA(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static vsWksvifzSihhtKh(Landroid/support/v8/renderscript/RenderScript;JJJIIIIIIIIIDDJJDDJIIIIZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p34}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Z(JJJIIIIIIIIIDDJJDDJIIIIZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static wEWWApmQhPMDrGZS(Ljava/util/List;I)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static wPwksjHxrcZKcclN(Landroid/support/v8/renderscript/RenderScript;JJIIJ)J
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_a
    invoke-virtual/range {p0 .. p8}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateTyped(JJIIJ)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public static wTsDPUpEUecsfYJQ(Landroid/support/v8/renderscript/RenderScript;JIII)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x17

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateFromAssetStream(JIII)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop
.end method

.method public static wYfAqbeeKcrrLBgt(Landroid/support/v8/renderscript/RenderScript;JJLandroid/view/Surface;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationSetSurface(JJLandroid/view/Surface;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static xKBmwHpoxCIOyDDN(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static xQqkzuKKqKnwnVrB(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static xhoAJUQayHPDlMfS(Ljava/util/ArrayList;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static xksFgnzDVANFqIwX(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static xtBDDctGjnRUmRqX(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static xzOUftrHYzcbtGQk(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->destroy()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static yIMkCGBFedRRBDGJ(Landroid/support/v8/renderscript/RenderScript;JJLandroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCopyToBitmap(JJLandroid/graphics/Bitmap;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static yeUfHnpZQtGjeEdh(Landroid/support/v8/renderscript/RenderScript;JJI[BJ[IZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p10}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarVE(JJI[BJ[IZ)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static yhoJKHjcWMPXHFaN(Landroid/support/v8/renderscript/RenderScript;JJI[JJ[I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p9}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptReduce(JJI[JJ[I)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static ynAtPeYkHyPwuinz(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static ysapUNIMRbrUGXcR(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static ytsxWlzHhlyMZIJE(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static yvQUBhYzuzGQoaAA(Landroid/support/v8/renderscript/RenderScript;JJIJZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p8}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarObj(JJIJZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static yyUzLeRqkUjlKcOd(Landroid/support/v8/renderscript/RenderScript;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnContextDestroy(J)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static yyiGAjdwQMREcvdO(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static zgIKmkJARTIuUjso(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static zlTYuYhRukahfICw(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static zxMXykqkPeiQvOgX(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method


# virtual methods
.method public contextDump()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->CzoBxFdyJmquZsfw(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->bPxzVdqXqtJNXcSc(Landroid/support/v8/renderscript/RenderScript;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public destroy()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIsProcessContext:Z

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->npbuVLGfzoTJAVmG(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_5

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->srpZpdnMudNyqAZY(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_4

    nop

    nop
.end method

.method protected finalize()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->dMjrsWqBvExcdThG(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->hFUSnBkZwGTSWLaM(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public finish()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->NdRebpYAzUyarXDH(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroid/support/v8/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public getDispatchAPILevel()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Landroid/support/v8/renderscript/RenderScript;->mDispatchAPILevel:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public getErrorHandler()Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroid/support/v8/renderscript/RenderScript;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public getMessageHandler()Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public isAlive()Z
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    cmp-long p0, v0, v2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public isUseNative()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-boolean p0, Landroid/support/v8/renderscript/RenderScript;->useNative:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V
    .locals 6

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    const v0, 0x1e

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->tWqditsNnzNTZKQB(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    move-object v0, p0

    nop

    nop

    nop

    move-wide v3, p1

    nop

    move-object v5, p3

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->qXCBevxydviHKuga(Landroid/support/v8/renderscript/RenderScript;JJLandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public declared-synchronized nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V
    .locals 6

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x18

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->OnkvXbxCKbjhcpgh(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    move-object v0, p0

    nop

    move-wide v3, p1

    nop

    nop

    move-object v5, p3

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->yIMkCGBFedRRBDGJ(Landroid/support/v8/renderscript/RenderScript;JJLandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_6
    const v1, 0x6

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J
    .locals 8

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->jOsJEBebuPqMWQSj(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    move-object v0, p0

    nop

    move-wide v3, p1

    nop

    nop

    nop

    nop

    nop

    move v5, p3

    nop

    nop

    nop

    nop

    nop

    move-object v6, p4

    nop

    nop

    nop

    move v7, p5

    nop

    nop

    nop

    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->XTzAVYYAYgHRNiid(Landroid/support/v8/renderscript/RenderScript;JJILandroid/graphics/Bitmap;I)J

    move-result-wide p1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-wide p1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop
.end method

.method declared-synchronized nAllocationCreateBitmapRef(JLandroid/graphics/Bitmap;)J
    .locals 6

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-wide p1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    monitor-enter p0

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->AotLyYdwBlRxjSmQ(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    move-object v0, p0

    nop

    move-wide v3, p1

    nop

    move-object v5, p3

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->sLnOsxXprOmzIMkF(Landroid/support/v8/renderscript/RenderScript;JJLandroid/graphics/Bitmap;)J

    move-result-wide p1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop
.end method

.method declared-synchronized nAllocationCreateFromAssetStream(III)J
    .locals 6

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->YtkIvJOFnHCzlydg(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    move v3, p1

    nop

    move v4, p2

    nop

    move v5, p3

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->wTsDPUpEUecsfYJQ(Landroid/support/v8/renderscript/RenderScript;JIII)J

    move-result-wide p1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    :goto_4
    const v0, 0xf

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p1

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-wide p1

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J
    .locals 8

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-wide p1

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->IwtuwQodTXXtasrG(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    move-wide v3, p1

    nop

    nop

    nop

    move v5, p3

    nop

    move-object v6, p4

    nop

    move v7, p5

    nop

    nop

    nop

    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->tAsWBtxaSUnvXgSu(Landroid/support/v8/renderscript/RenderScript;JJILandroid/graphics/Bitmap;I)J

    move-result-wide p1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p1

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop
.end method

.method public declared-synchronized nAllocationCreateTyped(JIIJ)J
    .locals 9

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-wide p1

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    const v0, 0x4

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->qxsvqZwAIibPTSQJ(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    move-wide v3, p1

    nop

    nop

    nop

    move v5, p3

    nop

    nop

    move v6, p4

    nop

    nop

    move-wide v7, p5

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v8}, Landroid/support/v8/renderscript/RenderScript;->wPwksjHxrcZKcclN(Landroid/support/v8/renderscript/RenderScript;JJIIJ)J

    move-result-wide p1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J
    .locals 8

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x8

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->xksFgnzDVANFqIwX(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    move-wide v3, p1

    nop

    nop

    nop

    nop

    move v5, p3

    nop

    nop

    move-object v6, p4

    nop

    move v7, p5

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->BHvLgSEBJxOemlSE(Landroid/support/v8/renderscript/RenderScript;JJILandroid/graphics/Bitmap;I)J

    move-result-wide p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    return-wide p1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_c
    const v0, 0x10

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public declared-synchronized nAllocationData1D(JIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V
    .locals 15

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->mYnlUYbbnlyftYlb(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v2, v14, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    move-object/from16 v0, p8

    nop

    iget v11, v0, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    nop

    move-object v1, p0

    nop

    nop

    move-wide/from16 v4, p1

    nop

    nop

    nop

    nop

    move/from16 v6, p3

    nop

    nop

    move/from16 v7, p4

    nop

    nop

    nop

    move/from16 v8, p5

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v9, p6

    nop

    nop

    nop

    nop

    move/from16 v10, p7

    nop

    nop

    nop

    nop

    move/from16 v12, p9

    nop

    nop

    nop

    move/from16 v13, p10

    nop

    invoke-static/range {v1 .. v13}, Landroid/support/v8/renderscript/RenderScript;->fsxglQOvEXFBqHwB(Landroid/support/v8/renderscript/RenderScript;JJIIILjava/lang/Object;IIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    const v1, 0x1c

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x7

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    move-object v14, p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nAllocationData2D(JIIIIIIJIIII)V
    .locals 18

    goto/32 :goto_9

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 v15, p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->sKsVKewcvefqNDda(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v2, v15, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    move-object/from16 v1, p0

    nop

    nop

    nop

    move-wide/from16 v4, p1

    nop

    nop

    nop

    nop

    nop

    move/from16 v6, p3

    nop

    move/from16 v7, p4

    nop

    nop

    move/from16 v8, p5

    nop

    move/from16 v9, p6

    nop

    nop

    nop

    nop

    move/from16 v10, p7

    nop

    nop

    nop

    nop

    move/from16 v11, p8

    nop

    nop

    nop

    nop

    move-wide/from16 v12, p9

    nop

    nop

    nop

    move/from16 v14, p11

    nop

    move/from16 v15, p12

    nop

    move/from16 v16, p13

    nop

    nop

    nop

    nop

    nop

    move/from16 v17, p14

    nop

    nop

    nop

    invoke-static/range {v1 .. v17}, Landroid/support/v8/renderscript/RenderScript;->sMCWxhXiCzYlEkvo(Landroid/support/v8/renderscript/RenderScript;JJIIIIIIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    const v0, 0xc

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nAllocationData2D(JIIIIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V
    .locals 17

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x17

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    const v1, 0x7

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    invoke-static/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->QwCcsnYvQwjlpOsl(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v2, v15, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    move-object/from16 v0, p11

    nop

    nop

    nop

    nop

    nop

    iget v14, v0, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    nop

    nop

    nop

    nop

    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    move-wide/from16 v4, p1

    nop

    move/from16 v6, p3

    nop

    move/from16 v7, p4

    nop

    nop

    nop

    nop

    move/from16 v8, p5

    nop

    nop

    nop

    nop

    move/from16 v9, p6

    nop

    nop

    nop

    nop

    move/from16 v10, p7

    nop

    move/from16 v11, p8

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v12, p9

    nop

    move/from16 v13, p10

    nop

    nop

    nop

    nop

    move/from16 v15, p12

    nop

    nop

    move/from16 v16, p13

    nop

    nop

    nop

    nop

    invoke-static/range {v1 .. v16}, Landroid/support/v8/renderscript/RenderScript;->OaPIewELIQXKfUGT(Landroid/support/v8/renderscript/RenderScript;JJIIIIIILjava/lang/Object;IIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v15, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V
    .locals 12

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->GYJodRlWwgUAQqum(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v2, v11, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    move-object v1, p0

    nop

    move-wide v4, p1

    nop

    move v6, p3

    nop

    move/from16 v7, p4

    nop

    nop

    nop

    move/from16 v8, p5

    nop

    nop

    move/from16 v9, p6

    nop

    move-object/from16 v10, p7

    nop

    invoke-static/range {v1 .. v10}, Landroid/support/v8/renderscript/RenderScript;->FNbYFOHqpXKzclng(Landroid/support/v8/renderscript/RenderScript;JJIIIILandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    move-object v11, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    const v1, 0x1b

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    throw v0

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nAllocationData3D(JIIIIIIIJIIII)V
    .locals 19

    goto/32 :goto_a

    nop

    nop

    :goto_0
    move-object/from16 v15, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->KmJhRwlNbLwoxBVz(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v2, v15, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v1, p0

    nop

    move-wide/from16 v4, p1

    nop

    nop

    nop

    move/from16 v6, p3

    nop

    nop

    nop

    nop

    nop

    move/from16 v7, p4

    nop

    move/from16 v8, p5

    nop

    nop

    move/from16 v9, p6

    nop

    nop

    move/from16 v10, p7

    nop

    nop

    nop

    nop

    move/from16 v11, p8

    nop

    nop

    nop

    nop

    nop

    move/from16 v12, p9

    nop

    nop

    nop

    move-wide/from16 v13, p10

    nop

    nop

    move/from16 v15, p12

    nop

    nop

    nop

    nop

    move/from16 v16, p13

    nop

    nop

    nop

    move/from16 v17, p14

    nop

    nop

    nop

    nop

    nop

    move/from16 v18, p15

    nop

    nop

    invoke-static/range {v1 .. v18}, Landroid/support/v8/renderscript/RenderScript;->SrsuZtxVAImVAgHY(Landroid/support/v8/renderscript/RenderScript;JJIIIIIIIJIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public declared-synchronized nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V
    .locals 18

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x15

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    :goto_2
    move-object/from16 v15, p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xc

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->ibdtbwCpdAHuvjyz(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v2, v15, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    move-object/from16 v0, p12

    nop

    nop

    nop

    nop

    nop

    iget v0, v0, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v1, p0

    nop

    move-wide/from16 v4, p1

    nop

    move/from16 v6, p3

    nop

    nop

    nop

    nop

    move/from16 v7, p4

    nop

    move/from16 v8, p5

    nop

    move/from16 v9, p6

    nop

    nop

    nop

    nop

    nop

    move/from16 v10, p7

    nop

    nop

    nop

    nop

    nop

    move/from16 v11, p8

    nop

    nop

    nop

    nop

    nop

    move/from16 v12, p9

    nop

    nop

    nop

    nop

    move-object/from16 v13, p10

    nop

    move/from16 v14, p11

    nop

    nop

    nop

    nop

    nop

    move v15, v0

    nop

    nop

    nop

    nop

    nop

    move/from16 v16, p13

    nop

    move/from16 v17, p14

    nop

    nop

    nop

    invoke-static/range {v1 .. v17}, Landroid/support/v8/renderscript/RenderScript;->UVLWmPmzkiCPbtwZ(Landroid/support/v8/renderscript/RenderScript;JJIIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nAllocationElementData1D(JIII[BI)V
    .locals 12

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->CcxahPIKWLCzSsPU(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v2, v11, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    move-object v1, p0

    nop

    move-wide v4, p1

    nop

    nop

    move v6, p3

    nop

    nop

    nop

    nop

    nop

    move/from16 v7, p4

    nop

    move/from16 v8, p5

    nop

    nop

    move-object/from16 v9, p6

    nop

    nop

    move/from16 v10, p7

    nop

    invoke-static/range {v1 .. v10}, Landroid/support/v8/renderscript/RenderScript;->ZQnHULxEOsWBIbCZ(Landroid/support/v8/renderscript/RenderScript;JJIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_b
    move-object v11, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nAllocationGenerateMipmaps(J)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->ZkLFrZiJeYVjPDrw(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    invoke-static {p0, v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->ehZFmDRuFwaPtLnW(Landroid/support/v8/renderscript/RenderScript;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public declared-synchronized nAllocationGetByteBuffer(JIII)Ljava/nio/ByteBuffer;
    .locals 8

    goto/32 :goto_7

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    throw p1

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    return-object p1

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->RbqtxrfohmryjeOe(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    move-object v0, p0

    nop

    nop

    nop

    move-wide v3, p1

    nop

    nop

    nop

    nop

    move v5, p3

    nop

    move v6, p4

    nop

    nop

    nop

    nop

    move v7, p5

    nop

    nop

    nop

    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->sWQRLbMlgoCOotsL(Landroid/support/v8/renderscript/RenderScript;JJIII)Ljava/nio/ByteBuffer;

    move-result-object p1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nAllocationGetStride(J)J
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    :goto_6
    throw p1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->PjGfbDbkXYsOYTob(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    invoke-static {p0, v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->btDaaDgOFkxGPCPl(Landroid/support/v8/renderscript/RenderScript;JJ)J

    move-result-wide p1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    return-wide p1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method declared-synchronized nAllocationGetType(J)J
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    return-wide p1

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->ZxrSAJlIMlLysZwM(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->OLGvOlGxoxhwbJMk(Landroid/support/v8/renderscript/RenderScript;JJ)J

    move-result-wide p1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x11

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nAllocationIoReceive(J)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_6
    monitor-enter p0

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->uYiLTlWOoAlTOijH(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    invoke-static {p0, v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->luzpTHPhgdNMyViP(Landroid/support/v8/renderscript/RenderScript;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nAllocationIoSend(J)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x6

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->pdGIydetPqtvDYLC(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    invoke-static {p0, v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->XaNinBKWahAvECbf(Landroid/support/v8/renderscript/RenderScript;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_7
    const v1, 0x9

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public declared-synchronized nAllocationRead(JLjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;IZ)V
    .locals 9

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->IoCYKFYvuDWBafLQ(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    iget v6, p4, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    move-wide v3, p1

    nop

    move-object v5, p3

    nop

    nop

    move v7, p5

    nop

    nop

    move v8, p6

    nop

    nop

    nop

    invoke-static/range {v0 .. v8}, Landroid/support/v8/renderscript/RenderScript;->ktcVCYlUoJLuQMxN(Landroid/support/v8/renderscript/RenderScript;JJLjava/lang/Object;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xe

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public declared-synchronized nAllocationRead1D(JIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V
    .locals 15

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->ynAtPeYkHyPwuinz(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v2, v14, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    move-object/from16 v0, p8

    nop

    nop

    iget v11, v0, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    nop

    nop

    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v4, p1

    nop

    move/from16 v6, p3

    nop

    nop

    nop

    nop

    move/from16 v7, p4

    nop

    nop

    nop

    nop

    nop

    move/from16 v8, p5

    nop

    nop

    move-object/from16 v9, p6

    nop

    nop

    move/from16 v10, p7

    nop

    nop

    move/from16 v12, p9

    nop

    nop

    nop

    nop

    move/from16 v13, p10

    nop

    nop

    invoke-static/range {v1 .. v13}, Landroid/support/v8/renderscript/RenderScript;->HKmdlaiTuCXwKhRc(Landroid/support/v8/renderscript/RenderScript;JJIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object v14, p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V
    .locals 17

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    move-object/from16 v15, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    invoke-static/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->RfeCSMVBNiTCeKWH(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v2, v15, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    move-object/from16 v0, p11

    nop

    nop

    nop

    iget v14, v0, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v4, p1

    nop

    move/from16 v6, p3

    nop

    nop

    nop

    move/from16 v7, p4

    nop

    nop

    nop

    nop

    move/from16 v8, p5

    nop

    nop

    nop

    move/from16 v9, p6

    nop

    move/from16 v10, p7

    nop

    nop

    nop

    nop

    move/from16 v11, p8

    nop

    nop

    nop

    move-object/from16 v12, p9

    nop

    nop

    nop

    nop

    move/from16 v13, p10

    nop

    move/from16 v15, p12

    nop

    nop

    nop

    nop

    move/from16 v16, p13

    nop

    nop

    invoke-static/range {v1 .. v16}, Landroid/support/v8/renderscript/RenderScript;->esTVzBApnkDxGVpr(Landroid/support/v8/renderscript/RenderScript;JJIIIIIILjava/lang/Object;IIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x20

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method declared-synchronized nAllocationResize1D(JI)V
    .locals 6

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->QFCoKrEZwqKwWLdI(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    move-wide v3, p1

    nop

    move v5, p3

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->mxXKeAFpctNRZbaA(Landroid/support/v8/renderscript/RenderScript;JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method declared-synchronized nAllocationResize2D(JII)V
    .locals 7

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->lAuCbrNoyenOiBaA(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    move-wide v3, p1

    nop

    nop

    nop

    nop

    move v5, p3

    nop

    nop

    nop

    move v6, p4

    nop

    nop

    nop

    invoke-static/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->PQmaPsrzHTwOaMtc(Landroid/support/v8/renderscript/RenderScript;JJII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x6

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public declared-synchronized nAllocationSetSurface(JLandroid/view/Surface;)V
    .locals 6

    goto/32 :goto_6

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_8

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xe

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->kyUiiRiIIqgOTwjb(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    move-wide v3, p1

    nop

    nop

    move-object v5, p3

    nop

    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->wYfAqbeeKcrrLBgt(Landroid/support/v8/renderscript/RenderScript;JJLandroid/view/Surface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    const v1, 0xe

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public declared-synchronized nAllocationSyncAll(JI)V
    .locals 6

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->sjqMqXZzdoYrRMyI(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    move-wide v3, p1

    nop

    nop

    nop

    nop

    nop

    move v5, p3

    nop

    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->KXsAInpyQWPXkRET(Landroid/support/v8/renderscript/RenderScript;JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    throw p1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_b
    const v0, 0xd

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nClosureCreate(JJ[J[J[I[J[J)J
    .locals 14

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-wide v0

    nop

    nop

    nop

    :goto_4
    :try_start_0
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    nop

    nop

    nop

    const-string v1, "Failed creating closure."

    nop

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    cmp-long v2, v0, v2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    const v1, 0x16

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->srkqtCcKXXjEZIPm(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v2, v13, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    move-object v1, p0

    nop

    nop

    nop

    nop

    move-wide v4, p1

    nop

    move-wide/from16 v6, p3

    nop

    move-object/from16 v8, p5

    nop

    nop

    nop

    nop

    move-object/from16 v9, p6

    nop

    nop

    nop

    move-object/from16 v10, p7

    nop

    nop

    move-object/from16 v11, p8

    nop

    nop

    nop

    nop

    move-object/from16 v12, p9

    nop

    invoke-static/range {v1 .. v12}, Landroid/support/v8/renderscript/RenderScript;->jkljPkiPKpGNuhvM(Landroid/support/v8/renderscript/RenderScript;JJJ[J[J[I[J[J)J

    move-result-wide v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x18

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    move-object v13, p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nClosureSetArg(JIJI)V
    .locals 9

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    const v0, 0x15

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->DZnjNwopYItQjInW(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    move-object v0, p0

    nop

    nop

    move-wide v3, p1

    nop

    move v5, p3

    nop

    nop

    move-wide v6, p4

    nop

    nop

    nop

    nop

    move v8, p6

    nop

    nop

    nop

    invoke-static/range {v0 .. v8}, Landroid/support/v8/renderscript/RenderScript;->LHeXBeTLblFLVSJr(Landroid/support/v8/renderscript/RenderScript;JJIJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_c
    const v1, 0x1f

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public declared-synchronized nClosureSetGlobal(JJJI)V
    .locals 12

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    move-object v11, p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x6

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->bXuGFGOVrhBkucFG(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v2, v11, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    move-object v1, p0

    nop

    nop

    move-wide v4, p1

    nop

    nop

    move-wide v6, p3

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v8, p5

    nop

    nop

    nop

    nop

    move/from16 v10, p7

    nop

    nop

    nop

    invoke-static/range {v1 .. v10}, Landroid/support/v8/renderscript/RenderScript;->JNNKfaGsMwCMTHci(Landroid/support/v8/renderscript/RenderScript;JJJJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_6
    throw v0

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x18

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop
.end method

.method public declared-synchronized nContextCreate(JIIILjava/lang/String;)J
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    :try_start_0
    invoke-static/range {p0 .. p6}, Landroid/support/v8/renderscript/RenderScript;->NxAMIAJSEKtwrzNR(Landroid/support/v8/renderscript/RenderScript;JIIILjava/lang/String;)J

    move-result-wide p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    nop

    :goto_2
    return-wide p1

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public native nContextDeinitToClient(J)V
.end method

.method public declared-synchronized nContextDestroy()V
    .locals 5

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->ajBzHIkSIWLFBqwb(Landroid/support/v8/renderscript/RenderScript;)V

    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    nop

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->fceMxCaLIGjjGtnm(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->ZALERIRRGpAebZQA(Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    const-wide/16 v3, 0x0

    nop

    iput-wide v3, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->BawfwLSdQjmCXefQ(Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;)V

    invoke-static {p0, v1, v2}, Landroid/support/v8/renderscript/RenderScript;->yyUzLeRqkUjlKcOd(Landroid/support/v8/renderscript/RenderScript;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xf

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nContextDump(I)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->ARHCCsceOYbWhQrL(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    invoke-static {p0, v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->eZQgKPxGmUnfbKSS(Landroid/support/v8/renderscript/RenderScript;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const v1, 0x9

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop
.end method

.method public declared-synchronized nContextFinish()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->NyzAThBqLOSmUQRN(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/RenderScript;->TlrJucKntcdCVCCc(Landroid/support/v8/renderscript/RenderScript;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public native nContextGetErrorMessage(J)Ljava/lang/String;
.end method

.method public native nContextGetUserMessage(J[I)I
.end method

.method public native nContextInitToClient(J)V
.end method

.method public native nContextPeekMessage(J[I)I
.end method

.method public declared-synchronized nContextSendMessage(I[I)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->YnixGDbgWXCbLhZp(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    invoke-static {p0, v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->ZZuFTfbMlfIryOgz(Landroid/support/v8/renderscript/RenderScript;JI[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop
.end method

.method public declared-synchronized nContextSetPriority(I)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->LYUDSXTHmxSZpjLy(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->IPDmJjTwWCcwAKft(Landroid/support/v8/renderscript/RenderScript;JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_6
    throw p1

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public native nDeviceCreate()J
.end method

.method native nDeviceDestroy(J)V
.end method

.method native nDeviceSetConfig(JII)V
.end method

.method public declared-synchronized nElementCreate(JIZI)J
    .locals 8

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-wide p1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xb

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->uLyXiCGkbkEVbpvb(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    move-object v0, p0

    nop

    move-wide v3, p1

    nop

    nop

    nop

    nop

    nop

    move v5, p3

    nop

    nop

    nop

    nop

    nop

    move v6, p4

    nop

    nop

    nop

    nop

    nop

    move v7, p5

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->rkHaGXrehtBChNVH(Landroid/support/v8/renderscript/RenderScript;JJIZI)J

    move-result-wide p1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_c
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public declared-synchronized nElementCreate2([J[Ljava/lang/String;[I)J
    .locals 6

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    throw p1

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->HHxJtjiaXqjrBlLF(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    move-object v0, p0

    nop

    move-object v3, p1

    nop

    nop

    nop

    nop

    nop

    move-object v4, p2

    nop

    move-object v5, p3

    nop

    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->jUUgqmRMzxoTKkfm(Landroid/support/v8/renderscript/RenderScript;J[J[Ljava/lang/String;[I)J

    move-result-wide p1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    return-wide p1

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method declared-synchronized nElementGetNativeData(J[I)V
    .locals 6

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x16

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->EqUwesyyfsHsSGJt(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    move-object v0, p0

    nop

    move-wide v3, p1

    nop

    move-object v5, p3

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->QnqfFYdDcvrSyxeq(Landroid/support/v8/renderscript/RenderScript;JJ[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_8
    throw p1

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method declared-synchronized nElementGetSubElements(J[J[Ljava/lang/String;[I)V
    .locals 8

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->EpiVzhlbPIadJjkV(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    move-wide v3, p1

    nop

    nop

    nop

    move-object v5, p3

    nop

    nop

    nop

    nop

    move-object v6, p4

    nop

    nop

    move-object v7, p5

    nop

    nop

    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->VXgJlBgcvsjbEUFl(Landroid/support/v8/renderscript/RenderScript;JJ[J[Ljava/lang/String;[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop
.end method

.method public declared-synchronized nIncAllocationCreateTyped(JJI)J
    .locals 10

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x20

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_9
    monitor-enter p0

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->zlTYuYhRukahfICw(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    iget-wide v3, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    move-wide v5, p1

    nop

    nop

    nop

    nop

    nop

    move-wide v7, p3

    nop

    nop

    nop

    nop

    move v9, p5

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v9}, Landroid/support/v8/renderscript/RenderScript;->PeNeTjUDzoUHsgzi(Landroid/support/v8/renderscript/RenderScript;JJJJI)J

    move-result-wide p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    return-wide p1

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop
.end method

.method public declared-synchronized nIncContextCreate(JIII)J
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    :try_start_0
    invoke-static/range {p0 .. p5}, Landroid/support/v8/renderscript/RenderScript;->QOhyWWVqyPsonaxq(Landroid/support/v8/renderscript/RenderScript;JIII)J

    move-result-wide p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-wide p1

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop
.end method

.method public declared-synchronized nIncContextDestroy()V
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->hxoqsPJJDWAbbbSZ(Landroid/support/v8/renderscript/RenderScript;)V

    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    nop

    nop

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->vVubrNrPLmUjjAGZ(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->TXvDLIdhetcVKylb(Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    nop

    const-wide/16 v3, 0x0

    nop

    iput-wide v3, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->rDNeRlQwWxSaSErk(Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;)V

    invoke-static {p0, v1, v2}, Landroid/support/v8/renderscript/RenderScript;->ACIwnrGLswUQzrsg(Landroid/support/v8/renderscript/RenderScript;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nIncContextFinish()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    throw v0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter p0

    nop

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->vbuBLWQogJjRWWUA(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/RenderScript;->rUVYwLFNKjDuYmOT(Landroid/support/v8/renderscript/RenderScript;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop
.end method

.method public native nIncDeviceCreate()J
.end method

.method native nIncDeviceDestroy(J)V
.end method

.method public declared-synchronized nIncElementCreate(JIZI)J
    .locals 8

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->FZCBVSDcTRNyJYDf(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    move-wide v3, p1

    nop

    nop

    nop

    nop

    move v5, p3

    nop

    nop

    nop

    move v6, p4

    nop

    nop

    move v7, p5

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->TGzSVhvznKamHTIK(Landroid/support/v8/renderscript/RenderScript;JJIZI)J

    move-result-wide p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-wide p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public native nIncLoadSO(ILjava/lang/String;)Z
.end method

.method public nIncObjDestroy(J)V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->qsSNszteFeNSgSuk(Landroid/support/v8/renderscript/RenderScript;JJ)V

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    cmp-long v2, v0, v2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    const v0, 0x16

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nIncTypeCreate(JIIIZZI)J
    .locals 13

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->bEfsCuUgooKUFQIt(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v2, v12, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    nop

    nop

    move-object v1, p0

    nop

    move-wide v4, p1

    nop

    nop

    nop

    nop

    nop

    move/from16 v6, p3

    nop

    nop

    nop

    move/from16 v7, p4

    nop

    nop

    move/from16 v8, p5

    nop

    nop

    move/from16 v9, p6

    nop

    nop

    move/from16 v10, p7

    nop

    nop

    move/from16 v11, p8

    nop

    invoke-static/range {v1 .. v11}, Landroid/support/v8/renderscript/RenderScript;->pcKRjlOBblmieZtx(Landroid/support/v8/renderscript/RenderScript;JJIIIZZI)J

    move-result-wide v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    return-wide v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    throw v0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    move-object v12, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public declared-synchronized nInvokeClosureCreate(J[B[J[J[I)J
    .locals 9

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->mgtzAjZitEQgGVGn(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    move-wide v3, p1

    nop

    nop

    nop

    move-object v5, p3

    nop

    move-object v6, p4

    nop

    nop

    nop

    nop

    move-object v7, p5

    nop

    nop

    nop

    move-object v8, p6

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v8}, Landroid/support/v8/renderscript/RenderScript;->nTqZupnIixsOmHEb(Landroid/support/v8/renderscript/RenderScript;JJ[B[J[J[I)J

    move-result-wide p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    :goto_3
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    const-wide/16 p3, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_9
    cmp-long p3, p1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    return-wide p1

    nop

    nop

    nop

    :goto_b
    :try_start_1
    new-instance p1, Landroid/support/v8/renderscript/RSRuntimeException;

    nop

    nop

    const-string p2, "Failed creating closure."

    nop

    nop

    nop

    invoke-direct {p1, p2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    :goto_d
    if-nez p3, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    throw p1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public native nLoadIOSO()Z
.end method

.method public native nLoadSO(ZILjava/lang/String;)Z
.end method

.method public nObjDestroy(J)V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x9

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    cmp-long v2, v0, v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->SzAweCPDleHaKIEA(Landroid/support/v8/renderscript/RenderScript;JJ)V

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v2, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_f
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nSamplerCreate(IIIIIF)J
    .locals 9

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const v1, 0x15

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-wide p1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->jtEovHXicwgqPKsm(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    move v3, p1

    nop

    nop

    move v4, p2

    nop

    nop

    nop

    move v5, p3

    nop

    move v6, p4

    nop

    nop

    nop

    nop

    nop

    move v7, p5

    nop

    nop

    move v8, p6

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v8}, Landroid/support/v8/renderscript/RenderScript;->pemglSErnWvjMIjb(Landroid/support/v8/renderscript/RenderScript;JIIIIIF)J

    move-result-wide p1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptBindAllocation(JJIZ)V
    .locals 9

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->ENYNCodWRwqTkdgn(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    nop

    if-eqz p6, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    nop

    :cond_0
    move-wide v1, v0

    nop

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    move-wide v3, p1

    nop

    nop

    nop

    nop

    move-wide v5, p3

    nop

    nop

    nop

    nop

    move v7, p5

    nop

    nop

    nop

    nop

    move v8, p6

    nop

    nop

    invoke-static/range {v0 .. v8}, Landroid/support/v8/renderscript/RenderScript;->sOJmOzLDmNyCqxmp(Landroid/support/v8/renderscript/RenderScript;JJJIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_8
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p1

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    .locals 7

    goto/32 :goto_8

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    const v1, 0x2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x17

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-wide p1

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->sTdjNPsSxDnlzaJd(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    move-object v0, p0

    nop

    nop

    move-object v3, p1

    nop

    move-object v4, p2

    nop

    nop

    nop

    move-object v5, p3

    nop

    move v6, p4

    nop

    nop

    nop

    invoke-static/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->qNDAzZYMnQDbqwTU(Landroid/support/v8/renderscript/RenderScript;JLjava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide p1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptFieldIDCreate(JIZ)J
    .locals 7

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-wide p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->OcRfWotihbLIjJHV(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    if-eqz p4, :cond_1

    nop

    nop

    nop

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    :cond_1
    move-wide v1, v0

    nop

    nop

    move-object v0, p0

    nop

    move-wide v3, p1

    nop

    nop

    nop

    move v5, p3

    nop

    nop

    move v6, p4

    nop

    invoke-static/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->VbQenzppyOqGYOlH(Landroid/support/v8/renderscript/RenderScript;JJIZ)J

    move-result-wide p1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptForEach(JIJJ[BZ)V
    .locals 16

    goto/32 :goto_9

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    iget-wide v2, v15, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    iget-wide v4, v15, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v6, p1

    nop

    nop

    nop

    nop

    nop

    move/from16 v8, p3

    nop

    nop

    nop

    nop

    move-wide/from16 v9, p4

    nop

    nop

    move-wide/from16 v11, p6

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v13, p8

    nop

    nop

    nop

    nop

    move/from16 v14, p9

    nop

    nop

    nop

    nop

    invoke-static/range {v1 .. v14}, Landroid/support/v8/renderscript/RenderScript;->BOBcMFChIicKChis(Landroid/support/v8/renderscript/RenderScript;JJJIJJ[BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_5
    monitor-enter p0

    nop

    :try_start_1
    invoke-static/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->YxIwcQDCeJJvAIGK(Landroid/support/v8/renderscript/RenderScript;)V

    if-nez p8, :cond_0

    nop

    iget-wide v2, v15, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    iget-wide v4, v15, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    move-wide/from16 v6, p1

    nop

    nop

    nop

    nop

    nop

    move/from16 v8, p3

    nop

    nop

    nop

    move-wide/from16 v9, p4

    nop

    move-wide/from16 v11, p6

    nop

    nop

    nop

    nop

    nop

    move/from16 v13, p9

    nop

    nop

    nop

    invoke-static/range {v1 .. v13}, Landroid/support/v8/renderscript/RenderScript;->uByCSpsqckcQyFbD(Landroid/support/v8/renderscript/RenderScript;JJJIJJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    const v0, 0x3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object/from16 v15, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptForEach(JI[JJ[B[I)V
    .locals 13

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, v12, Landroid/support/v8/renderscript/RenderScript;->mEnableMultiInput:Z

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->ioAVbOiiRFAYvTgk(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v2, v12, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    move-object v1, p0

    nop

    nop

    move-wide v4, p1

    nop

    nop

    move/from16 v6, p3

    nop

    nop

    nop

    nop

    move-object/from16 v7, p4

    nop

    move-wide/from16 v8, p5

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v10, p7

    nop

    move-object/from16 v11, p8

    nop

    nop

    invoke-static/range {v1 .. v11}, Landroid/support/v8/renderscript/RenderScript;->ekuYNFWpIGFkEVwq(Landroid/support/v8/renderscript/RenderScript;JJI[JJ[B[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :cond_0
    :try_start_1
    const-string v0, "RenderScript_jni"

    nop

    const-string v1, "Multi-input kernels are not supported, please change targetSdkVersion to >= 23"

    nop

    nop

    nop

    invoke-static {v0, v1}, Landroid/support/v8/renderscript/RenderScript;->uvJHkhktTrUBBNoL(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    nop

    nop

    const-string v1, "Multi-input kernels are not supported before API 23)"

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    move-object v12, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public declared-synchronized nScriptForEachClipped(JIJJ[BIIIIIIZ)V
    .locals 21

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    move-object/from16 v15, p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3
    move-wide/from16 v11, p6

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    move-object/from16 v15, p0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    move-wide/from16 v6, p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->SbJfzIskpqpQiuKo(Landroid/support/v8/renderscript/RenderScript;)V

    if-nez p8, :cond_0

    nop

    iget-wide v2, v15, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    iget-wide v4, v15, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move/from16 v18, p14

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :goto_b
    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move/from16 v19, p15

    nop

    nop

    :try_start_2
    invoke-static/range {v1 .. v19}, Landroid/support/v8/renderscript/RenderScript;->rIlxMToHLDITCMux(Landroid/support/v8/renderscript/RenderScript;JJJIJJIIIIIIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    move/from16 v16, p12

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move/from16 v8, p3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    throw v0

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-wide/from16 v9, p4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move/from16 v13, p9

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    move/from16 v14, p10

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_b

    nop

    nop

    :cond_0
    :try_start_3
    iget-wide v2, v15, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    iget-wide v4, v15, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    move-object/from16 v1, p0

    nop

    move-wide/from16 v6, p1

    nop

    move/from16 v8, p3

    nop

    nop

    move-wide/from16 v9, p4

    nop

    nop

    nop

    move-wide/from16 v11, p6

    nop

    nop

    nop

    nop

    move-object/from16 v13, p8

    nop

    nop

    nop

    nop

    move/from16 v14, p9

    nop

    move/from16 v15, p10

    nop

    nop

    nop

    move/from16 v16, p11

    nop

    nop

    nop

    move/from16 v17, p12

    nop

    nop

    nop

    move/from16 v18, p13

    nop

    nop

    nop

    nop

    nop

    move/from16 v19, p14

    nop

    move/from16 v20, p15

    nop

    invoke-static/range {v1 .. v20}, Landroid/support/v8/renderscript/RenderScript;->EbwLkHOmJVAVZqcC(Landroid/support/v8/renderscript/RenderScript;JJJIJJ[BIIIIIIZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_15
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_17
    monitor-exit p0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    move/from16 v15, p11

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1a
    move/from16 v17, p13

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_10

    nop

    :goto_1d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1e
    move-object/from16 v15, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1f
    monitor-exit p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptGroup2Create(Ljava/lang/String;Ljava/lang/String;[J)J
    .locals 6

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-wide p1

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1b

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    :goto_6
    monitor-enter p0

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->SVrWEpHMtYgYgzYj(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    move-object v0, p0

    nop

    nop

    move-object v3, p1

    nop

    nop

    move-object v4, p2

    nop

    nop

    nop

    move-object v5, p3

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->GfkOQhmLyXMgZuLn(Landroid/support/v8/renderscript/RenderScript;JLjava/lang/String;Ljava/lang/String;[J)J

    move-result-wide p1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_b
    throw p1

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptGroup2Execute(J)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x13

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    throw p1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->GJDrxwiIMJnIRVEn(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    invoke-static {p0, v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->cJWTbFvwbNuQGMoD(Landroid/support/v8/renderscript/RenderScript;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptGroupCreate([J[J[J[J[J)J
    .locals 8

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->efNQilpTQjgSNFkd(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    move-object v0, p0

    nop

    move-object v3, p1

    nop

    nop

    nop

    nop

    nop

    move-object v4, p2

    nop

    move-object v5, p3

    nop

    move-object v6, p4

    nop

    move-object v7, p5

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->OlscQXrHewZzksLr(Landroid/support/v8/renderscript/RenderScript;J[J[J[J[J[J)J

    move-result-wide p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    return-wide p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public declared-synchronized nScriptGroupExecute(J)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->YraMvQucnzgOnUdb(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    invoke-static {p0, v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->aiqwcWzEnGerNEGp(Landroid/support/v8/renderscript/RenderScript;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptGroupSetInput(JJJ)V
    .locals 9

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->UaRqdWQxsQkaDjeU(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    move-wide v3, p1

    nop

    nop

    nop

    move-wide v5, p3

    nop

    nop

    move-wide v7, p5

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v8}, Landroid/support/v8/renderscript/RenderScript;->awCnGdLPdiaJNuxw(Landroid/support/v8/renderscript/RenderScript;JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xd

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop
.end method

.method public declared-synchronized nScriptGroupSetOutput(JJJ)V
    .locals 9

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->pVWiuhTTcgzAurkg(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    move-wide v3, p1

    nop

    nop

    nop

    move-wide v5, p3

    nop

    move-wide v7, p5

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v8}, Landroid/support/v8/renderscript/RenderScript;->okdfNJRNvFQgqYGh(Landroid/support/v8/renderscript/RenderScript;JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xc

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    goto/32 :goto_1

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptIntrinsicBLAS_BNNM(JIIIJIJIJIIZ)V
    .locals 22

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object/from16 v14, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_c
    monitor-enter p0

    nop

    :try_start_1
    invoke-static/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->mwrvsrBVJQoPvrhb(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v2, v14, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    iget-wide v4, v14, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v6, p1

    nop

    nop

    move/from16 v8, p3

    nop

    nop

    nop

    nop

    move/from16 v9, p4

    nop

    nop

    nop

    nop

    nop

    move/from16 v10, p5

    nop

    move-wide/from16 v11, p6

    nop

    nop

    nop

    nop

    nop

    move/from16 v13, p8

    nop

    nop

    nop

    move-wide/from16 v14, p9

    nop

    move/from16 v16, p11

    nop

    move-wide/from16 v17, p12

    nop

    nop

    nop

    nop

    move/from16 v19, p14

    nop

    nop

    nop

    move/from16 v20, p15

    nop

    nop

    nop

    move/from16 v21, p16

    nop

    nop

    nop

    invoke-static/range {v1 .. v21}, Landroid/support/v8/renderscript/RenderScript;->pBJyvuIAxCntlDzl(Landroid/support/v8/renderscript/RenderScript;JJJIIIJIJIJIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V
    .locals 32

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_2
    move-object/from16 v15, p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    monitor-enter p0

    nop

    :try_start_1
    invoke-static/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->WVGhuXrKbLdWxZmd(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v2, v15, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    iget-wide v4, v15, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    move-object/from16 v1, p0

    nop

    nop

    move-wide/from16 v6, p1

    nop

    nop

    nop

    nop

    move/from16 v8, p3

    nop

    move/from16 v9, p4

    nop

    move/from16 v10, p5

    nop

    nop

    nop

    move/from16 v11, p6

    nop

    nop

    move/from16 v12, p7

    nop

    nop

    nop

    nop

    move/from16 v13, p8

    nop

    nop

    nop

    move/from16 v14, p9

    nop

    nop

    move/from16 v15, p10

    nop

    nop

    nop

    move/from16 v16, p11

    nop

    move/from16 v17, p12

    nop

    move/from16 v18, p13

    nop

    nop

    nop

    nop

    move-wide/from16 v19, p14

    nop

    nop

    move-wide/from16 v21, p16

    nop

    nop

    move/from16 v23, p18

    nop

    nop

    nop

    move/from16 v24, p19

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v25, p20

    nop

    move/from16 v27, p22

    nop

    nop

    nop

    nop

    move/from16 v28, p23

    nop

    nop

    nop

    nop

    move/from16 v29, p24

    nop

    nop

    nop

    nop

    nop

    move/from16 v30, p25

    nop

    nop

    nop

    move/from16 v31, p26

    nop

    invoke-static/range {v1 .. v31}, Landroid/support/v8/renderscript/RenderScript;->gObztnckjdpYhsas(Landroid/support/v8/renderscript/RenderScript;JJJIIIIIIIIIFFJJFFJIIIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V
    .locals 32

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    invoke-static/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->SEFmKWXhrcuNzgXm(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v2, v15, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    nop

    iget-wide v4, v15, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    nop

    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    move-wide/from16 v6, p1

    nop

    move/from16 v8, p3

    nop

    nop

    nop

    nop

    nop

    move/from16 v9, p4

    nop

    move/from16 v10, p5

    nop

    move/from16 v11, p6

    nop

    move/from16 v12, p7

    nop

    nop

    nop

    nop

    nop

    move/from16 v13, p8

    nop

    nop

    move/from16 v14, p9

    nop

    nop

    nop

    move/from16 v15, p10

    nop

    move/from16 v16, p11

    nop

    move-wide/from16 v17, p12

    nop

    nop

    nop

    nop

    move-wide/from16 v19, p14

    nop

    move-wide/from16 v21, p16

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v23, p18

    nop

    move-wide/from16 v25, p20

    nop

    move/from16 v27, p22

    nop

    nop

    nop

    move/from16 v28, p23

    nop

    move/from16 v29, p24

    nop

    nop

    nop

    nop

    nop

    move/from16 v30, p25

    nop

    nop

    nop

    nop

    nop

    move/from16 v31, p26

    nop

    nop

    nop

    invoke-static/range {v1 .. v31}, Landroid/support/v8/renderscript/RenderScript;->ahGbwZhycKwgtXvI(Landroid/support/v8/renderscript/RenderScript;JJJIIIIIIIIIDJJDJIIIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    const v1, 0x1b

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object/from16 v15, p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public declared-synchronized nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V
    .locals 30

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object/from16 v15, p0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->lRsiMAFsYzLAdhFy(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v2, v15, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    nop

    iget-wide v4, v15, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    nop

    move-object/from16 v1, p0

    nop

    nop

    nop

    move-wide/from16 v6, p1

    nop

    nop

    move/from16 v8, p3

    nop

    nop

    nop

    nop

    move/from16 v9, p4

    nop

    move/from16 v10, p5

    nop

    move/from16 v11, p6

    nop

    nop

    move/from16 v12, p7

    nop

    nop

    move/from16 v13, p8

    nop

    nop

    nop

    nop

    move/from16 v14, p9

    nop

    move/from16 v15, p10

    nop

    nop

    move/from16 v16, p11

    nop

    nop

    nop

    move/from16 v17, p12

    nop

    nop

    nop

    move-wide/from16 v18, p13

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v20, p15

    nop

    nop

    nop

    nop

    move/from16 v22, p17

    nop

    nop

    move-wide/from16 v23, p18

    nop

    nop

    nop

    nop

    move/from16 v25, p20

    nop

    nop

    nop

    nop

    nop

    move/from16 v26, p21

    nop

    nop

    nop

    nop

    nop

    move/from16 v27, p22

    nop

    nop

    nop

    nop

    move/from16 v28, p23

    nop

    nop

    nop

    move/from16 v29, p24

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v1 .. v29}, Landroid/support/v8/renderscript/RenderScript;->HhVEgakRIvVNIDhy(Landroid/support/v8/renderscript/RenderScript;JJJIIIIIIIIIFJJFJIIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_d
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V
    .locals 36

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    const v0, 0x7

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object/from16 v15, p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw v0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-enter p0

    nop

    nop

    :try_start_1
    invoke-static/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->ZwwQKnkmGYsBSBge(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v2, v15, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    iget-wide v4, v15, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v6, p1

    nop

    nop

    move/from16 v8, p3

    nop

    move/from16 v9, p4

    nop

    nop

    nop

    nop

    nop

    move/from16 v10, p5

    nop

    nop

    move/from16 v11, p6

    nop

    move/from16 v12, p7

    nop

    nop

    nop

    nop

    nop

    move/from16 v13, p8

    nop

    nop

    nop

    nop

    move/from16 v14, p9

    nop

    nop

    nop

    move/from16 v15, p10

    nop

    nop

    nop

    move/from16 v16, p11

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v17, p12

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v19, p14

    nop

    nop

    nop

    nop

    move-wide/from16 v21, p16

    nop

    nop

    nop

    nop

    move-wide/from16 v23, p18

    nop

    nop

    move-wide/from16 v25, p20

    nop

    move-wide/from16 v27, p22

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v29, p24

    nop

    move/from16 v31, p26

    nop

    nop

    nop

    nop

    nop

    move/from16 v32, p27

    nop

    nop

    move/from16 v33, p28

    nop

    move/from16 v34, p29

    nop

    nop

    move/from16 v35, p30

    nop

    nop

    invoke-static/range {v1 .. v35}, Landroid/support/v8/renderscript/RenderScript;->vsWksvifzSihhtKh(Landroid/support/v8/renderscript/RenderScript;JJJIIIIIIIIIDDJJDDJIIIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptIntrinsicCreate(IJZ)J
    .locals 8

    goto/32 :goto_f

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->nOGEyyAEncCduqmn(Landroid/support/v8/renderscript/RenderScript;)V

    if-eqz p4, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-boolean p4, p0, Landroid/support/v8/renderscript/RenderScript;->mIncLoaded:Z

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p4, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    :try_start_1
    const-string p4, "RSSupport"

    nop

    nop

    nop

    nop

    invoke-static {p4}, Landroid/support/v8/renderscript/RenderScript;->fTgShPsePPkZOdmY(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p4, p0, Landroid/support/v8/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p4}, Landroid/support/v8/renderscript/RenderScript;->dyagYXXMszhsgYJV(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    nop

    nop

    nop

    nop

    const-string v0, "/libRSSupport.so"

    nop

    nop

    invoke-static {p4, v0}, Landroid/support/v8/renderscript/RenderScript;->SOREXZQpMBDvieyv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    nop

    nop

    nop

    nop

    const/16 v0, 0x17

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, v0, p4}, Landroid/support/v8/renderscript/RenderScript;->UkRVXXkeZeuvKsZH(Landroid/support/v8/renderscript/RenderScript;ILjava/lang/String;)Z

    move-result p4

    nop

    nop

    nop

    nop

    nop

    if-eqz p4, :cond_1

    nop

    const/4 p4, 0x1

    nop

    nop

    nop

    nop

    iput-boolean p4, p0, Landroid/support/v8/renderscript/RenderScript;->mIncLoaded:Z

    nop

    nop

    goto :goto_3

    nop

    :cond_1
    new-instance p1, Landroid/support/v8/renderscript/RSRuntimeException;

    nop

    nop

    const-string p2, "Error loading libRSSupport library for Incremental Intrinsic Support"

    nop

    invoke-direct {p1, p2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    const-string p2, "Error loading RS Compat library for Incremental Intrinsic Support: "

    nop

    nop

    invoke-static {p1}, Landroid/support/v8/renderscript/RenderScript;->nHvWrWuSfeDCNEqv(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Landroid/support/v8/renderscript/RenderScript;->SXFehbXMlYQdvfTs(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    invoke-static {p2, p3}, Landroid/support/v8/renderscript/RenderScript;->QszebNzssvGyCmoq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    const-string p3, "RenderScript_jni"

    nop

    invoke-static {p3, p2}, Landroid/support/v8/renderscript/RenderScript;->FoBcQkhjGWclpkhm(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Landroid/support/v8/renderscript/RSRuntimeException;

    nop

    nop

    const-string p3, "Error loading RS Compat library for Incremental Intrinsic Support: "

    nop

    invoke-static {p1}, Landroid/support/v8/renderscript/RenderScript;->uNCLZtjHKZXCBNjD(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Landroid/support/v8/renderscript/RenderScript;->zgIKmkJARTIuUjso(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-static {p3, p1}, Landroid/support/v8/renderscript/RenderScript;->GWrCcGDYNBhsHtaz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p2, p1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :goto_3
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    cmp-long p4, v0, v2

    nop

    nop

    nop

    nop

    nop

    if-nez p4, :cond_2

    nop

    nop

    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->bIgobeYQvcJcEfTo(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v2, p0

    nop

    nop

    nop

    nop

    invoke-static/range {v2 .. v7}, Landroid/support/v8/renderscript/RenderScript;->SwChvWCfDHINMkTJ(Landroid/support/v8/renderscript/RenderScript;JIII)J

    move-result-wide v0

    nop

    nop

    iput-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    :cond_2
    move-wide v1, v0

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    move v3, p1

    nop

    nop

    nop

    move-wide v4, p2

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->uGddOUOuHMZPdenD(Landroid/support/v8/renderscript/RenderScript;JIJZ)J

    move-result-wide p1

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-wide p1

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_3
    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    move v3, p1

    nop

    move-wide v4, p2

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->arLEhhBVDodapWcQ(Landroid/support/v8/renderscript/RenderScript;JIJZ)J

    move-result-wide p1

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_10

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    :goto_7
    return-wide p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p1

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    const v0, 0x8

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptInvoke(JIZ)V
    .locals 7

    goto/32 :goto_1

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->MMAarAVKuUeEwqLC(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    if-eqz p4, :cond_0

    nop

    nop

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    :cond_0
    move-wide v1, v0

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    move-wide v3, p1

    nop

    nop

    move v5, p3

    nop

    nop

    move v6, p4

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->DCcMQMncJCcWFTcI(Landroid/support/v8/renderscript/RenderScript;JJIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xa

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptInvokeIDCreate(JI)J
    .locals 6

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->BHpWqVKeFXNhrgRg(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    move-wide v3, p1

    nop

    nop

    nop

    nop

    move v5, p3

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->eNBrlEvdAHhhUWDf(Landroid/support/v8/renderscript/RenderScript;JJI)J

    move-result-wide p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    const v1, 0xc

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_b
    const v0, 0xd

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    return-wide p1

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptInvokeV(JI[BZ)V
    .locals 8

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->eazJFJGGtfqUmIRH(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    if-eqz p5, :cond_0

    nop

    nop

    nop

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    nop

    nop

    :cond_0
    move-wide v1, v0

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    move-wide v3, p1

    nop

    nop

    nop

    move v5, p3

    nop

    nop

    nop

    nop

    nop

    move-object v6, p4

    nop

    nop

    move v7, p5

    nop

    nop

    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->sYGsPcCobEOUiGFf(Landroid/support/v8/renderscript/RenderScript;JJI[BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptKernelIDCreate(JIIZ)J
    .locals 8

    goto/32 :goto_4

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->rbhkGZoMdAFKpryy(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    if-eqz p5, :cond_0

    nop

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    :cond_0
    move-wide v1, v0

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    move-wide v3, p1

    nop

    nop

    nop

    nop

    nop

    move v5, p3

    nop

    move v6, p4

    nop

    nop

    nop

    move v7, p5

    nop

    nop

    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->apupANwdXImsMQuU(Landroid/support/v8/renderscript/RenderScript;JJIIZ)J

    move-result-wide p1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    return-wide p1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop
.end method

.method public declared-synchronized nScriptReduce(JI[JJ[I)V
    .locals 12

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v11, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->YOukkNeGgxHAGYWG(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v2, v11, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    nop

    move-object v1, p0

    nop

    move-wide v4, p1

    nop

    nop

    nop

    move v6, p3

    nop

    nop

    nop

    move-object/from16 v7, p4

    nop

    move-wide/from16 v8, p5

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v10, p7

    nop

    nop

    nop

    invoke-static/range {v1 .. v10}, Landroid/support/v8/renderscript/RenderScript;->yhoJKHjcWMPXHFaN(Landroid/support/v8/renderscript/RenderScript;JJI[JJ[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public declared-synchronized nScriptSetTimeZone(J[BZ)V
    .locals 7

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    const v1, 0x16

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->TOMzlXpjCwUMFMcH(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    if-eqz p4, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    nop

    :cond_0
    move-wide v1, v0

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    move-wide v3, p1

    nop

    move-object v5, p3

    nop

    nop

    nop

    nop

    nop

    move v6, p4

    nop

    invoke-static/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->dqGemcwtEGXasQny(Landroid/support/v8/renderscript/RenderScript;JJ[BZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_6
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptSetVarD(JIDZ)V
    .locals 9

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->nrCxtGpzTygEVYQM(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    if-eqz p6, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    nop

    nop

    :cond_0
    move-wide v1, v0

    nop

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    move-wide v3, p1

    nop

    nop

    nop

    nop

    nop

    move v5, p3

    nop

    nop

    nop

    nop

    move-wide v6, p4

    nop

    nop

    nop

    move v8, p6

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v8}, Landroid/support/v8/renderscript/RenderScript;->kGkhgtTPHELRwpYU(Landroid/support/v8/renderscript/RenderScript;JJIDZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_8
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptSetVarF(JIFZ)V
    .locals 8

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    const v1, 0x5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->pXtxlLoYxudxyjFd(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    if-eqz p5, :cond_0

    nop

    nop

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    :cond_0
    move-wide v1, v0

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    move-wide v3, p1

    nop

    nop

    move v5, p3

    nop

    move v6, p4

    nop

    nop

    nop

    move v7, p5

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->TPCRiKUfoaLvirsA(Landroid/support/v8/renderscript/RenderScript;JJIFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_a
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    const v0, 0xa

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public declared-synchronized nScriptSetVarI(JIIZ)V
    .locals 8

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    :goto_3
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->BAureEqIXNNYWZZa(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    if-eqz p5, :cond_0

    nop

    nop

    nop

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    :cond_0
    move-wide v1, v0

    nop

    move-object v0, p0

    nop

    nop

    move-wide v3, p1

    nop

    nop

    move v5, p3

    nop

    nop

    nop

    nop

    nop

    move v6, p4

    nop

    nop

    nop

    nop

    nop

    move v7, p5

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->oxJyKTiBKrLYLgap(Landroid/support/v8/renderscript/RenderScript;JJIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    throw p1

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    const v1, 0x1d

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptSetVarJ(JIJZ)V
    .locals 9

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    const v0, 0x1e

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->SdJoNQMvlETukerD(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    if-eqz p6, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    nop

    :cond_1
    move-wide v1, v0

    nop

    move-object v0, p0

    nop

    nop

    nop

    move-wide v3, p1

    nop

    nop

    nop

    move v5, p3

    nop

    nop

    nop

    nop

    nop

    move-wide v6, p4

    nop

    nop

    nop

    move v8, p6

    nop

    nop

    nop

    invoke-static/range {v0 .. v8}, Landroid/support/v8/renderscript/RenderScript;->GVhjVJgpULnbzAYn(Landroid/support/v8/renderscript/RenderScript;JJIJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    throw p1

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptSetVarObj(JIJZ)V
    .locals 9

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    throw p1

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->oWHjOirpYVoutLfT(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    if-eqz p6, :cond_1

    nop

    nop

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    nop

    nop

    :cond_1
    move-wide v1, v0

    nop

    move-object v0, p0

    nop

    move-wide v3, p1

    nop

    move v5, p3

    nop

    nop

    nop

    nop

    nop

    move-wide v6, p4

    nop

    nop

    nop

    nop

    move v8, p6

    nop

    nop

    nop

    invoke-static/range {v0 .. v8}, Landroid/support/v8/renderscript/RenderScript;->yvQUBhYzuzGQoaAA(Landroid/support/v8/renderscript/RenderScript;JJIJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptSetVarV(JI[BZ)V
    .locals 8

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x5

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->nbzUczqhoqVghYuz(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    if-eqz p5, :cond_0

    nop

    nop

    nop

    nop

    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    nop

    nop

    nop

    :cond_0
    move-wide v1, v0

    nop

    nop

    move-object v0, p0

    nop

    nop

    move-wide v3, p1

    nop

    nop

    nop

    nop

    move v5, p3

    nop

    move-object v6, p4

    nop

    move v7, p5

    nop

    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->vZZreWNIlUqMIfgo(Landroid/support/v8/renderscript/RenderScript;JJI[BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xe

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public declared-synchronized nScriptSetVarVE(JI[BJ[IZ)V
    .locals 13

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const v1, 0x1e

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->oImpMLbFtPVUfIby(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v0, v12, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    nop

    if-eqz p8, :cond_0

    nop

    nop

    nop

    iget-wide v0, v12, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    nop

    :cond_0
    move-wide v2, v0

    nop

    move-object v1, p0

    nop

    nop

    nop

    move-wide v4, p1

    nop

    nop

    nop

    move/from16 v6, p3

    nop

    nop

    move-object/from16 v7, p4

    nop

    move-wide/from16 v8, p5

    nop

    nop

    nop

    move-object/from16 v10, p7

    nop

    nop

    move/from16 v11, p8

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v1 .. v11}, Landroid/support/v8/renderscript/RenderScript;->yeUfHnpZQtGjeEdh(Landroid/support/v8/renderscript/RenderScript;JJI[BJ[IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    move-object v12, p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public declared-synchronized nTypeCreate(JIIIZZI)J
    .locals 13

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->XCGuChcnnQmfeCth(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v2, v12, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    move-object v1, p0

    nop

    nop

    nop

    move-wide v4, p1

    nop

    nop

    nop

    nop

    nop

    move/from16 v6, p3

    nop

    nop

    nop

    nop

    move/from16 v7, p4

    nop

    nop

    nop

    move/from16 v8, p5

    nop

    nop

    nop

    nop

    move/from16 v9, p6

    nop

    nop

    nop

    nop

    nop

    move/from16 v10, p7

    nop

    nop

    move/from16 v11, p8

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v1 .. v11}, Landroid/support/v8/renderscript/RenderScript;->jTOwcPcNNOGZgsBO(Landroid/support/v8/renderscript/RenderScript;JJIIIZZI)J

    move-result-wide v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object v12, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    :goto_a
    return-wide v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_d
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method declared-synchronized nTypeGetNativeData(J[J)V
    .locals 6

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->nryexHjQFYEalSlS(Landroid/support/v8/renderscript/RenderScript;)V

    iget-wide v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    move-wide v3, p1

    nop

    move-object v5, p3

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->pJwRRlGzQXoGZYxI(Landroid/support/v8/renderscript/RenderScript;JJ[J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_c
    const v0, 0x19

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public native rsnAllocationCopyFromBitmap(JJLandroid/graphics/Bitmap;)V
.end method

.method public native rsnAllocationCopyToBitmap(JJLandroid/graphics/Bitmap;)V
.end method

.method public native rsnAllocationCreateBitmapBackedAllocation(JJILandroid/graphics/Bitmap;I)J
.end method

.method public native rsnAllocationCreateBitmapRef(JJLandroid/graphics/Bitmap;)J
.end method

.method public native rsnAllocationCreateFromAssetStream(JIII)J
.end method

.method public native rsnAllocationCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
.end method

.method public native rsnAllocationCreateTyped(JJIIJ)J
.end method

.method public native rsnAllocationCubeCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
.end method

.method public native rsnAllocationData1D(JJIIILjava/lang/Object;IIIZ)V
.end method

.method public native rsnAllocationData2D(JJIIIIIIJIIII)V
.end method

.method public native rsnAllocationData2D(JJIIIIIILjava/lang/Object;IIIZ)V
.end method

.method public native rsnAllocationData2D(JJIIIILandroid/graphics/Bitmap;)V
.end method

.method public native rsnAllocationData3D(JJIIIIIIIJIIII)V
.end method

.method public native rsnAllocationData3D(JJIIIIIIILjava/lang/Object;IIIZ)V
.end method

.method public native rsnAllocationElementData1D(JJIII[BI)V
.end method

.method public native rsnAllocationGenerateMipmaps(JJ)V
.end method

.method public native rsnAllocationGetByteBuffer(JJIII)Ljava/nio/ByteBuffer;
.end method

.method public native rsnAllocationGetStride(JJ)J
.end method

.method public native rsnAllocationGetType(JJ)J
.end method

.method public native rsnAllocationIoReceive(JJ)V
.end method

.method public native rsnAllocationIoSend(JJ)V
.end method

.method public native rsnAllocationRead(JJLjava/lang/Object;IIZ)V
.end method

.method public native rsnAllocationRead1D(JJIIILjava/lang/Object;IIIZ)V
.end method

.method public native rsnAllocationRead2D(JJIIIIIILjava/lang/Object;IIIZ)V
.end method

.method public native rsnAllocationResize1D(JJI)V
.end method

.method public native rsnAllocationResize2D(JJII)V
.end method

.method public native rsnAllocationSetSurface(JJLandroid/view/Surface;)V
.end method

.method public native rsnAllocationSyncAll(JJI)V
.end method

.method public native rsnClosureCreate(JJJ[J[J[I[J[J)J
.end method

.method public native rsnClosureSetArg(JJIJI)V
.end method

.method public native rsnClosureSetGlobal(JJJJI)V
.end method

.method public native rsnContextCreate(JIIILjava/lang/String;)J
.end method

.method public native rsnContextDestroy(J)V
.end method

.method public native rsnContextDump(JI)V
.end method

.method public native rsnContextFinish(J)V
.end method

.method public native rsnContextSendMessage(JI[I)V
.end method

.method public native rsnContextSetPriority(JI)V
.end method

.method public native rsnElementCreate(JJIZI)J
.end method

.method public native rsnElementCreate2(J[J[Ljava/lang/String;[I)J
.end method

.method public native rsnElementGetNativeData(JJ[I)V
.end method

.method public native rsnElementGetSubElements(JJ[J[Ljava/lang/String;[I)V
.end method

.method public native rsnIncAllocationCreateTyped(JJJJI)J
.end method

.method public native rsnIncContextCreate(JIII)J
.end method

.method public native rsnIncContextDestroy(J)V
.end method

.method public native rsnIncContextFinish(J)V
.end method

.method public native rsnIncElementCreate(JJIZI)J
.end method

.method public native rsnIncObjDestroy(JJ)V
.end method

.method public native rsnIncTypeCreate(JJIIIZZI)J
.end method

.method public native rsnInvokeClosureCreate(JJ[B[J[J[I)J
.end method

.method public native rsnObjDestroy(JJ)V
.end method

.method public native rsnSamplerCreate(JIIIIIF)J
.end method

.method public native rsnScriptBindAllocation(JJJIZ)V
.end method

.method public native rsnScriptCCreate(JLjava/lang/String;Ljava/lang/String;[BI)J
.end method

.method public native rsnScriptFieldIDCreate(JJIZ)J
.end method

.method public native rsnScriptForEach(JJI[JJ[B[I)V
.end method

.method public native rsnScriptForEach(JJJIJJZ)V
.end method

.method public native rsnScriptForEach(JJJIJJ[BZ)V
.end method

.method public native rsnScriptForEachClipped(JJJIJJIIIIIIZ)V
.end method

.method public native rsnScriptForEachClipped(JJJIJJ[BIIIIIIZ)V
.end method

.method public native rsnScriptGroup2Create(JLjava/lang/String;Ljava/lang/String;[J)J
.end method

.method public native rsnScriptGroup2Execute(JJ)V
.end method

.method public native rsnScriptGroupCreate(J[J[J[J[J[J)J
.end method

.method public native rsnScriptGroupExecute(JJ)V
.end method

.method public native rsnScriptGroupSetInput(JJJJ)V
.end method

.method public native rsnScriptGroupSetOutput(JJJJ)V
.end method

.method public native rsnScriptIntrinsicBLAS_BNNM(JJJIIIJIJIJIIZ)V
.end method

.method public native rsnScriptIntrinsicBLAS_Complex(JJJIIIIIIIIIFFJJFFJIIIIZ)V
.end method

.method public native rsnScriptIntrinsicBLAS_Double(JJJIIIIIIIIIDJJDJIIIIZ)V
.end method

.method public native rsnScriptIntrinsicBLAS_Single(JJJIIIIIIIIIFJJFJIIIIZ)V
.end method

.method public native rsnScriptIntrinsicBLAS_Z(JJJIIIIIIIIIDDJJDDJIIIIZ)V
.end method

.method public native rsnScriptIntrinsicCreate(JIJZ)J
.end method

.method public native rsnScriptInvoke(JJIZ)V
.end method

.method public native rsnScriptInvokeIDCreate(JJI)J
.end method

.method public native rsnScriptInvokeV(JJI[BZ)V
.end method

.method public native rsnScriptKernelIDCreate(JJIIZ)J
.end method

.method public native rsnScriptReduce(JJI[JJ[I)V
.end method

.method public native rsnScriptSetTimeZone(JJ[BZ)V
.end method

.method public native rsnScriptSetVarD(JJIDZ)V
.end method

.method public native rsnScriptSetVarF(JJIFZ)V
.end method

.method public native rsnScriptSetVarI(JJIIZ)V
.end method

.method public native rsnScriptSetVarJ(JJIJZ)V
.end method

.method public native rsnScriptSetVarObj(JJIJZ)V
.end method

.method public native rsnScriptSetVarV(JJI[BZ)V
.end method

.method public native rsnScriptSetVarVE(JJI[BJ[IZ)V
.end method

.method public native rsnTypeCreate(JJIIIZZI)J
.end method

.method public native rsnTypeGetNativeData(JJ[J)V
.end method

.method public safeID(Landroid/support/v8/renderscript/BaseObj;)J
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, p0}, Landroid/support/v8/renderscript/RenderScript;->RXLFIAjixnVULvDS(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-wide p0

    nop

    nop

    nop

    nop

    :goto_3
    const-wide/16 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    return-wide p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop
.end method

.method public sendMessage(I[I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->YpYXcHluCYFFgtCX(Landroid/support/v8/renderscript/RenderScript;I[I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public setErrorHandler(Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Landroid/support/v8/renderscript/RenderScript;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public setMessageHandler(Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setPriority(Landroid/support/v8/renderscript/RenderScript$Priority;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->frogmEUrJODhmZAh(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget p1, p1, Landroid/support/v8/renderscript/RenderScript$Priority;->mID:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/RenderScript;->NXoicmHMTrAakLxl(Landroid/support/v8/renderscript/RenderScript;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public usingIO()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-boolean p0, Landroid/support/v8/renderscript/RenderScript;->useIOlib:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public validate()V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Landroid/support/v8/renderscript/RSInvalidStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    :goto_7
    const v1, 0x5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "Calling RS with no Context active."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    cmp-long p0, v0, v2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_12
    invoke-direct {p0, v0}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public validateObject(Landroid/support/v8/renderscript/BaseObj;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p1, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    const-string p1, "Attempting to use an object across contexts."

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    if-eq p1, p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method
