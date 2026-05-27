.class public final Lgor;
.super Ljava/lang/Object;

# interfaces
.implements Lgpb;
.implements Lfaz;
.implements Lfab;
.implements Lfaa;


# static fields
.field public static final a:Lnak;

.field private static final i:Lmwa;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Ldhi;

.field public final d:Z

.field public final e:Loiw;

.field public final f:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;

.field public g:Z

.field public final h:Ljava/util/concurrent/locks/ReentrantLock;

.field private final j:Lkbc;

.field private final k:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com/google/android/apps/camera/portrait/PortraitRelightingProcessorManagerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgor;->a:Lnak;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/util/Map$Entry;

    const-string v1, "face_light_256_256-P21-custom_op.tflite"

    const-string v2, "A891DF2BC3F5F99941681615A5B730CA"

    invoke-static {v1, v2}, Lgoz;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "facemesh-full-P21-custom_op.tflite"

    const-string v2, "3F960EFFF9FC2CDF78E67B6CCC3EBA29"

    invoke-static {v1, v2}, Lgoz;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ffv6_holo040820_normals_net_mixed_fp16_256_256-P21-custom_op.tflite"

    const-string v2, "C9DDF79CBA8F9E7801CF492760C8BB40"

    invoke-static {v1, v2}, Lgoz;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "ffv6_holo040820_relighting_net_mixed_fp16_256_256-P21-custom_op.tflite"

    const-string v2, "411964205B9443CC789BFB38114EBA8E"

    invoke-static {v1, v2}, Lgoz;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "face_light_256_256-P22-custom_op.tflite"

    const-string v2, "6E94AF81E6B3A3559AEA3264C08B44C8"

    invoke-static {v1, v2}, Lgoz;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "facemesh-full-P22-custom_op.tflite"

    const-string v2, "1C82F3E862DF5445241304BB73CEF678"

    invoke-static {v1, v2}, Lgoz;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "ffv6_holo040820_normals_net_mixed_fp16_256_256-P22-custom_op.tflite"

    const-string v2, "AD6B39D065BAA50CBCB7C653475026C9"

    invoke-static {v1, v2}, Lgoz;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "ffv6_holo040820_relighting_net_mixed_fp16_256_256-P22-custom_op.tflite"

    const-string v2, "F099417EC82DF3EB41A7587090831E85"

    invoke-static {v1, v2}, Lgoz;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "face_light_256_256-P23-custom_op.tflite"

    const-string v2, "F396FA80313C1E513F60AD010E1F5532"

    invoke-static {v1, v2}, Lgoz;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "facemesh-full-P23-custom_op.tflite"

    const-string v2, "927636C05786D1C56F64F2350CD63849"

    invoke-static {v1, v2}, Lgoz;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "ffv6_holo040820_normals_net_mixed_fp16_256_256-P23-custom_op.tflite"

    const-string v2, "A67E567502B263D1E6918F323601CB1C"

    invoke-static {v1, v2}, Lgoz;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "ffv6_holo040820_relighting_net_mixed_fp16_256_256-P23-custom_op.tflite"

    const-string v2, "71047F4A027EBFAFF158DEC586038D04"

    invoke-static {v1, v2}, Lgoz;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lmwa;->l(Ljava/lang/Iterable;)Lmwa;

    move-result-object v0

    sput-object v0, Lgor;->i:Lmwa;

    return-void
.end method

