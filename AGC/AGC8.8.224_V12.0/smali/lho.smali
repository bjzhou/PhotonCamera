.class public Llho;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:Lofy;

.field public static volatile c:Ljava/lang/Boolean;

.field private static d:Ljava/lang/Thread;

.field private static volatile e:Landroid/os/Handler;

.field private static f:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/io/InputStream;Lcom/google/android/libraries/camera/exif/ExifInterface;Lkph;)J
    .locals 0

    if-nez p1, :cond_0

    invoke-static {p0, p2}, Llho;->w(Ljava/io/InputStream;Lkph;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0, p1, p2}, Llho;->B([BLcom/google/android/libraries/camera/exif/ExifInterface;Lkph;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static B([BLcom/google/android/libraries/camera/exif/ExifInterface;Lkph;)J
    .locals 3

    if-nez p1, :cond_0

    invoke-static {p0, p2}, Llho;->x([BLkph;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-interface {p2}, Lkph;->e()Ljava/io/FileOutputStream;

    move-result-object p2

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->m(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object p1, p1, Lcom/google/android/libraries/camera/exif/ExifInterface;->bA:Ljava/lang/String;

    invoke-static {p1}, Lkrm;->c(Ljava/lang/String;)Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lber;

    invoke-static {p0, p1}, Lkrm;->d([BLber;)Lmqq;

    move-result-object p1

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, p1, Lmqq;->a:Ljava/lang/Object;

    check-cast v2, Lber;

    iget-object p1, p1, Lmqq;->b:Ljava/lang/Object;

    check-cast p1, Lber;

    invoke-static {p0, v1, v2, p1}, Lkrm;->m([BLjava/io/OutputStream;Lber;Lber;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    array-length p0, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long p0, p0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    return-wide p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-static {p0, p1}, Llho;->C(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-static {p0, p1}, Llho;->C(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static synthetic C(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 6

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method

.method public static D(ILkaf;)J
    .locals 5

    iget v0, p1, Lkaf;->a:I

    iget p1, p1, Lkaf;->b:I

    invoke-static {p0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    if-gtz v1, :cond_0

    const/16 v2, 0x101

    if-ne p0, v2, :cond_0

    const/16 v1, 0x10

    const/16 p0, 0x101

    :cond_0
    const-wide/16 v2, 0x8

    if-gtz v1, :cond_1

    sparse-switch p0, :sswitch_data_0

    sparse-switch p0, :sswitch_data_1

    goto :goto_0

    :sswitch_0
    mul-int/lit8 v0, v0, 0x18

    int-to-long p0, p1

    int-to-long v0, v0

    mul-long v0, v0, p0

    div-long/2addr v0, v2

    const-wide/16 p0, 0x4

    div-long/2addr v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    if-gtz v1, :cond_2

    const/16 v4, 0x22

    if-ne p0, v4, :cond_2

    const/16 p0, 0x23

    invoke-static {p0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    :cond_2
    const/4 p0, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int v0, v0, p0

    int-to-long p0, p1

    int-to-long v0, v0

    mul-long v0, v0, p0

    div-long/2addr v0, v2

    :goto_1
    return-wide v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x48454946 -> :sswitch_0
        0x69656963 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x21 -> :sswitch_0
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method public static E(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    const-string v0, "PRIVATE"

    sparse-switch p0, :sswitch_data_1

    sparse-switch p0, :sswitch_data_2

    const-string v1, "YUV_420_888"

    packed-switch p0, :pswitch_data_0

    sparse-switch p0, :sswitch_data_3

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    const-string p0, "DEPTH_JPEG"

    return-object p0

    :sswitch_1
    const-string p0, "HEIC"

    return-object p0

    :sswitch_2
    const-string p0, "Y16"

    return-object p0

    :sswitch_3
    const-string p0, "Y8"

    return-object p0

    :sswitch_4
    const-string p0, "DEPTH16"

    return-object p0

    :sswitch_5
    const-string p0, "RAW_DEPTH"

    return-object p0

    :sswitch_6
    const-string p0, "POINT_CLOUD"

    return-object p0

    :sswitch_7
    const-string p0, "FLEX_RGBA_8888"

    return-object p0

    :sswitch_8
    const-string p0, "FLEX_RGB_888"

    return-object p0

    :sswitch_9
    const-string p0, "YUV_444_888"

    return-object p0

    :sswitch_a
    const-string p0, "YUV_422_888"

    return-object p0

    :sswitch_b
    const-string p0, "RAW12"

    return-object p0

    :sswitch_c
    return-object v0

    :sswitch_d
    const-string p0, "RAW10"

    return-object p0

    :sswitch_e
    const-string p0, "RAW_SENSOR"

    return-object p0

    :pswitch_0
    return-object v1

    :sswitch_f
    const-string p0, "YV12"

    return-object p0

    :sswitch_10
    const-string p0, "JPEG"

    return-object p0

    :sswitch_11
    return-object v1

    :sswitch_12
    return-object v0

    :sswitch_13
    const-string p0, "BLOB"

    return-object p0

    :sswitch_14
    const-string p0, "YUY2"

    return-object p0

    :sswitch_15
    const-string p0, "NV21"

    return-object p0

    :sswitch_16
    const-string p0, "NV16"

    return-object p0

    :sswitch_17
    const-string p0, "RGB_565"

    return-object p0

    :sswitch_18
    const-string p0, "UNKNOWN"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x20203859 -> :sswitch_3
        0x20363159 -> :sswitch_2
        0x48454946 -> :sswitch_1
        0x69656963 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_c
        0x26 -> :sswitch_b
        0x27 -> :sswitch_a
        0x28 -> :sswitch_9
        0x29 -> :sswitch_8
        0x2a -> :sswitch_7
        0x101 -> :sswitch_6
        0x1002 -> :sswitch_5
        0x44363159 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x20 -> :sswitch_e
        0x25 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_18
        0x4 -> :sswitch_17
        0x10 -> :sswitch_16
        0x11 -> :sswitch_15
        0x14 -> :sswitch_14
        0x21 -> :sswitch_13
        0x22 -> :sswitch_12
        0x23 -> :sswitch_11
        0x100 -> :sswitch_10
        0x32315659 -> :sswitch_f
    .end sparse-switch
.end method

.method public static F(Ljava/util/List;Ljava/util/List;)Logo;
    .locals 1

    new-instance v0, Logo;

    invoke-direct {v0, p0, p1}, Logo;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static G(Loiw;Ljava/util/List;)V
    .locals 0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static H(Loiw;Ljava/util/List;)V
    .locals 0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static I(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " must be set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static J(I)I
    .locals 1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_1

    int-to-float p0, p0

    const/high16 v0, 0x3f400000    # 0.75f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_1
    const p0, 0x7fffffff

    return p0
.end method

.method public static K(I)Ljava/util/LinkedHashMap;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p0}, Llho;->J(I)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method public static L(I)Ljava/util/List;
    .locals 1

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static M(Ljava/util/LinkedHashMap;)Logm;
    .locals 1

    new-instance v0, Logm;

    invoke-direct {v0, p0}, Logm;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static N(Ljava/lang/Object;Loiw;Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static O(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p0, Loge;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    instance-of v0, p0, Logg;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    invoke-interface {v5}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dagger.hilt.android.EarlyEntryPoint"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    xor-int/2addr v0, v2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Interface, %s, annotated with @EarlyEntryPoint should be called with EarlyEntryPoints.get() rather than EntryPoints.get()"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Logf;

    if-eqz v0, :cond_5

    check-cast p0, Logf;

    invoke-interface {p0}, Logf;->a()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Llho;->O(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    aput-object p0, v0, v1

    const-class p0, Loge;

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-class v1, Logf;

    aput-object v1, v0, p0

    const-string p0, "Given component holder %s does not implement %s or %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public static P(Landroid/content/Context;)Landroid/content/Context;
    .locals 3

    sget-object v0, Llho;->f:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->getVrCoreClientApiVersion(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    :try_start_0
    const-string v1, "com.google.vr.vrcore"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    sput-object p0, Llho;->f:Landroid/content/Context;

    sput v0, Llho;->a:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p0, Lofb;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lofb;-><init>(I)V

    throw p0

    :cond_0
    new-instance p0, Lofb;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lofb;-><init>(I)V

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Llho;->f:Landroid/content/Context;

    return-object p0
.end method

.method public static Q(Ljava/lang/ClassLoader;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "com.google.vr.vrcore.library.VrCreator"

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to call the default constructor of com.google.vr.vrcore.library.VrCreator"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to instantiate the remote class com.google.vr.vrcore.library.VrCreator"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to find dynamic class com.google.vr.vrcore.library.VrCreator"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized R(Landroid/content/Context;)Z
    .locals 4

    const-class v0, Llho;

    monitor-enter v0

    :try_start_0
    sget-object v1, Llho;->c:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x40

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/content/pm/Signature;

    sget-object v2, Lofa;->c:Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lofa;->d:Landroid/content/pm/Signature;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lofa;->b:Landroid/content/pm/Signature;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Lofa;->a(Landroid/content/pm/PackageInfo;[Landroid/content/pm/Signature;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Llho;->c:Ljava/lang/Boolean;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to find self package info"

    invoke-direct {v1, v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    sget-object p0, Llho;->c:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static S(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static T(Landroid/content/Context;)Loeo;
    .locals 6

    const-string v0, "com.google.vr.vrcore"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.google.vr.vrcore.settings"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.content.action.VR_SETTINGS_PROVIDER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string v5, "com.google."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v1, Lmaf;

    invoke-direct {v1, v3, v2}, Lmaf;-><init>(Landroid/content/ContentProviderClient;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    new-instance p0, Loea;

    iget-object v0, v1, Lmaf;->a:Ljava/lang/Object;

    iget-object v1, v1, Lmaf;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    check-cast v0, Landroid/content/ContentProviderClient;

    invoke-direct {p0, v0, v1}, Loea;-><init>(Landroid/content/ContentProviderClient;Ljava/lang/String;)V

    return-object p0

    :cond_7
    new-instance v0, Loel;

    invoke-direct {v0, p0}, Loel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static U(Loew;)F
    .locals 1

    if-eqz p0, :cond_0

    iget v0, p0, Loew;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget p0, p0, Loew;->d:F

    return p0

    :cond_0
    const p0, 0x3b449ba6    # 0.003f

    return p0
.end method

.method public static V(Landroid/view/Display;)Landroid/util/DisplayMetrics;
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge p0, v1, :cond_0

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_0
    iget p0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v1, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput p0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    return-object v0
.end method

.method public static W(Landroid/content/Context;)Landroid/view/Display;
    .locals 1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lkvq;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    const-string v0, "com.google.android.libraries.lens.lenslite.dynamicloading.PackageVersion"

    invoke-virtual {p0, v0}, Lkvq;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Lkvr; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v0, "com.google.android.libraries.lens.lenslite.dynamicloading.ApiVersion"

    invoke-virtual {p0, v0}, Lkvq;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/RuntimeException;)V
    .locals 2

    const-string v0, "Preconditions"

    const-string v1, "Precondition broken. Build is not strict; continuing..."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static c(Ljava/lang/Long;Ljava/lang/Long;Landroid/os/health/HealthStats;Loyb;Llhj;)Llhy;
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    new-instance v9, Llhy;

    iget-object v2, v1, Llhj;->a:Ljava/lang/Object;

    sget-object v3, Loyl;->an:Loyl;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    const/16 v4, 0x2711

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    cmp-long v10, v4, v7

    if-eqz v10, :cond_1

    iget-object v10, v3, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_0
    iget-object v10, v3, Lnwn;->b:Lnws;

    check-cast v10, Loyl;

    iget v11, v10, Loyl;->a:I

    or-int/2addr v11, v6

    iput v11, v10, Loyl;->a:I

    iput-wide v4, v10, Loyl;->c:J

    :cond_1
    const/16 v4, 0x2712

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    const/4 v10, 0x2

    cmp-long v11, v4, v7

    if-eqz v11, :cond_3

    iget-object v11, v3, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_2
    iget-object v11, v3, Lnwn;->b:Lnws;

    check-cast v11, Loyl;

    iget v12, v11, Loyl;->a:I

    or-int/2addr v12, v10

    iput v12, v11, Loyl;->a:I

    iput-wide v4, v11, Loyl;->d:J

    :cond_3
    const/16 v4, 0x2713

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v11, v4, v7

    if-eqz v11, :cond_5

    iget-object v11, v3, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_4
    iget-object v11, v3, Lnwn;->b:Lnws;

    check-cast v11, Loyl;

    iget v12, v11, Loyl;->a:I

    or-int/lit8 v12, v12, 0x4

    iput v12, v11, Loyl;->a:I

    iput-wide v4, v11, Loyl;->e:J

    :cond_5
    const/16 v4, 0x2714

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v11, v4, v7

    if-eqz v11, :cond_7

    iget-object v11, v3, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_6
    iget-object v11, v3, Lnwn;->b:Lnws;

    check-cast v11, Loyl;

    iget v12, v11, Loyl;->a:I

    or-int/lit8 v12, v12, 0x8

    iput v12, v11, Loyl;->a:I

    iput-wide v4, v11, Loyl;->f:J

    :cond_7
    const/16 v4, 0x2715

    invoke-static {v0, v4}, Lljr;->d(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnwn;->ai(Ljava/lang/Iterable;)V

    const/16 v4, 0x2716

    invoke-static {v0, v4}, Lljr;->d(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnwn;->aj(Ljava/lang/Iterable;)V

    const/16 v4, 0x2717

    invoke-static {v0, v4}, Lljr;->d(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnwn;->ak(Ljava/lang/Iterable;)V

    const/16 v4, 0x2718

    invoke-static {v0, v4}, Lljr;->d(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnwn;->ah(Ljava/lang/Iterable;)V

    const/16 v4, 0x2719

    invoke-static {v0, v4}, Lljr;->d(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnwn;->ag(Ljava/lang/Iterable;)V

    const/16 v4, 0x271a

    invoke-static {v0, v4}, Lljr;->d(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnwn;->ac(Ljava/lang/Iterable;)V

    const/16 v4, 0x271b

    invoke-static {v0, v4}, Lljr;->g(Landroid/os/health/HealthStats;I)Loyk;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v5, v3, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_8
    iget-object v5, v3, Lnwn;->b:Lnws;

    check-cast v5, Loyl;

    iput-object v4, v5, Loyl;->m:Loyk;

    iget v4, v5, Loyl;->a:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v5, Loyl;->a:I

    :cond_9
    const/16 v4, 0x271c

    invoke-static {v0, v4}, Lljr;->d(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnwn;->ad(Ljava/lang/Iterable;)V

    sget-object v4, Llhu;->a:Llhu;

    const/16 v5, 0x271e

    invoke-static {v0, v5}, Lljr;->e(Landroid/os/health/HealthStats;I)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Llhv;->d(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnwn;->af(Ljava/lang/Iterable;)V

    sget-object v4, Llht;->a:Llht;

    const/16 v5, 0x271f

    invoke-static {v0, v5}, Lljr;->e(Landroid/os/health/HealthStats;I)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Llhv;->d(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnwn;->ae(Ljava/lang/Iterable;)V

    const/16 v4, 0x2720

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v11, v4, v7

    if-eqz v11, :cond_b

    iget-object v11, v3, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_a
    iget-object v11, v3, Lnwn;->b:Lnws;

    check-cast v11, Loyl;

    iget v12, v11, Loyl;->a:I

    or-int/lit8 v12, v12, 0x20

    iput v12, v11, Loyl;->a:I

    iput-wide v4, v11, Loyl;->r:J

    :cond_b
    const/16 v4, 0x2721

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v11, v4, v7

    if-eqz v11, :cond_d

    iget-object v11, v3, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_c

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_c
    iget-object v11, v3, Lnwn;->b:Lnws;

    check-cast v11, Loyl;

    iget v12, v11, Loyl;->a:I

    or-int/lit8 v12, v12, 0x40

    iput v12, v11, Loyl;->a:I

    iput-wide v4, v11, Loyl;->s:J

    :cond_d
    const/16 v4, 0x2722

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v11, v4, v7

    if-eqz v11, :cond_f

    iget-object v11, v3, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_e

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_e
    iget-object v11, v3, Lnwn;->b:Lnws;

    check-cast v11, Loyl;

    iget v12, v11, Loyl;->a:I

    or-int/lit16 v12, v12, 0x80

    iput v12, v11, Loyl;->a:I

    iput-wide v4, v11, Loyl;->t:J

    :cond_f
    const/16 v4, 0x2723

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v11, v4, v7

    if-eqz v11, :cond_11

    iget-object v11, v3, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_10

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_10
    iget-object v11, v3, Lnwn;->b:Lnws;

    check-cast v11, Loyl;

    iget v12, v11, Loyl;->a:I

    or-int/lit16 v12, v12, 0x100

    iput v12, v11, Loyl;->a:I

    iput-wide v4, v11, Loyl;->u:J

    :cond_11
    const/16 v4, 0x2724

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v11, v4, v7

    if-eqz v11, :cond_13

    iget-object v11, v3, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_12

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_12
    iget-object v11, v3, Lnwn;->b:Lnws;

    check-cast v11, Loyl;

    iget v12, v11, Loyl;->a:I

    or-int/lit16 v12, v12, 0x200

    iput v12, v11, Loyl;->a:I

    iput-wide v4, v11, Loyl;->v:J

    :cond_13
    const/16 v4, 0x2725

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v11, v4, v7

    if-eqz v11, :cond_15

    iget-object v11, v3, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_14

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_14
    iget-object v11, v3, Lnwn;->b:Lnws;

    check-cast v11, Loyl;

    iget v12, v11, Loyl;->a:I

    or-int/lit16 v12, v12, 0x400

    iput v12, v11, Loyl;->a:I

    iput-wide v4, v11, Loyl;->w:J

    :cond_15
    const/16 v4, 0x2726

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v11, v4, v7

    if-eqz v11, :cond_17

    iget-object v11, v3, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_16

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_16
    iget-object v11, v3, Lnwn;->b:Lnws;

    check-cast v11, Loyl;

    iget v12, v11, Loyl;->a:I

    or-int/lit16 v12, v12, 0x800

    iput v12, v11, Loyl;->a:I

    iput-wide v4, v11, Loyl;->x:J

    :cond_17
    const/16 v4, 0x2727

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v11, v4, v7

    if-eqz v11, :cond_19

    iget-object v11, v3, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_18

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_18
    iget-object v11, v3, Lnwn;->b:Lnws;

    check-cast v11, Loyl;

    iget v12, v11, Loyl;->a:I

    or-int/lit16 v12, v12, 0x1000

    iput v12, v11, Loyl;->a:I

    iput-wide v4, v11, Loyl;->y:J

    :cond_19
    const/16 v4, 0x2728

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v11, v4, v7

    if-eqz v11, :cond_1b

    iget-object v11, v3, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_1a

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_1a
    iget-object v11, v3, Lnwn;->b:Lnws;

    check-cast v11, Loyl;

    iget v12, v11, Loyl;->a:I

    or-int/lit16 v12, v12, 0x2000

    iput v12, v11, Loyl;->a:I

    iput-wide v4, v11, Loyl;->z:J

    :cond_1b
    const/16 v4, 0x2729

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v11, v4, v7

    if-eqz v11, :cond_1d

    iget-object v11, v3, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_1c

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_1c
    iget-object v11, v3, Lnwn;->b:Lnws;

    check-cast v11, Loyl;

    iget v12, v11, Loyl;->a:I

    or-int/lit16 v12, v12, 0x4000

    iput v12, v11, Loyl;->a:I

    iput-wide v4, v11, Loyl;->A:J

    :cond_1d
    const/16 v4, 0x272a

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    const v11, 0x8000

    cmp-long v12, v4, v7

    if-eqz v12, :cond_1f

    iget-object v12, v3, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_1e

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_1e
    iget-object v12, v3, Lnwn;->b:Lnws;

    check-cast v12, Loyl;

    iget v13, v12, Loyl;->a:I

    or-int/2addr v13, v11

    iput v13, v12, Loyl;->a:I

    iput-wide v4, v12, Loyl;->B:J

    :cond_1f
    const/16 v4, 0x272b

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    const/high16 v12, 0x10000

    cmp-long v13, v4, v7

    if-eqz v13, :cond_21

    iget-object v13, v3, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_20

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_20
    iget-object v13, v3, Lnwn;->b:Lnws;

    check-cast v13, Loyl;

    iget v14, v13, Loyl;->a:I

    or-int/2addr v14, v12

    iput v14, v13, Loyl;->a:I

    iput-wide v4, v13, Loyl;->C:J

    :cond_21
    const/16 v4, 0x272c

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    const/high16 v13, 0x20000

    cmp-long v14, v4, v7

    if-eqz v14, :cond_23

    iget-object v14, v3, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_22

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_22
    iget-object v14, v3, Lnwn;->b:Lnws;

    check-cast v14, Loyl;

    iget v15, v14, Loyl;->a:I

    or-int/2addr v15, v13

    iput v15, v14, Loyl;->a:I

    iput-wide v4, v14, Loyl;->D:J

    :cond_23
    const/16 v4, 0x272d

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    const/high16 v14, 0x40000

    cmp-long v15, v4, v7

    if-eqz v15, :cond_25

    iget-object v15, v3, Lnwn;->b:Lnws;

    invoke-virtual {v15}, Lnws;->ac()Z

    move-result v15

    if-nez v15, :cond_24

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_24
    iget-object v15, v3, Lnwn;->b:Lnws;

    check-cast v15, Loyl;

    iget v13, v15, Loyl;->a:I

    or-int/2addr v13, v14

    iput v13, v15, Loyl;->a:I

    iput-wide v4, v15, Loyl;->E:J

    :cond_25
    const/16 v4, 0x272e

    invoke-static {v0, v4}, Lljr;->g(Landroid/os/health/HealthStats;I)Loyk;

    move-result-object v4

    const/high16 v5, 0x80000

    if-eqz v4, :cond_27

    iget-object v13, v3, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_26

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_26
    iget-object v13, v3, Lnwn;->b:Lnws;

    check-cast v13, Loyl;

    iput-object v4, v13, Loyl;->F:Loyk;

    iget v4, v13, Loyl;->a:I

    or-int/2addr v4, v5

    iput v4, v13, Loyl;->a:I

    :cond_27
    const/16 v4, 0x272f

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v14

    cmp-long v4, v14, v7

    if-eqz v4, :cond_29

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_28
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget v13, v4, Loyl;->a:I

    const/high16 v16, 0x100000

    or-int v13, v13, v16

    iput v13, v4, Loyl;->a:I

    iput-wide v14, v4, Loyl;->G:J

    :cond_29
    const/16 v4, 0x2730

    invoke-static {v0, v4}, Lljr;->g(Landroid/os/health/HealthStats;I)Loyk;

    move-result-object v4

    if-eqz v4, :cond_2b

    iget-object v13, v3, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_2a

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_2a
    iget-object v13, v3, Lnwn;->b:Lnws;

    check-cast v13, Loyl;

    iput-object v4, v13, Loyl;->H:Loyk;

    iget v4, v13, Loyl;->a:I

    const/high16 v14, 0x200000

    or-int/2addr v4, v14

    iput v4, v13, Loyl;->a:I

    :cond_2b
    const/16 v4, 0x2731

    invoke-static {v0, v4}, Lljr;->g(Landroid/os/health/HealthStats;I)Loyk;

    move-result-object v4

    if-eqz v4, :cond_2d

    iget-object v13, v3, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_2c

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_2c
    iget-object v13, v3, Lnwn;->b:Lnws;

    check-cast v13, Loyl;

    iput-object v4, v13, Loyl;->I:Loyk;

    iget v4, v13, Loyl;->a:I

    const/high16 v14, 0x400000

    or-int/2addr v4, v14

    iput v4, v13, Loyl;->a:I

    :cond_2d
    const/16 v4, 0x2732

    invoke-static {v0, v4}, Lljr;->g(Landroid/os/health/HealthStats;I)Loyk;

    move-result-object v4

    if-eqz v4, :cond_2f

    iget-object v13, v3, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_2e

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_2e
    iget-object v13, v3, Lnwn;->b:Lnws;

    check-cast v13, Loyl;

    iput-object v4, v13, Loyl;->J:Loyk;

    iget v4, v13, Loyl;->a:I

    const/high16 v14, 0x800000

    or-int/2addr v4, v14

    iput v4, v13, Loyl;->a:I

    :cond_2f
    const/16 v4, 0x2733

    invoke-static {v0, v4}, Lljr;->g(Landroid/os/health/HealthStats;I)Loyk;

    move-result-object v4

    if-eqz v4, :cond_31

    iget-object v13, v3, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_30

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_30
    iget-object v13, v3, Lnwn;->b:Lnws;

    check-cast v13, Loyl;

    iput-object v4, v13, Loyl;->K:Loyk;

    iget v4, v13, Loyl;->a:I

    const/high16 v14, 0x1000000

    or-int/2addr v4, v14

    iput v4, v13, Loyl;->a:I

    :cond_31
    const/16 v4, 0x2734

    invoke-static {v0, v4}, Lljr;->g(Landroid/os/health/HealthStats;I)Loyk;

    move-result-object v4

    if-eqz v4, :cond_33

    iget-object v13, v3, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_32

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_32
    iget-object v13, v3, Lnwn;->b:Lnws;

    check-cast v13, Loyl;

    iput-object v4, v13, Loyl;->L:Loyk;

    iget v4, v13, Loyl;->a:I

    const/high16 v14, 0x2000000

    or-int/2addr v4, v14

    iput v4, v13, Loyl;->a:I

    :cond_33
    const/16 v4, 0x2735

    invoke-static {v0, v4}, Lljr;->g(Landroid/os/health/HealthStats;I)Loyk;

    move-result-object v4

    if-eqz v4, :cond_35

    iget-object v13, v3, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_34

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_34
    iget-object v13, v3, Lnwn;->b:Lnws;

    check-cast v13, Loyl;

    iput-object v4, v13, Loyl;->M:Loyk;

    iget v4, v13, Loyl;->a:I

    const/high16 v14, 0x4000000

    or-int/2addr v4, v14

    iput v4, v13, Loyl;->a:I

    :cond_35
    const/16 v4, 0x2736

    invoke-static {v0, v4}, Lljr;->g(Landroid/os/health/HealthStats;I)Loyk;

    move-result-object v4

    if-eqz v4, :cond_37

    iget-object v13, v3, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_36

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_36
    iget-object v13, v3, Lnwn;->b:Lnws;

    check-cast v13, Loyl;

    iput-object v4, v13, Loyl;->N:Loyk;

    iget v4, v13, Loyl;->a:I

    const/high16 v14, 0x8000000

    or-int/2addr v4, v14

    iput v4, v13, Loyl;->a:I

    :cond_37
    const/16 v4, 0x2737

    invoke-static {v0, v4}, Lljr;->g(Landroid/os/health/HealthStats;I)Loyk;

    move-result-object v4

    if-eqz v4, :cond_39

    iget-object v13, v3, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_38

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_38
    iget-object v13, v3, Lnwn;->b:Lnws;

    check-cast v13, Loyl;

    iput-object v4, v13, Loyl;->O:Loyk;

    iget v4, v13, Loyl;->a:I

    const/high16 v14, 0x10000000

    or-int/2addr v4, v14

    iput v4, v13, Loyl;->a:I

    :cond_39
    const/16 v4, 0x2738

    invoke-static {v0, v4}, Lljr;->g(Landroid/os/health/HealthStats;I)Loyk;

    move-result-object v4

    if-eqz v4, :cond_3b

    iget-object v13, v3, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_3a

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_3a
    iget-object v13, v3, Lnwn;->b:Lnws;

    check-cast v13, Loyl;

    iput-object v4, v13, Loyl;->P:Loyk;

    iget v4, v13, Loyl;->a:I

    const/high16 v14, 0x20000000

    or-int/2addr v4, v14

    iput v4, v13, Loyl;->a:I

    :cond_3b
    const/16 v4, 0x2739

    invoke-static {v0, v4}, Lljr;->g(Landroid/os/health/HealthStats;I)Loyk;

    move-result-object v4

    if-eqz v4, :cond_3d

    iget-object v13, v3, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_3c

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_3c
    iget-object v13, v3, Lnwn;->b:Lnws;

    check-cast v13, Loyl;

    iput-object v4, v13, Loyl;->Q:Loyk;

    iget v4, v13, Loyl;->a:I

    const/high16 v14, 0x40000000    # 2.0f

    or-int/2addr v4, v14

    iput v4, v13, Loyl;->a:I

    :cond_3d
    const/16 v4, 0x273a

    invoke-static {v0, v4}, Lljr;->g(Landroid/os/health/HealthStats;I)Loyk;

    move-result-object v4

    if-eqz v4, :cond_3f

    iget-object v13, v3, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_3e

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_3e
    iget-object v13, v3, Lnwn;->b:Lnws;

    check-cast v13, Loyl;

    iput-object v4, v13, Loyl;->R:Loyk;

    iget v4, v13, Loyl;->a:I

    const/high16 v14, -0x80000000

    or-int/2addr v4, v14

    iput v4, v13, Loyl;->a:I

    :cond_3f
    const/16 v4, 0x273b

    invoke-static {v0, v4}, Lljr;->g(Landroid/os/health/HealthStats;I)Loyk;

    move-result-object v4

    if-eqz v4, :cond_41

    iget-object v13, v3, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_40

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_40
    iget-object v13, v3, Lnwn;->b:Lnws;

    check-cast v13, Loyl;

    iput-object v4, v13, Loyl;->S:Loyk;

    iget v4, v13, Loyl;->b:I

    or-int/2addr v4, v6

    iput v4, v13, Loyl;->b:I

    :cond_41
    const/16 v4, 0x273c

    invoke-static {v0, v4}, Lljr;->g(Landroid/os/health/HealthStats;I)Loyk;

    move-result-object v4

    if-eqz v4, :cond_43

    iget-object v13, v3, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_42

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_42
    iget-object v13, v3, Lnwn;->b:Lnws;

    check-cast v13, Loyl;

    iput-object v4, v13, Loyl;->T:Loyk;

    iget v4, v13, Loyl;->b:I

    or-int/2addr v4, v10

    iput v4, v13, Loyl;->b:I

    :cond_43
    const/16 v4, 0x273d

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v13

    cmp-long v4, v13, v7

    if-eqz v4, :cond_45

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_44

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_44
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget v15, v4, Loyl;->b:I

    or-int/lit8 v15, v15, 0x4

    iput v15, v4, Loyl;->b:I

    iput-wide v13, v4, Loyl;->U:J

    :cond_45
    const/16 v4, 0x273e

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v13

    cmp-long v4, v13, v7

    if-eqz v4, :cond_47

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_46

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_46
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget v15, v4, Loyl;->b:I

    or-int/lit8 v15, v15, 0x8

    iput v15, v4, Loyl;->b:I

    iput-wide v13, v4, Loyl;->V:J

    :cond_47
    const/16 v4, 0x273f

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v13

    cmp-long v4, v13, v7

    if-eqz v4, :cond_49

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_48

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_48
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget v15, v4, Loyl;->b:I

    or-int/lit8 v15, v15, 0x10

    iput v15, v4, Loyl;->b:I

    iput-wide v13, v4, Loyl;->W:J

    :cond_49
    const/16 v4, 0x2740

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v13

    cmp-long v4, v13, v7

    if-eqz v4, :cond_4b

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_4a

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_4a
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget v15, v4, Loyl;->b:I

    or-int/lit8 v15, v15, 0x20

    iput v15, v4, Loyl;->b:I

    iput-wide v13, v4, Loyl;->X:J

    :cond_4b
    const/16 v4, 0x2741

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v13

    cmp-long v4, v13, v7

    if-eqz v4, :cond_4d

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_4c

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_4c
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget v15, v4, Loyl;->b:I

    or-int/lit8 v15, v15, 0x40

    iput v15, v4, Loyl;->b:I

    iput-wide v13, v4, Loyl;->Y:J

    :cond_4d
    const/16 v4, 0x2742

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v13

    cmp-long v4, v13, v7

    if-eqz v4, :cond_4f

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_4e

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_4e
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget v15, v4, Loyl;->b:I

    or-int/lit16 v15, v15, 0x80

    iput v15, v4, Loyl;->b:I

    iput-wide v13, v4, Loyl;->Z:J

    :cond_4f
    const/16 v4, 0x2743

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v13

    cmp-long v4, v13, v7

    if-eqz v4, :cond_51

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_50

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_50
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget v15, v4, Loyl;->b:I

    or-int/lit16 v15, v15, 0x100

    iput v15, v4, Loyl;->b:I

    iput-wide v13, v4, Loyl;->aa:J

    :cond_51
    const/16 v4, 0x2744

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v13

    cmp-long v4, v13, v7

    if-eqz v4, :cond_53

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_52

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_52
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget v15, v4, Loyl;->b:I

    or-int/lit16 v15, v15, 0x200

    iput v15, v4, Loyl;->b:I

    iput-wide v13, v4, Loyl;->ab:J

    :cond_53
    const/16 v4, 0x2745

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v13

    cmp-long v4, v13, v7

    if-eqz v4, :cond_55

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_54

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_54
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget v15, v4, Loyl;->b:I

    or-int/lit16 v15, v15, 0x400

    iput v15, v4, Loyl;->b:I

    iput-wide v13, v4, Loyl;->ac:J

    :cond_55
    const/16 v4, 0x2746

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v13

    cmp-long v4, v13, v7

    if-eqz v4, :cond_57

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_56

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_56
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget v15, v4, Loyl;->b:I

    or-int/lit16 v15, v15, 0x800

    iput v15, v4, Loyl;->b:I

    iput-wide v13, v4, Loyl;->ad:J

    :cond_57
    const/16 v4, 0x2747

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v13

    cmp-long v4, v13, v7

    if-eqz v4, :cond_59

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_58

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_58
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget v15, v4, Loyl;->b:I

    or-int/lit16 v15, v15, 0x1000

    iput v15, v4, Loyl;->b:I

    iput-wide v13, v4, Loyl;->ae:J

    :cond_59
    const/16 v4, 0x2748

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v13

    cmp-long v4, v13, v7

    if-eqz v4, :cond_5b

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_5a

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_5a
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget v15, v4, Loyl;->b:I

    or-int/lit16 v15, v15, 0x2000

    iput v15, v4, Loyl;->b:I

    iput-wide v13, v4, Loyl;->af:J

    :cond_5b
    const/16 v4, 0x2749

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v13

    cmp-long v4, v13, v7

    if-eqz v4, :cond_5d

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_5c

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_5c
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget v15, v4, Loyl;->b:I

    or-int/lit16 v15, v15, 0x4000

    iput v15, v4, Loyl;->b:I

    iput-wide v13, v4, Loyl;->ag:J

    :cond_5d
    const/16 v4, 0x274a

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v13

    cmp-long v4, v13, v7

    if-eqz v4, :cond_5f

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_5e

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_5e
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget v15, v4, Loyl;->b:I

    or-int/2addr v11, v15

    iput v11, v4, Loyl;->b:I

    iput-wide v13, v4, Loyl;->ah:J

    :cond_5f
    const/16 v4, 0x274b

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v13

    cmp-long v4, v13, v7

    if-eqz v4, :cond_61

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_60

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_60
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget v11, v4, Loyl;->b:I

    or-int/2addr v11, v12

    iput v11, v4, Loyl;->b:I

    iput-wide v13, v4, Loyl;->ai:J

    :cond_61
    const/16 v4, 0x274d

    invoke-static {v0, v4}, Lljr;->g(Landroid/os/health/HealthStats;I)Loyk;

    move-result-object v4

    if-eqz v4, :cond_63

    iget-object v11, v3, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_62

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_62
    iget-object v11, v3, Lnwn;->b:Lnws;

    check-cast v11, Loyl;

    iput-object v4, v11, Loyl;->aj:Loyk;

    iget v4, v11, Loyl;->b:I

    const/high16 v12, 0x20000

    or-int/2addr v4, v12

    iput v4, v11, Loyl;->b:I

    :cond_63
    const/16 v4, 0x274e

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v11

    cmp-long v4, v11, v7

    if-eqz v4, :cond_65

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_64

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_64
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget v13, v4, Loyl;->b:I

    const/high16 v14, 0x40000

    or-int/2addr v13, v14

    iput v13, v4, Loyl;->b:I

    iput-wide v11, v4, Loyl;->ak:J

    :cond_65
    const/16 v4, 0x274f

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v11

    cmp-long v4, v11, v7

    if-eqz v4, :cond_67

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_66

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_66
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget v13, v4, Loyl;->b:I

    or-int/2addr v5, v13

    iput v5, v4, Loyl;->b:I

    iput-wide v11, v4, Loyl;->al:J

    :cond_67
    const/16 v4, 0x2750

    invoke-static {v0, v4}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v0, v4, v7

    if-eqz v0, :cond_69

    iget-object v0, v3, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_68

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_68
    iget-object v0, v3, Lnwn;->b:Lnws;

    check-cast v0, Loyl;

    iget v11, v0, Loyl;->b:I

    const/high16 v12, 0x100000

    or-int/2addr v11, v12

    iput v11, v0, Loyl;->b:I

    iput-wide v4, v0, Loyl;->am:J

    :cond_69
    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Loyl;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnwn;

    invoke-virtual {v3, v0}, Lnwn;->s(Lnws;)V

    check-cast v2, Lloi;

    iget-object v0, v2, Lloi;->b:Ljava/lang/Object;

    iget-object v2, v3, Lnwn;->b:Lnws;

    check-cast v2, Loyl;

    iget-object v2, v2, Loyl;->g:Lnxa;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v3, Lnwn;->b:Lnws;

    check-cast v5, Loyl;

    iget-object v5, v5, Loyl;->g:Lnxa;

    invoke-interface {v5}, Lnxa;->size()I

    move-result v5

    if-ge v4, v5, :cond_6a

    invoke-virtual {v3, v4}, Lnwn;->V(I)Loyk;

    move-result-object v5

    move-object v11, v0

    check-cast v11, Llhr;

    invoke-virtual {v11, v6, v5}, Llhr;->c(ILoyk;)Loyk;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lnwn;->au(ILoyk;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6a
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget-object v4, v4, Loyl;->h:Lnxa;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v3, Lnwn;->b:Lnws;

    check-cast v5, Loyl;

    iget-object v5, v5, Loyl;->h:Lnxa;

    invoke-interface {v5}, Lnxa;->size()I

    move-result v5

    if-ge v4, v5, :cond_6b

    invoke-virtual {v3, v4}, Lnwn;->W(I)Loyk;

    move-result-object v5

    move-object v11, v0

    check-cast v11, Llhr;

    invoke-virtual {v11, v6, v5}, Llhr;->c(ILoyk;)Loyk;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lnwn;->av(ILoyk;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6b
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget-object v4, v4, Loyl;->i:Lnxa;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v4, 0x0

    :goto_2
    iget-object v5, v3, Lnwn;->b:Lnws;

    check-cast v5, Loyl;

    iget-object v5, v5, Loyl;->i:Lnxa;

    invoke-interface {v5}, Lnxa;->size()I

    move-result v5

    if-ge v4, v5, :cond_6c

    invoke-virtual {v3, v4}, Lnwn;->X(I)Loyk;

    move-result-object v5

    move-object v11, v0

    check-cast v11, Llhr;

    invoke-virtual {v11, v6, v5}, Llhr;->c(ILoyk;)Loyk;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lnwn;->aw(ILoyk;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6c
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget-object v4, v4, Loyl;->j:Lnxa;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v4, 0x0

    :goto_3
    iget-object v5, v3, Lnwn;->b:Lnws;

    check-cast v5, Loyl;

    iget-object v5, v5, Loyl;->j:Lnxa;

    invoke-interface {v5}, Lnxa;->size()I

    move-result v5

    if-ge v4, v5, :cond_6d

    invoke-virtual {v3, v4}, Lnwn;->Y(I)Loyk;

    move-result-object v5

    move-object v11, v0

    check-cast v11, Llhr;

    invoke-virtual {v11, v6, v5}, Llhr;->c(ILoyk;)Loyk;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lnwn;->at(ILoyk;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6d
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget-object v4, v4, Loyl;->k:Lnxa;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v4, 0x0

    :goto_4
    iget-object v5, v3, Lnwn;->b:Lnws;

    check-cast v5, Loyl;

    iget-object v5, v5, Loyl;->k:Lnxa;

    invoke-interface {v5}, Lnxa;->size()I

    move-result v5

    if-ge v4, v5, :cond_6e

    invoke-virtual {v3, v4}, Lnwn;->Z(I)Loyk;

    move-result-object v5

    move-object v6, v0

    check-cast v6, Llhr;

    invoke-virtual {v6, v10, v5}, Llhr;->c(ILoyk;)Loyk;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lnwn;->aq(ILoyk;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6e
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget-object v4, v4, Loyl;->l:Lnxa;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v4, 0x0

    :goto_5
    iget-object v5, v3, Lnwn;->b:Lnws;

    check-cast v5, Loyl;

    iget-object v5, v5, Loyl;->l:Lnxa;

    invoke-interface {v5}, Lnxa;->size()I

    move-result v5

    if-ge v4, v5, :cond_6f

    invoke-virtual {v3, v4}, Lnwn;->aa(I)Loyk;

    move-result-object v5

    move-object v6, v0

    check-cast v6, Llhr;

    const/4 v10, 0x3

    invoke-virtual {v6, v10, v5}, Llhr;->c(ILoyk;)Loyk;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lnwn;->an(ILoyk;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6f
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget-object v4, v4, Loyl;->n:Lnxa;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    :goto_6
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loyl;

    iget-object v4, v4, Loyl;->n:Lnxa;

    invoke-interface {v4}, Lnxa;->size()I

    move-result v4

    if-ge v2, v4, :cond_70

    invoke-virtual {v3, v2}, Lnwn;->ab(I)Loyk;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Llhr;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v4}, Llhr;->c(ILoyk;)Loyk;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lnwn;->ap(ILoyk;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_70
    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Loyl;

    const-wide/32 v3, 0x1e341872

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v0, v1, Llhj;->c:Ljava/lang/Object;

    if-nez v0, :cond_71

    goto :goto_7

    :cond_71
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v7, v0

    :goto_7
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v8}, Llhy;-><init>(Loyl;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Loyb;Ljava/lang/String;Loym;)V

    return-object v9
.end method

.method public static e(Z)Loza;
    .locals 6

    sget-object v0, Loza;->e:Loza;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v1

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v3, v0, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Loza;

    iget v5, v4, Loza;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Loza;->a:I

    iput-wide v1, v4, Loza;->b:J

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loza;

    iget v2, v1, Loza;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Loza;->a:I

    iput-boolean p0, v1, Loza;->c:Z

    invoke-static {}, Ljava/lang/Thread;->activeCount()I

    move-result p0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loza;

    iget v2, v1, Loza;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Loza;->a:I

    iput p0, v1, Loza;->d:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p0

    check-cast p0, Loza;

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getFilesDir returned null twice."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static g()Landroid/os/Handler;
    .locals 2

    sget-object v0, Llho;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Llho;->e:Landroid/os/Handler;

    :cond_0
    sget-object v0, Llho;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public static h()V
    .locals 2

    invoke-static {}, Llho;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Llra;

    const-string v1, "Must be called on a background thread"

    invoke-direct {v0, v1}, Llra;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i()V
    .locals 2

    invoke-static {}, Llho;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Llra;

    const-string v1, "Must be called on the main thread"

    invoke-direct {v0, v1}, Llra;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Llho;->g()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static k()Z
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Llho;->l(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public static l(Ljava/lang/Thread;)Z
    .locals 1

    sget-object v0, Llho;->d:Ljava/lang/Thread;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Llho;->d:Ljava/lang/Thread;

    :cond_0
    sget-object v0, Llho;->d:Ljava/lang/Thread;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static m(Ljava/io/InputStream;JI)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x400

    new-array v1, v0, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    if-gtz p3, :cond_0

    const p3, 0x7fffffff

    :cond_0
    :goto_0
    if-lez p3, :cond_1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, v1, p2, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    invoke-virtual {v2, v1, p2, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    sub-int/2addr p3, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p0, "UTF-8"

    invoke-virtual {v2, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported encoding UTF8. This should always be supported."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to read license or metadata text."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;JI)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b0126

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "raw"

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p2, p3, p4}, Llho;->m(Ljava/io/InputStream;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static p(Lkvq;)I
    .locals 2

    :try_start_0
    invoke-static {p0}, Llho;->a(Lkvq;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "MIN_VERSION"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance v0, Lkvr;

    const-string v1, "Failed to read host package version"

    invoke-direct {v0, v1, p0}, Lkvr;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static q(Lkvq;)I
    .locals 2

    :try_start_0
    invoke-static {p0}, Llho;->a(Lkvq;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "CURRENT_VERSION"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance v0, Lkvr;

    const-string v1, "Failed to read host package version"

    invoke-direct {v0, v1, p0}, Lkvr;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static varargs r(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "Unable to format log message: \'%s\' error:\'%s\'"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/16 p0, 0x12

    return p0

    :pswitch_2
    const/16 p0, 0x11

    return p0

    :pswitch_3
    const/16 p0, 0x10

    return p0

    :pswitch_4
    const/16 p0, 0xf

    return p0

    :pswitch_5
    const/16 p0, 0xe

    return p0

    :pswitch_6
    const/16 p0, 0xd

    return p0

    :pswitch_7
    const/16 p0, 0xc

    return p0

    :pswitch_8
    const/16 p0, 0xb

    return p0

    :pswitch_9
    const/16 p0, 0xa

    return p0

    :pswitch_a
    const/16 p0, 0x8

    return p0

    :pswitch_b
    const/4 p0, 0x7

    return p0

    :pswitch_c
    const/4 p0, 0x6

    return p0

    :pswitch_d
    const/4 p0, 0x5

    return p0

    :pswitch_e
    const/4 p0, 0x4

    return p0

    :pswitch_f
    const/4 p0, 0x3

    return p0

    :pswitch_10
    const/4 p0, 0x2

    return p0

    :pswitch_11
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static t()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This should be running on the main thread."

    invoke-static {v0, v1}, Llho;->u(ZLjava/lang/String;)V

    return-void
.end method

.method public static u(ZLjava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Llho;->b(Ljava/lang/RuntimeException;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Object;)V
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {p0}, Llho;->b(Ljava/lang/RuntimeException;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/io/InputStream;Lkph;)J
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Llho;->y(Ljava/io/InputStream;Lcom/google/android/libraries/camera/exif/ExifInterface;Lkph;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static x([BLkph;)J
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Llho;->z([BLcom/google/android/libraries/camera/exif/ExifInterface;Lkph;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static y(Ljava/io/InputStream;Lcom/google/android/libraries/camera/exif/ExifInterface;Lkph;)J
    .locals 1

    invoke-interface {p2}, Lkph;->e()Ljava/io/FileOutputStream;

    move-result-object p2

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lnff;

    invoke-direct {v0, p2}, Lnff;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->m(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Lnff;->flush()V

    iget-wide p0, v0, Lnff;->a:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Lnff;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-static {p0, p1}, Lkfg;->D(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v0}, Lnff;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-static {p0, p1}, Lkfg;->D(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_0
    invoke-static {p0, p2}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p0

    :goto_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    return-wide p0

    :catchall_4
    move-exception p0

    :try_start_9
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p1

    invoke-static {p0, p1}, Llho;->C(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3
    throw p0
.end method

.method public static z([BLcom/google/android/libraries/camera/exif/ExifInterface;Lkph;)J
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1, p2}, Llho;->y(Ljava/io/InputStream;Lcom/google/android/libraries/camera/exif/ExifInterface;Lkph;)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public X(Lodq;)V
    .locals 0

    return-void
.end method
