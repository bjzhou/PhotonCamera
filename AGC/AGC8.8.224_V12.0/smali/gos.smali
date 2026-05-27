.class public final Lgos;
.super Ljava/lang/Object;

# interfaces
.implements Lgpc;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitSegmenterInterface;

.field private d:Z

.field private final e:Lkbc;

.field private final f:Landroid/content/Context;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Loiw;

.field private final l:Loiw;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/portrait/PortraitSegmenterManagerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgos;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lkbc;Landroid/content/Context;ZZZZZLoiw;Loiw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgos;->b:Ljava/lang/Object;

    iput-object p1, p0, Lgos;->e:Lkbc;

    iput-object p2, p0, Lgos;->f:Landroid/content/Context;

    iput-boolean p3, p0, Lgos;->g:Z

    iput-boolean p4, p0, Lgos;->h:Z

    iput-boolean p5, p0, Lgos;->i:Z

    iput-boolean p6, p0, Lgos;->m:Z

    iput-boolean p7, p0, Lgos;->j:Z

    iput-object p8, p0, Lgos;->k:Loiw;

    iput-object p9, p0, Lgos;->l:Loiw;

    new-instance p1, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitSegmenterInterface;

    invoke-direct {p1}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitSegmenterInterface;-><init>()V

    iput-object p1, p0, Lgos;->c:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitSegmenterInterface;

    return-void
.end method