.method public constructor <init>(Lkbc;Landroid/content/Context;Ldhi;Loiw;Ljava/util/concurrent/Executor;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgor;->g:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lgor;->h:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p1, p0, Lgor;->j:Lkbc;

    iput-object p2, p0, Lgor;->b:Landroid/content/Context;

    iput-object p3, p0, Lgor;->c:Ldhi;

    iput-boolean p6, p0, Lgor;->d:Z

    iput-object p4, p0, Lgor;->e:Loiw;

    iput-object p5, p0, Lgor;->k:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;

    invoke-direct {p1}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;-><init>()V

    iput-object p1, p0, Lgor;->f:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 3

    iget-object v0, p0, Lgor;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lgor;->f:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;->getPortraitRelightingProcessorHandle()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lgor;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgor;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lgor;->k:Ljava/util/concurrent/Executor;

    new-instance v1, Lghc;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lghc;-><init>(Lgor;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lgor;->k:Ljava/util/concurrent/Executor;

    new-instance v1, Lghc;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lghc;-><init>(Lgor;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lgor;->k:Ljava/util/concurrent/Executor;

    new-instance v1, Lgot;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lgot;-><init>(Lgor;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Z)Z
    .locals 4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lgor;->c:Ldhi;

    sget-object v0, Ldib;->E:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgor;->c:Ldhi;

    sget-object v0, Ldic;->c:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    :goto_0
    invoke-virtual {p0}, Lgor;->a()J

    move-result-wide v0

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7

    iget-object v0, p0, Lgor;->j:Lkbc;

    const-string v1, "FireflyMgr#loadModelAsset"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, v0, [B

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p2

    new-array v2, p2, [B

    invoke-static {p1, v2, v0, p2}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v3

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lgor;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    const-string v5, "There is more data. This is problematic"

    const/16 v6, 0xc52

    invoke-static {v4, v5, v6}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-eq v3, p2, :cond_1

    sget-object p1, Lgor;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string p2, "Didn\'t finish reading the asset."

    const/16 v3, 0xc51

    invoke-static {p1, p2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    :goto_0
    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object p2, Lgor;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->b()Lnaz;

    move-result-object p2

    const-string v2, "Unable to load the asset: %s"

    const/16 v3, 0xc4f

    invoke-static {p2, v2, p1, v3}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :goto_1
    iget-object p1, p0, Lgor;->j:Lkbc;

    const-string p2, "FireflyMgr#decrypt"

    invoke-interface {p1, p2}, Lkbc;->e(Ljava/lang/String;)V

    new-array p1, v0, [B

    const-string p2, "EE0F689D8C7579BC1A11DEE1D035717E"

    const-string v0, "6B63910ECDC9F72F9B907AC6E8E6A53519A194834FB5417CFEB12AD4174286CC"

    :try_start_1
    sget-object v2, Lnes;->e:Lnes;

    invoke-virtual {v2, v0}, Lnes;->g(Ljava/lang/CharSequence;)[B

    move-result-object v0

    sget-object v2, Lnes;->e:Lnes;

    invoke-virtual {v2, p2}, Lnes;->g(Ljava/lang/CharSequence;)[B

    move-result-object p2

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {p2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "AES_256/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3, p2, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    sget-object v0, Lgor;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Unable to decrypt bytes: %s"

    const/16 v2, 0xc4e

    invoke-static {v0, v1, p2, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :goto_2
    iget-object p2, p0, Lgor;->j:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    iget-object p2, p0, Lgor;->j:Lkbc;

    const-string v0, "FireflyMgr#md5"

    invoke-interface {p2, v0}, Lkbc;->e(Ljava/lang/String;)V

    :try_start_2
    const-string p2, "MD5"

    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    sget-object v0, Lnes;->e:Lnes;

    invoke-virtual {v0, p3}, Lnes;->g(Ljava/lang/CharSequence;)[B

    move-result-object v0

    invoke-static {p2, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lgor;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xc45

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Checksum is %s, expecting %s"

    sget-object v2, Lnes;->e:Lnes;

    invoke-virtual {v2, p2}, Lnes;->f([B)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2, p3}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    sget-object p3, Lgor;->a:Lnak;

    invoke-virtual {p3}, Lnaf;->b()Lnaz;

    move-result-object p3

    const-string v0, "Failed to compute MD5 hash: %s"

    const/16 v1, 0xc46

    invoke-static {p3, v0, p2, v1}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :cond_2
    :goto_3
    iget-object p2, p0, Lgor;->j:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    iget-object p2, p0, Lgor;->j:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    return-object p1
.end method

.method public final g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const-string p2, "%s-%s-custom_op.tflite"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lgor;->i:Lmwa;

    const-string v1, ""

    invoke-virtual {v0, p2, v1}, Lmwa;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".enc"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Lgor;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