.method private final c(I)V
    .locals 4

    sget-object v0, Lnkk;->i:Lnkk;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnkk;

    add-int/lit8 p1, p1, -0x1

    iput p1, v2, Lnkk;->b:I

    iget p1, v2, Lnkk;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v2, Lnkk;->a:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object v1, p1

    check-cast v1, Lnkk;

    iget v2, v1, Lnkk;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lnkk;->a:I

    const-string v2, "tflite_vakunov_multi-subject_2018-06-09.fb.enc"

    iput-object v2, v1, Lnkk;->c:Ljava/lang/String;

    iget-boolean v1, p0, Lgos;->g:Z

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object v2, p1

    check-cast v2, Lnkk;

    iget v3, v2, Lnkk;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lnkk;->a:I

    iput-boolean v1, v2, Lnkk;->d:Z

    iget-boolean v1, p0, Lgos;->h:Z

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object v2, p1

    check-cast v2, Lnkk;

    iget v3, v2, Lnkk;->a:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Lnkk;->a:I

    iput-boolean v1, v2, Lnkk;->e:Z

    iget-boolean v1, p0, Lgos;->i:Z

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object v2, p1

    check-cast v2, Lnkk;

    iget v3, v2, Lnkk;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lnkk;->a:I

    iput-boolean v1, v2, Lnkk;->f:Z

    iget-boolean v1, p0, Lgos;->m:Z

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object v2, p1

    check-cast v2, Lnkk;

    iget v3, v2, Lnkk;->a:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Lnkk;->a:I

    iput-boolean v1, v2, Lnkk;->g:Z

    iget-boolean v1, p0, Lgos;->j:Z

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_6
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnkk;

    iget v2, p1, Lnkk;->a:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p1, Lnkk;->a:I

    iput-boolean v1, p1, Lnkk;->h:Z

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lnkk;

    iget-object v0, p0, Lgos;->l:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfbz;

    invoke-interface {v0, p1}, Lfbz;->G(Lnkk;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 3

    iget-object v0, p0, Lgos;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgos;->c:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitSegmenterInterface;

    invoke-virtual {v1}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitSegmenterInterface;->getSegmenterHandle()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()V
    .locals 25

    move-object/from16 v1, p0

    const-string v2, "tflite_vakunov_multi-subject_2018-06-09.fb.enc.cache"

    iget-object v3, v1, Lgos;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v0, v1, Lgos;->d:Z

    if-nez v0, :cond_6

    iget-object v0, v1, Lgos;->f:Landroid/content/Context;

    const-string v4, "tflite_vakunov_multi-subject_2018-06-09.fb.enc"

    iget-object v5, v1, Lgos;->e:Lkbc;

    const-string v6, "PortraitSegmenterManager#loadModelAsset"

    invoke-interface {v5, v6}, Lkbc;->e(Ljava/lang/String;)V

    const/4 v5, 0x0

    new-array v6, v5, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x2

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v8, v4, [B

    invoke-static {v0, v8, v5, v4}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v9

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Lgos;->a:Lnak;

    invoke-virtual {v10}, Lnaf;->b()Lnaz;

    move-result-object v10

    const-string v11, "There is more data. This is problematic"

    const/16 v12, 0xc5a

    invoke-static {v10, v11, v12}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    if-eq v9, v4, :cond_1

    sget-object v0, Lgos;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v4, "Didn\'t finish reading the asset..."

    const/16 v9, 0xc59

    invoke-static {v0, v4, v9}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    :goto_0
    move-object v6, v8

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v4, Lgos;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    const-string v8, "Unable to load the asset: %s"

    const/16 v9, 0xc58

    invoke-static {v4, v8, v0, v9}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    invoke-direct {v1, v7}, Lgos;->c(I)V

    :goto_1
    iget-object v0, v1, Lgos;->e:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v4, v1, Lgos;->c:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitSegmenterInterface;

    const-string v20, "tflite_vakunov_multi-subject_2018-06-09.fb.enc"

    const-string v0, "6B63910ECDC9F72F9B907AC6E8E6A53519A194834FB5417CFEB12AD4174286CC"

    const-string v8, "EE0F689D8C7579BC1A11DEE1D035717E"

    iget-object v9, v1, Lgos;->e:Lkbc;

    const-string v10, "PortraitSegmenterManager#decrypt"

    invoke-interface {v9, v10}, Lkbc;->e(Ljava/lang/String;)V

    new-array v9, v5, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x3

    :try_start_3
    sget-object v11, Lnes;->e:Lnes;

    invoke-virtual {v11, v0}, Lnes;->g(Ljava/lang/CharSequence;)[B

    move-result-object v0

    sget-object v11, Lnes;->e:Lnes;

    invoke-virtual {v11, v8}, Lnes;->g(Ljava/lang/CharSequence;)[B

    move-result-object v8

    new-instance v11, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v11, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v12, "AES"

    invoke-direct {v8, v0, v12}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "AES_256/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, v7, v8, v11}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v6, v9

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v6, Lgos;->a:Lnak;

    invoke-virtual {v6}, Lnaf;->b()Lnaz;

    move-result-object v6

    const-string v7, "Unable to decrypt bytes: %s"

    const/16 v8, 0xc57

    invoke-static {v6, v7, v0, v8}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    invoke-direct {v1, v10}, Lgos;->c(I)V

    move-object v6, v9

    :goto_2
    iget-object v0, v1, Lgos;->e:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    const-string v0, "2F01B88911B7897DD738B9CF658A28A6"

    iget-object v7, v1, Lgos;->e:Lkbc;

    const-string v8, "PortraitSegmenterManager#md5"

    invoke-interface {v7, v8}, Lkbc;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    sget-object v8, Lnes;->e:Lnes;

    invoke-virtual {v8, v0}, Lnes;->g(Ljava/lang/CharSequence;)[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lgos;->a:Lnak;

    invoke-virtual {v8}, Lnaf;->c()Lnaz;

    move-result-object v8

    check-cast v8, Lnah;

    const/16 v9, 0xc53

    invoke-interface {v8, v9}, Lnah;->G(I)Lnaz;

    move-result-object v8

    check-cast v8, Lnah;

    const-string v9, "Checksum is %s, expecting %s"

    sget-object v11, Lnes;->e:Lnes;

    invoke-virtual {v11, v7}, Lnes;->f([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v9, v7, v0}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_6
    sget-object v7, Lgos;->a:Lnak;

    invoke-virtual {v7}, Lnaf;->b()Lnaz;

    move-result-object v7

    const-string v8, "Failed to compute MD5 hash: %s"

    const/16 v9, 0xc54

    invoke-static {v7, v8, v0, v9}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    invoke-direct {v1, v10}, Lgos;->c(I)V

    :cond_2
    :goto_3
    iget-object v0, v1, Lgos;->e:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    array-length v0, v6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/googlex/gcam/BufferUtils;->a(Ljava/nio/Buffer;)J

    move-result-wide v21

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    int-to-long v14, v7

    iget-object v7, v1, Lgos;->e:Lkbc;

    const-string v8, "PortraitSegmenterManager#nativeInitialization"

    invoke-interface {v7, v8}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v7, v1, Lgos;->k:Loiw;

    check-cast v7, Lfix;

    invoke-virtual {v7}, Lfix;->b()Lmqp;

    move-result-object v7

    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Ljava/io/File;

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-direct {v8, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_3
    const-string v2, ""

    :goto_4
    iget-boolean v7, v1, Lgos;->g:Z

    iget-boolean v13, v1, Lgos;->h:Z

    iget-boolean v11, v1, Lgos;->i:Z

    iget-boolean v12, v1, Lgos;->m:Z

    iget-boolean v9, v1, Lgos;->j:Z

    move-object v8, v4

    move/from16 v19, v9

    move-wide/from16 v9, v21

    move/from16 v17, v11

    move/from16 v18, v12

    move-wide v11, v14

    move/from16 v16, v13

    move-object/from16 v13, v20

    move-wide/from16 v23, v14

    move-object v14, v2

    move v15, v7

    invoke-virtual/range {v8 .. v19}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitSegmenterInterface;->initSegmenter(JJLjava/lang/String;Ljava/lang/String;ZZZZZ)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v8, v1, Lgos;->g:Z

    if-nez v8, :cond_4

    iget-boolean v8, v1, Lgos;->m:Z

    if-eqz v8, :cond_4

    invoke-virtual {v4}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitSegmenterInterface;->dummyImageProducesReasonableMask()Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lgos;->a:Lnak;

    invoke-virtual {v7}, Lnaf;->b()Lnaz;

    move-result-object v7

    const-string v8, "OpenCL segmenter failed to produce a reasonable mask, falling back to OpenGL."

    const/16 v9, 0xc56

    invoke-static {v7, v8, v9}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-virtual {v4}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitSegmenterInterface;->release()V

    const/4 v7, 0x5

    invoke-direct {v1, v7}, Lgos;->c(I)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iput-boolean v5, v1, Lgos;->m:Z

    iget-boolean v15, v1, Lgos;->g:Z

    iget-boolean v0, v1, Lgos;->h:Z

    iget-boolean v5, v1, Lgos;->i:Z

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v8, v4

    move-wide/from16 v9, v21

    move-wide/from16 v11, v23

    move-object/from16 v13, v20

    move-object v14, v2

    move/from16 v16, v0

    move/from16 v17, v5

    invoke-virtual/range {v8 .. v19}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitSegmenterInterface;->initSegmenter(JJLjava/lang/String;Ljava/lang/String;ZZZZZ)Z

    move-result v7

    goto :goto_5

    :cond_4
    :goto_5
    iget-object v0, v1, Lgos;->e:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    if-nez v7, :cond_5

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lgos;->c(I)V

    :cond_5
    iput-boolean v7, v1, Lgos;->d:Z

    :cond_6
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method
