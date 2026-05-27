.class public final Ldea;
.super Ljava/lang/Object;

# interfaces
.implements Lddx;
.implements Lder;


# static fields
.field public static final a:Lddw;

.field private static final d:Lnak;


# instance fields
.field public final b:Ldes;

.field public c:Lddw;

.field private e:Lmdx;

.field private final f:Lddp;

.field private g:Lddz;

.field private final h:Ljuf;

.field private final i:Lkbc;

.field private final j:Ldin;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/cameravisionkit/CameraVisionKitPipelineImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldea;->d:Lnak;

    new-instance v0, Lddy;

    invoke-direct {v0}, Lddy;-><init>()V

    sput-object v0, Ldea;->a:Lddw;

    return-void
.end method

.method public constructor <init>(Lddp;Ldes;Lkbc;Ldin;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ldea;->a:Lddw;

    iput-object v0, p0, Ldea;->c:Lddw;

    const-class v0, Ldez;

    invoke-static {v0}, Lkak;->a(Ljava/lang/Class;)V

    iput-object p1, p0, Ldea;->f:Lddp;

    iput-object p2, p0, Ldea;->b:Ldes;

    iput-object p3, p0, Ldea;->i:Lkbc;

    iput-object p4, p0, Ldea;->j:Ldin;

    new-instance p1, Ljuf;

    invoke-direct {p1}, Ljuf;-><init>()V

    iput-object p1, p0, Ldea;->h:Ljuf;

    return-void
.end method

.method private final l(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Ldea;->d:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "%s"

    const/16 v2, 0x348

    invoke-static {v0, v1, p2, v2, p1}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    iget-object v0, p0, Ldea;->j:Ldin;

    sget-object v1, Ldin;->c:Ldin;

    invoke-virtual {v0, v1}, Ldin;->b(Ldin;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ldds;

    invoke-direct {v0, p2, p1}, Ldds;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(Lddw;)Lkad;
    .locals 1

    iput-object p1, p0, Ldea;->c:Lddw;

    new-instance p1, Lcfh;

    const/16 v0, 0x14

    invoke-direct {p1, p0, v0}, Lcfh;-><init>(Ldea;I)V

    return-object p1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Ldea;->h:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Ldea;->h:Ljuf;

    iget-object v1, p0, Ldea;->b:Ldes;

    iput-object p0, v1, Ldes;->f:Lder;

    iget-object v2, v1, Ldes;->c:Ldek;

    iput-object v1, v2, Ldek;->c:Ldej;

    new-instance v3, Ldei;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Ldei;-><init>(Ldek;I)V

    new-instance v2, Lchq;

    const/16 v4, 0xb

    invoke-direct {v2, v1, v3, v4}, Lchq;-><init>(Ldes;Lkad;I)V

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method public final d()V
    .locals 19

    move-object/from16 v1, p0

    iget-object v2, v1, Ldea;->i:Lkbc;

    const-string v3, "camera_vkp_initialize"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v2, v1, Ldea;->g:Lddz;

    if-nez v2, :cond_56

    :try_start_0
    iget-object v5, v1, Ldea;->f:Lddp;

    invoke-virtual {v5}, Lddp;->k()Lnwp;

    move-result-object v6

    invoke-virtual {v5, v6}, Lddp;->m(Lnwp;)V

    invoke-virtual {v5, v6}, Lddp;->l(Lnwp;)V

    invoke-virtual {v5}, Lddp;->h()Z

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "/m/015bv3"

    const/4 v13, 0x1

    if-nez v7, :cond_0

    :try_start_1
    invoke-virtual {v5}, Lddp;->d()Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v5}, Lddp;->h()Z

    move-result v7

    invoke-virtual {v5}, Lddp;->d()Z

    move-result v14

    invoke-virtual {v5}, Lddp;->f()Z

    move-result v15

    invoke-virtual {v5}, Lddp;->e()Z

    move-result v16

    const-string v2, "camera_vkp/mobile_ica_v2_classifier_embedder.tflite.uncompressed"

    invoke-virtual {v5, v2}, Lddp;->a(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    sget-object v17, Lddv;->a:Lmvv;

    sget-object v17, Lpax;->c:Lpax;

    invoke-virtual/range {v17 .. v17}, Lnws;->O()Lnwn;

    move-result-object v4

    sget-object v17, Lmem;->c:Lmem;

    invoke-virtual/range {v17 .. v17}, Lnws;->O()Lnwn;

    move-result-object v8

    sget-object v17, Lmen;->e:Lmen;

    invoke-virtual/range {v17 .. v17}, Lnws;->O()Lnwn;

    move-result-object v9

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    iget-object v12, v9, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_1
    iget-object v12, v9, Lnwn;->b:Lnws;

    check-cast v12, Lmen;

    iget v11, v12, Lmen;->a:I

    or-int/2addr v11, v13

    iput v11, v12, Lmen;->a:I

    iput v3, v12, Lmen;->b:I

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v11

    iget-object v3, v9, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_2
    iget-object v3, v9, Lnwn;->b:Lnws;

    check-cast v3, Lmen;

    iget v13, v3, Lmen;->a:I

    const/16 v18, 0x4

    or-int/lit8 v13, v13, 0x4

    iput v13, v3, Lmen;->a:I

    iput-wide v11, v3, Lmen;->d:J

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v2

    iget-object v11, v9, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_3
    iget-object v11, v9, Lnwn;->b:Lnws;

    check-cast v11, Lmen;

    iget v12, v11, Lmen;->a:I

    const/4 v13, 0x2

    or-int/2addr v12, v13

    iput v12, v11, Lmen;->a:I

    iput-wide v2, v11, Lmen;->c:J

    invoke-virtual {v9}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lmen;

    iget-object v3, v8, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_4
    iget-object v3, v8, Lnwn;->b:Lnws;

    check-cast v3, Lmem;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, Lmem;->b:Lmen;

    iget v2, v3, Lmem;->a:I

    const/4 v9, 0x4

    or-int/2addr v2, v9

    iput v2, v3, Lmem;->a:I

    invoke-virtual {v8}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lmem;

    iget-object v3, v4, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_5
    iget-object v3, v4, Lnwn;->b:Lnws;

    check-cast v3, Lpax;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, Lpax;->b:Lmem;

    iget v2, v3, Lpax;->a:I

    const/4 v8, 0x1

    or-int/2addr v2, v8

    iput v2, v3, Lpax;->a:I

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lpax;

    sget-object v3, Lpba;->c:Lpba;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_6
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Lpba;

    iget v8, v4, Lpba;->a:I

    const/4 v9, 0x2

    or-int/2addr v8, v9

    iput v8, v4, Lpba;->a:I

    const/4 v8, 0x0

    iput-boolean v8, v4, Lpba;->b:Z

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lpba;

    sget-object v4, Lpaz;->d:Lpaz;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    if-eqz v15, :cond_9

    sget-object v8, Lddv;->a:Lmvv;

    iget-object v9, v4, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_7
    iget-object v9, v4, Lnwn;->b:Lnws;

    check-cast v9, Lpaz;

    invoke-virtual {v9}, Lpaz;->c()V

    iget-object v9, v9, Lpaz;->c:Lnxa;

    invoke-static {v8, v9}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    iget-object v8, v4, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_8
    iget-object v8, v4, Lnwn;->b:Lnws;

    check-cast v8, Lpaz;

    iget v9, v8, Lpaz;->a:I

    const/4 v11, 0x4

    or-int/2addr v9, v11

    iput v9, v8, Lpaz;->a:I

    const v9, 0x3ecccccd    # 0.4f

    iput v9, v8, Lpaz;->b:F

    :cond_9
    if-eqz v16, :cond_c

    iget-object v8, v4, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_a
    iget-object v8, v4, Lnwn;->b:Lnws;

    check-cast v8, Lpaz;

    invoke-virtual {v8}, Lpaz;->c()V

    iget-object v8, v8, Lpaz;->c:Lnxa;

    invoke-interface {v8, v10}, Lnxa;->add(Ljava/lang/Object;)Z

    iget-object v8, v4, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_b
    iget-object v8, v4, Lnwn;->b:Lnws;

    check-cast v8, Lpaz;

    iget v9, v8, Lpaz;->a:I

    const/4 v11, 0x4

    or-int/2addr v9, v11

    iput v9, v8, Lpaz;->a:I

    const/high16 v9, 0x3e800000    # 0.25f

    iput v9, v8, Lpaz;->b:F

    :cond_c
    sget-object v8, Lpay;->e:Lpay;

    invoke-virtual {v8}, Lnws;->O()Lnwn;

    move-result-object v8

    if-eqz v7, :cond_e

    iget-object v7, v8, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_d
    iget-object v7, v8, Lnwn;->b:Lnws;

    check-cast v7, Lpay;

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Lpaz;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v7, Lpay;->c:Lpaz;

    iget v4, v7, Lpay;->a:I

    const/4 v9, 0x2

    or-int/2addr v4, v9

    iput v4, v7, Lpay;->a:I

    :cond_e
    if-eqz v14, :cond_10

    iget-object v4, v8, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_f
    iget-object v4, v8, Lnwn;->b:Lnws;

    check-cast v4, Lpay;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v4, Lpay;->d:Lpba;

    iget v3, v4, Lpay;->a:I

    const/4 v7, 0x4

    or-int/2addr v3, v7

    iput v3, v4, Lpay;->a:I

    :cond_10
    iget-object v3, v8, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_11
    iget-object v3, v8, Lnwn;->b:Lnws;

    check-cast v3, Lpay;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, Lpay;->b:Lpax;

    iget v2, v3, Lpay;->a:I

    const/4 v4, 0x1

    or-int/2addr v2, v4

    iput v2, v3, Lpay;->a:I

    invoke-virtual {v8}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lpay;

    iget-object v3, v6, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_12
    iget-object v3, v6, Lnwp;->b:Lnws;

    check-cast v3, Lmea;

    sget-object v4, Lmea;->k:Lmea;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lmea;->d:Lnxa;

    invoke-interface {v4}, Lnxa;->c()Z

    move-result v7

    if-nez v7, :cond_13

    invoke-static {v4}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v4

    iput-object v4, v3, Lmea;->d:Lnxa;

    :cond_13
    iget-object v3, v3, Lmea;->d:Lnxa;

    invoke-interface {v3, v2}, Lnxa;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v5}, Lddp;->e()Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_1

    :cond_14
    const-string v2, "camera_vkp/corner_detector_fixed_input_shape_with_partial_metadata.tflite.uncompressed"

    invoke-virtual {v5, v2}, Lddp;->a(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    const-string v3, "camera_vkp/corner_detector_label_map.uncompressed"

    invoke-virtual {v5, v3}, Lddp;->a(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    const-string v4, "camera_vkp/corner_detector_anchor.uncompressed"

    invoke-virtual {v5, v4}, Lddp;->a(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    sget-object v7, Lddv;->a:Lmvv;

    sget-object v7, Lobv;->j:Lobv;

    invoke-virtual {v7}, Lnws;->O()Lnwn;

    move-result-object v7

    check-cast v7, Lnwp;

    iget-object v8, v7, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_15

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_15
    iget-object v8, v7, Lnwp;->b:Lnws;

    check-cast v8, Lobv;

    iget v9, v8, Lobv;->a:I

    const/4 v11, 0x2

    or-int/2addr v9, v11

    iput v9, v8, Lobv;->a:I

    const/4 v9, 0x1

    iput v9, v8, Lobv;->c:I

    iget-object v8, v7, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_16

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_16
    iget-object v8, v7, Lnwp;->b:Lnws;

    check-cast v8, Lobv;

    iget v9, v8, Lobv;->a:I

    const/4 v11, 0x4

    or-int/2addr v9, v11

    iput v9, v8, Lobv;->a:I

    const/4 v9, 0x1

    iput v9, v8, Lobv;->d:I

    iget-object v8, v7, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_17

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_17
    iget-object v8, v7, Lnwp;->b:Lnws;

    check-cast v8, Lobv;

    iget v9, v8, Lobv;->a:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v8, Lobv;->a:I

    const/high16 v9, -0x40000000    # -2.0f

    iput v9, v8, Lobv;->e:F

    iget-object v8, v7, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_18

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_18
    iget-object v8, v7, Lnwp;->b:Lnws;

    check-cast v8, Lobv;

    iget v9, v8, Lobv;->a:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v8, Lobv;->a:I

    const v9, 0x3e99999a    # 0.3f

    iput v9, v8, Lobv;->f:F

    iget-object v8, v7, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_19

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_19
    iget-object v8, v7, Lnwp;->b:Lnws;

    check-cast v8, Lobv;

    iget v9, v8, Lobv;->a:I

    or-int/lit16 v9, v9, 0x100

    iput v9, v8, Lobv;->a:I

    const/4 v9, 0x4

    iput v9, v8, Lobv;->h:I

    iget-object v8, v7, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_1a

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_1a
    iget-object v8, v7, Lnwp;->b:Lnws;

    check-cast v8, Lobv;

    iget v9, v8, Lobv;->a:I

    or-int/lit16 v9, v9, 0x80

    iput v9, v8, Lobv;->a:I

    const/4 v9, 0x1

    iput-boolean v9, v8, Lobv;->g:Z

    const-string v8, "MobileSSDTfLiteClient"

    iget-object v9, v7, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_1b

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_1b
    iget-object v9, v7, Lnwp;->b:Lnws;

    check-cast v9, Lobv;

    iget v11, v9, Lobv;->a:I

    const/4 v12, 0x1

    or-int/2addr v11, v12

    iput v11, v9, Lobv;->a:I

    iput-object v8, v9, Lobv;->b:Ljava/lang/String;

    sget-object v8, Lobt;->e:Lobt;

    invoke-virtual {v8}, Lnws;->O()Lnwn;

    move-result-object v8

    sget-object v9, Lobu;->e:Lobu;

    invoke-virtual {v9}, Lnws;->O()Lnwn;

    move-result-object v9

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v11

    iget-object v12, v9, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_1c

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_1c
    iget-object v12, v9, Lnwn;->b:Lnws;

    check-cast v12, Lobu;

    iget v13, v12, Lobu;->a:I

    const/4 v14, 0x1

    or-int/2addr v13, v14

    iput v13, v12, Lobu;->a:I

    iput v11, v12, Lobu;->b:I

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v11

    iget-object v13, v9, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_1d

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_1d
    iget-object v13, v9, Lnwn;->b:Lnws;

    check-cast v13, Lobu;

    iget v14, v13, Lobu;->a:I

    const/4 v15, 0x4

    or-int/2addr v14, v15

    iput v14, v13, Lobu;->a:I

    iput-wide v11, v13, Lobu;->d:J

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v11

    iget-object v2, v9, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_1e
    iget-object v2, v9, Lnwn;->b:Lnws;

    check-cast v2, Lobu;

    iget v13, v2, Lobu;->a:I

    const/4 v14, 0x2

    or-int/2addr v13, v14

    iput v13, v2, Lobu;->a:I

    iput-wide v11, v2, Lobu;->c:J

    invoke-virtual {v9}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lobu;

    iget-object v9, v8, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_1f

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_1f
    iget-object v9, v8, Lnwn;->b:Lnws;

    check-cast v9, Lobt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v9, Lobt;->b:Lobu;

    iget v2, v9, Lobt;->a:I

    const/4 v11, 0x4

    or-int/2addr v2, v11

    iput v2, v9, Lobt;->a:I

    sget-object v2, Lobu;->e:Lobu;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v9

    iget-object v11, v2, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_20

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_20
    iget-object v11, v2, Lnwn;->b:Lnws;

    check-cast v11, Lobu;

    iget v12, v11, Lobu;->a:I

    const/4 v13, 0x1

    or-int/2addr v12, v13

    iput v12, v11, Lobu;->a:I

    iput v9, v11, Lobu;->b:I

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v11

    iget-object v9, v2, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_21

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_21
    iget-object v9, v2, Lnwn;->b:Lnws;

    check-cast v9, Lobu;

    iget v13, v9, Lobu;->a:I

    const/4 v14, 0x4

    or-int/2addr v13, v14

    iput v13, v9, Lobu;->a:I

    iput-wide v11, v9, Lobu;->d:J

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v11

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_22
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lobu;

    iget v9, v3, Lobu;->a:I

    const/4 v13, 0x2

    or-int/2addr v9, v13

    iput v9, v3, Lobu;->a:I

    iput-wide v11, v3, Lobu;->c:J

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lobu;

    iget-object v3, v8, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_23
    iget-object v3, v8, Lnwn;->b:Lnws;

    check-cast v3, Lobt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, Lobt;->c:Lobu;

    iget v2, v3, Lobt;->a:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v3, Lobt;->a:I

    sget-object v2, Lobu;->e:Lobu;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    iget-object v9, v2, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_24

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_24
    iget-object v9, v2, Lnwn;->b:Lnws;

    check-cast v9, Lobu;

    iget v11, v9, Lobu;->a:I

    const/4 v12, 0x1

    or-int/2addr v11, v12

    iput v11, v9, Lobu;->a:I

    iput v3, v9, Lobu;->b:I

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v11

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_25
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lobu;

    iget v9, v3, Lobu;->a:I

    const/4 v13, 0x4

    or-int/2addr v9, v13

    iput v9, v3, Lobu;->a:I

    iput-wide v11, v3, Lobu;->d:J

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v3

    iget-object v9, v2, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_26

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_26
    iget-object v9, v2, Lnwn;->b:Lnws;

    check-cast v9, Lobu;

    iget v11, v9, Lobu;->a:I

    const/4 v12, 0x2

    or-int/2addr v11, v12

    iput v11, v9, Lobu;->a:I

    iput-wide v3, v9, Lobu;->c:J

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lobu;

    iget-object v3, v8, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_27
    iget-object v3, v8, Lnwn;->b:Lnws;

    check-cast v3, Lobt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, Lobt;->d:Lobu;

    iget v2, v3, Lobt;->a:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v3, Lobt;->a:I

    invoke-virtual {v8}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lobt;

    iget-object v3, v7, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_28
    iget-object v3, v7, Lnwp;->b:Lnws;

    check-cast v3, Lobv;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, Lobv;->i:Lobt;

    iget v2, v3, Lobv;->a:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v3, Lobv;->a:I

    sget-object v2, Lmeo;->k:Lmeo;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    sget-object v3, Lmep;->d:Lmep;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_29
    iget-object v4, v3, Lnwn;->b:Lnws;

    move-object v8, v4

    check-cast v8, Lmep;

    iget v9, v8, Lmep;->a:I

    const/4 v11, 0x2

    or-int/2addr v9, v11

    iput v9, v8, Lmep;->a:I

    const v9, 0x3f7f3b64    # 0.997f

    iput v9, v8, Lmep;->c:F

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_2a
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Lmep;

    invoke-virtual {v7}, Lnwn;->i()Lnws;

    move-result-object v7

    check-cast v7, Lobv;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v4, Lmep;->b:Lobv;

    iget v7, v4, Lmep;->a:I

    const/4 v8, 0x1

    or-int/2addr v7, v8

    iput v7, v4, Lmep;->a:I

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_2b
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lmeo;

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lmep;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v4, Lmeo;->c:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v4, Lmeo;->b:I

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_2c
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lmeo;

    iget v4, v3, Lmeo;->a:I

    const/4 v7, 0x1

    or-int/2addr v4, v7

    iput v4, v3, Lmeo;->a:I

    iput-boolean v7, v3, Lmeo;->d:Z

    sget-object v3, Lmel;->f:Lmel;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    const-string v4, "MobileIca8bitV2"

    iget-object v7, v3, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_2d

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_2d
    iget-object v7, v3, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lmel;

    iget v9, v8, Lmel;->a:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v8, Lmel;->a:I

    iput-object v4, v8, Lmel;->e:Ljava/lang/String;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_2e
    iget-object v4, v3, Lnwn;->b:Lnws;

    move-object v7, v4

    check-cast v7, Lmel;

    const/4 v8, 0x1

    iput v8, v7, Lmel;->b:I

    iput-object v10, v7, Lmel;->c:Ljava/lang/Object;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_2f
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Lmel;

    iget v7, v4, Lmel;->a:I

    const/4 v8, 0x4

    or-int/2addr v7, v8

    iput v7, v4, Lmel;->a:I

    const/high16 v7, 0x3e800000    # 0.25f

    iput v7, v4, Lmel;->d:F

    invoke-virtual {v2, v3}, Lnwn;->aF(Lnwn;)V

    sget-object v3, Lmel;->f:Lmel;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    const-string v4, "CoarseClassifierTexto128V2_3"

    iget-object v7, v3, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_30

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_30
    iget-object v7, v3, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lmel;

    iget v9, v8, Lmel;->a:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v8, Lmel;->a:I

    iput-object v4, v8, Lmel;->e:Ljava/lang/String;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_31

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_31
    iget-object v4, v3, Lnwn;->b:Lnws;

    move-object v7, v4

    check-cast v7, Lmel;

    const/4 v8, 0x3

    iput v8, v7, Lmel;->b:I

    const-string v8, "text"

    iput-object v8, v7, Lmel;->c:Ljava/lang/Object;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_32

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_32
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Lmel;

    iget v7, v4, Lmel;->a:I

    const/4 v8, 0x4

    or-int/2addr v7, v8

    iput v7, v4, Lmel;->a:I

    const v7, 0x3ecccccd    # 0.4f

    iput v7, v4, Lmel;->d:F

    invoke-virtual {v2, v3}, Lnwn;->aF(Lnwn;)V

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_33

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_33
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lmeo;

    iget-object v4, v3, Lmeo;->f:Lnwx;

    invoke-interface {v4}, Lnwx;->c()Z

    move-result v7

    if-nez v7, :cond_34

    invoke-static {v4}, Lnws;->R(Lnwx;)Lnwx;

    move-result-object v4

    iput-object v4, v3, Lmeo;->f:Lnwx;

    :cond_34
    iget-object v3, v3, Lmeo;->f:Lnwx;

    const v4, 0x3f351af1

    invoke-interface {v3, v4}, Lnwx;->g(F)V

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_35

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_35
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lmeo;

    iget v7, v4, Lmeo;->a:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v4, Lmeo;->a:I

    const v7, 0x3e4ccccd    # 0.2f

    iput v7, v4, Lmeo;->g:F

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_36

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_36
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lmeo;

    iget v7, v4, Lmeo;->a:I

    or-int/lit8 v7, v7, 0x40

    iput v7, v4, Lmeo;->a:I

    const v7, 0x3ccccccd    # 0.025f

    iput v7, v4, Lmeo;->j:F

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_37

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_37
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lmeo;

    iget v7, v4, Lmeo;->a:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v4, Lmeo;->a:I

    const/high16 v7, 0x3f000000    # 0.5f

    iput v7, v4, Lmeo;->i:F

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_38

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_38
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lmeo;

    iget v4, v3, Lmeo;->a:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Lmeo;->a:I

    iput v7, v3, Lmeo;->h:F

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lmeo;

    iget-object v3, v6, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_39

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_39
    iget-object v3, v6, Lnwp;->b:Lnws;

    check-cast v3, Lmea;

    sget-object v4, Lmea;->k:Lmea;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, Lmea;->e:Lmeo;

    iget v2, v3, Lmea;->a:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v3, Lmea;->a:I

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lddp;->i(I)Lmeb;

    move-result-object v3

    iget-object v2, v6, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_3a
    iget-object v2, v6, Lnwp;->b:Lnws;

    check-cast v2, Lmea;

    sget-object v4, Lmea;->k:Lmea;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v2, Lmea;->g:Lmeb;

    iget v3, v2, Lmea;->a:I

    const v4, 0x8000

    or-int/2addr v3, v4

    iput v3, v2, Lmea;->a:I

    iget-object v2, v5, Lddp;->c:Ldhi;

    sget-object v3, Ldht;->z:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    const/high16 v3, 0x100000

    if-eqz v2, :cond_52

    iget-object v2, v6, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_3b
    iget-object v2, v6, Lnwp;->b:Lnws;

    check-cast v2, Lmea;

    const/4 v4, 0x0

    iput v4, v2, Lmea;->h:I

    iget v4, v2, Lmea;->a:I

    or-int/2addr v3, v4

    iput v3, v2, Lmea;->a:I

    sget-object v2, Loaa;->d:Loaa;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    const-string v3, "oriole"

    invoke-virtual {v2, v3}, Lnwn;->K(Ljava/lang/String;)V

    const-string v3, "raven"

    invoke-virtual {v2, v3}, Lnwn;->K(Ljava/lang/String;)V

    const-string v3, "bluejay"

    invoke-virtual {v2, v3}, Lnwn;->K(Ljava/lang/String;)V

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_3c

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_3c
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Loaa;

    iget v4, v3, Loaa;->a:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Loaa;->a:I

    const/16 v4, 0x1e

    iput v4, v3, Loaa;->c:I

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Loaa;

    sget-object v3, Lnzt;->d:Lnzt;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_3d

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_3d
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Lnzt;

    const/4 v7, 0x0

    iput v7, v4, Lnzt;->b:I

    iget v7, v4, Lnzt;->a:I

    const/4 v8, 0x1

    or-int/2addr v7, v8

    iput v7, v4, Lnzt;->a:I

    sget-object v4, Loab;->e:Loab;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    iget-object v7, v4, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_3e

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_3e
    iget-object v7, v4, Lnwn;->b:Lnws;

    check-cast v7, Loab;

    const/4 v8, 0x4

    iput v8, v7, Loab;->b:I

    iget v8, v7, Loab;->a:I

    const/4 v9, 0x1

    or-int/2addr v8, v9

    iput v8, v7, Loab;->a:I

    sget-object v7, Lnzx;->c:Lnzx;

    invoke-virtual {v7}, Lnws;->O()Lnwn;

    move-result-object v7

    iget-object v8, v7, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_3f

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_3f
    iget-object v8, v7, Lnwn;->b:Lnws;

    check-cast v8, Lnzx;

    const/4 v9, 0x2

    iput v9, v8, Lnzx;->b:I

    iget v9, v8, Lnzx;->a:I

    const/4 v10, 0x1

    or-int/2addr v9, v10

    iput v9, v8, Lnzx;->a:I

    iget-object v8, v4, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_40

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_40
    iget-object v8, v4, Lnwn;->b:Lnws;

    check-cast v8, Loab;

    invoke-virtual {v7}, Lnwn;->i()Lnws;

    move-result-object v7

    check-cast v7, Lnzx;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v8, Loab;->c:Lnzx;

    iget v7, v8, Loab;->a:I

    or-int/lit16 v7, v7, 0x400

    iput v7, v8, Loab;->a:I

    sget-object v7, Lnzx;->c:Lnzx;

    invoke-virtual {v7}, Lnws;->O()Lnwn;

    move-result-object v7

    iget-object v8, v7, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_41

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_41
    iget-object v8, v7, Lnwn;->b:Lnws;

    check-cast v8, Lnzx;

    const/4 v9, 0x2

    iput v9, v8, Lnzx;->b:I

    iget v9, v8, Lnzx;->a:I

    const/4 v10, 0x1

    or-int/2addr v9, v10

    iput v9, v8, Lnzx;->a:I

    iget-object v8, v4, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_42

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_42
    iget-object v8, v4, Lnwn;->b:Lnws;

    check-cast v8, Loab;

    invoke-virtual {v7}, Lnwn;->i()Lnws;

    move-result-object v7

    check-cast v7, Lnzx;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v8, Loab;->d:Lnzx;

    iget v7, v8, Loab;->a:I

    or-int/lit16 v7, v7, 0x800

    iput v7, v8, Loab;->a:I

    iget-object v7, v3, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_43

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_43
    iget-object v7, v3, Lnwn;->b:Lnws;

    check-cast v7, Lnzt;

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Loab;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v7, Lnzt;->c:Loab;

    iget v4, v7, Lnzt;->a:I

    const/4 v8, 0x2

    or-int/2addr v4, v8

    iput v4, v7, Lnzt;->a:I

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lnzt;

    sget-object v4, Lnzu;->b:Lnzu;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    sget-object v7, Lddp;->b:[Ljava/lang/String;

    array-length v8, v7

    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x3

    if-ge v8, v9, :cond_4e

    aget-object v9, v7, v8

    sget-object v10, Lnzv;->e:Lnzv;

    invoke-virtual {v10}, Lnws;->O()Lnwn;

    move-result-object v10

    sget-object v11, Lnzy;->d:Lnzy;

    invoke-virtual {v11}, Lnws;->O()Lnwn;

    move-result-object v11

    iget-object v12, v11, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_44

    invoke-virtual {v11}, Lnwn;->p()V

    :cond_44
    iget-object v12, v11, Lnwn;->b:Lnws;

    check-cast v12, Lnzy;

    iget v13, v12, Lnzy;->a:I

    const/4 v14, 0x1

    or-int/2addr v13, v14

    iput v13, v12, Lnzy;->a:I

    const-string v13, "com.google.perception"

    iput-object v13, v12, Lnzy;->b:Ljava/lang/String;

    sget-object v12, Lnzz;->c:Lnzz;

    invoke-virtual {v12}, Lnws;->O()Lnwn;

    move-result-object v12

    iget-object v13, v12, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_45

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_45
    iget-object v13, v12, Lnwn;->b:Lnws;

    check-cast v13, Lnzz;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v14, v13, Lnzz;->a:I

    const/4 v15, 0x2

    or-int/2addr v14, v15

    iput v14, v13, Lnzz;->a:I

    iput-object v9, v13, Lnzz;->b:Ljava/lang/String;

    iget-object v9, v11, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_46

    invoke-virtual {v11}, Lnwn;->p()V

    :cond_46
    iget-object v9, v11, Lnwn;->b:Lnws;

    check-cast v9, Lnzy;

    invoke-virtual {v12}, Lnwn;->i()Lnws;

    move-result-object v12

    check-cast v12, Lnzz;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v12, v9, Lnzy;->c:Lnzz;

    iget v12, v9, Lnzy;->a:I

    const/4 v13, 0x2

    or-int/2addr v12, v13

    iput v12, v9, Lnzy;->a:I

    iget-object v9, v10, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_47

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_47
    iget-object v9, v10, Lnwn;->b:Lnws;

    check-cast v9, Lnzv;

    invoke-virtual {v11}, Lnwn;->i()Lnws;

    move-result-object v11

    check-cast v11, Lnzy;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v11, v9, Lnzv;->b:Lnzy;

    iget v11, v9, Lnzv;->a:I

    const/4 v12, 0x1

    or-int/2addr v11, v12

    iput v11, v9, Lnzv;->a:I

    iget-object v9, v10, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_48

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_48
    iget-object v9, v10, Lnwn;->b:Lnws;

    check-cast v9, Lnzv;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v9, Lnzv;->c:Lnxa;

    invoke-interface {v11}, Lnxa;->c()Z

    move-result v13

    if-nez v13, :cond_49

    invoke-static {v11}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v11

    iput-object v11, v9, Lnzv;->c:Lnxa;

    :cond_49
    iget-object v9, v9, Lnzv;->c:Lnxa;

    invoke-interface {v9, v2}, Lnxa;->add(Ljava/lang/Object;)Z

    iget-object v9, v10, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_4a

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_4a
    iget-object v9, v10, Lnwn;->b:Lnws;

    check-cast v9, Lnzv;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v9, Lnzv;->d:Lnxa;

    invoke-interface {v11}, Lnxa;->c()Z

    move-result v13

    if-nez v13, :cond_4b

    invoke-static {v11}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v11

    iput-object v11, v9, Lnzv;->d:Lnxa;

    :cond_4b
    iget-object v9, v9, Lnzv;->d:Lnxa;

    invoke-interface {v9, v3}, Lnxa;->add(Ljava/lang/Object;)Z

    iget-object v9, v4, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_4c

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_4c
    iget-object v9, v4, Lnwn;->b:Lnws;

    check-cast v9, Lnzu;

    invoke-virtual {v10}, Lnwn;->i()Lnws;

    move-result-object v10

    check-cast v10, Lnzv;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v9, Lnzu;->a:Lnxa;

    invoke-interface {v11}, Lnxa;->c()Z

    move-result v13

    if-nez v13, :cond_4d

    invoke-static {v11}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v11

    iput-object v11, v9, Lnzu;->a:Lnxa;

    :cond_4d
    iget-object v9, v9, Lnzu;->a:Lnxa;

    invoke-interface {v9, v10}, Lnxa;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_4e
    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lnzu;

    iget-object v3, v6, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_4f

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_4f
    iget-object v3, v6, Lnwp;->b:Lnws;

    check-cast v3, Lmea;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, Lmea;->i:Lnzu;

    iget v2, v3, Lmea;->a:I

    const/high16 v4, 0x200000

    or-int/2addr v2, v4

    iput v2, v3, Lmea;->a:I

    iget-object v2, v5, Lddp;->d:Landroid/content/Context;

    const-string v3, "cvk_model_cache/v1"

    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_50

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_50

    const-string v2, "CacheUtil"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to create accelerator cache directory "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_3

    :cond_50
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v2}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_54

    iget-object v3, v6, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_51

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_51
    iget-object v3, v6, Lnwp;->b:Lnws;

    check-cast v3, Lmea;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v3, Lmea;->a:I

    const/high16 v7, 0x800000

    or-int/2addr v4, v7

    iput v4, v3, Lmea;->a:I

    iput-object v2, v3, Lmea;->j:Ljava/lang/String;

    goto :goto_4

    :cond_52
    iget-object v2, v6, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_53

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_53
    iget-object v2, v6, Lnwp;->b:Lnws;

    check-cast v2, Lmea;

    const/4 v4, 0x2

    iput v4, v2, Lmea;->h:I

    iget v4, v2, Lmea;->a:I

    or-int/2addr v3, v4

    iput v3, v2, Lmea;->a:I

    :cond_54
    :goto_4
    invoke-virtual {v5, v6}, Lddp;->j(Lnwp;)Lmdx;

    move-result-object v2

    iput-object v2, v1, Ldea;->e:Lmdx;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v2, v0

    sget-object v3, Ldea;->d:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    const-string v4, "Failed to read assets for Non Barcode engines. Starting VisionKit with barcode only configuration"

    const/16 v5, 0x349

    invoke-static {v3, v4, v5, v2}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-object v2, v1, Ldea;->f:Lddp;

    invoke-virtual {v2}, Lddp;->k()Lnwp;

    move-result-object v3

    invoke-virtual {v2, v3}, Lddp;->m(Lnwp;)V

    invoke-virtual {v2, v3}, Lddp;->l(Lnwp;)V

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lddp;->i(I)Lmeb;

    move-result-object v4

    iget-object v5, v3, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_55

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_55
    iget-object v5, v3, Lnwp;->b:Lnws;

    check-cast v5, Lmea;

    sget-object v6, Lmea;->k:Lmea;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lmea;->g:Lmeb;

    iget v4, v5, Lmea;->a:I

    const v6, 0x8000

    or-int/2addr v4, v6

    iput v4, v5, Lmea;->a:I

    invoke-virtual {v2, v3}, Lddp;->j(Lnwp;)Lmdx;

    move-result-object v2

    iput-object v2, v1, Ldea;->e:Lmdx;

    :goto_5
    new-instance v2, Lddz;

    iget-object v3, v1, Ldea;->e:Lmdx;

    invoke-direct {v2, v1, v3}, Lddz;-><init>(Ldea;Lmdx;)V

    iput-object v2, v1, Ldea;->g:Lddz;

    :cond_56
    iget-object v2, v1, Ldea;->i:Lkbc;

    const-string v3, "camera_vkp_start"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    :try_start_2
    iget-object v2, v1, Ldea;->g:Lddz;

    const-string v3, "CameraVisionKitPipeline needs to be initialized first"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Llkj;->B(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v3, v2, Lmdw;->c:J
    :try_end_2
    .catch Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException; {:try_start_2 .. :try_end_2} :catch_2

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_57

    :try_start_3
    iget-object v5, v2, Lmdw;->b:Lmdu;

    invoke-interface {v5, v3, v4}, Lmdu;->start(J)V

    iget-object v3, v2, Lmdw;->b:Lmdu;

    iget-wide v4, v2, Lmdw;->c:J

    invoke-interface {v3, v4, v5}, Lmdu;->waitUntilIdle(J)V
    :try_end_3
    .catch Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    iget-object v4, v2, Lmdw;->b:Lmdu;

    iget-wide v5, v2, Lmdw;->c:J

    invoke-interface {v4, v5, v6}, Lmdu;->stop(J)Z

    throw v3

    :cond_57
    new-instance v2, Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException;

    sget-object v3, Lmdy;->j:Lmdy;

    invoke-virtual {v3}, Lmdy;->ordinal()I

    move-result v3

    const-string v4, "Pipeline has been closed or was not initialized"

    invoke-direct {v2, v3, v4}, Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_4
    .catch Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    move-object v2, v0

    const-string v3, "Unable to start VisionKitPipeline"

    invoke-direct {v1, v2, v3}, Ldea;->l(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_6
    iget-object v2, v1, Ldea;->i:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    return-void
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Ldea;->i:Lkbc;

    const-string v1, "camera_vkp_enable_sub_pipeline"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Ldea;->g:Lddz;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CameraVisionKitPipeline needs to be initialized first"

    invoke-static {v0, v2, v1}, Llkj;->B(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v1, v0, Lmdw;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v0, "VKP"

    const-string v1, "enableSubpipeline called but pipeline is not available. Ignoring call."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lmdw;->b:Lmdu;

    const-string v3, "LazyPipeline"

    invoke-interface {v0, v1, v2, v3}, Lmdu;->enableSubpipeline(JLjava/lang/String;)Z

    :goto_0
    iget-object v0, p0, Ldea;->i:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Ldea;->g:Lddz;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmdw;->c()V

    iget-object v0, p0, Ldea;->f:Lddp;

    invoke-virtual {v0}, Lddp;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "Unable to close Vision kit"

    invoke-direct {p0, v0, v1}, Ldea;->l(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Ldea;->g:Lddz;

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 6

    iget-object v0, p0, Ldea;->i:Lkbc;

    const-string v1, "camera_vkp_disable_sub_pipeline"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Ldea;->g:Lddz;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CameraVisionKitPipeline needs to be initialized first"

    invoke-static {v0, v2, v1}, Llkj;->B(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v1, v0, Lmdw;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v0, "VKP"

    const-string v1, "disableSubpipeline called but pipeline is not available. Ignoring call."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lmdw;->b:Lmdu;

    const-string v3, "LazyPipeline"

    invoke-interface {v0, v1, v2, v3}, Lmdu;->disableSubpipeline(JLjava/lang/String;)Z

    :goto_0
    iget-object v0, p0, Ldea;->i:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method public final h(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)Z
    .locals 15

    move-object v0, p0

    move/from16 v9, p6

    move/from16 v10, p7

    iget-object v1, v0, Ldea;->b:Ldes;

    iget-object v1, v1, Ldes;->b:Ldeg;

    iput v9, v1, Ldeg;->h:I

    iput v10, v1, Ldeg;->i:I

    iget-object v1, v1, Ldeg;->f:Ldeu;

    iput v9, v1, Ldeu;->d:I

    iput v10, v1, Ldeu;->e:I

    iget-object v1, v0, Ldea;->g:Lddz;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CameraVisionKitPipeline needs to be initialized first"

    invoke-static {v1, v3, v2}, Llkj;->B(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v2, v1, Lmdw;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lmdw;->b:Lmdu;

    iget-wide v3, v1, Lmdw;->c:J

    move-object v1, v2

    move-wide v2, v3

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-interface/range {v1 .. v14}, Lmdu;->receiveYuvFrame(JJLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)Z

    move-result v1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Byte buffers are not direct."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Pipeline has been closed or was not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final declared-synchronized i()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldea;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput v1, p0, Ldea;->k:I

    iget-object v0, p0, Ldea;->g:Lddz;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    iget-object v2, p0, Ldea;->f:Lddp;

    invoke-virtual {v2, v1}, Lddp;->i(I)Lmeb;

    move-result-object v1

    iget-object v2, v0, Lmdw;->b:Lmdu;

    iget-wide v3, v0, Lmdw;->c:J

    invoke-virtual {v1}, Lnve;->J()[B

    move-result-object v0

    invoke-interface {v2, v3, v4, v0}, Lmdu;->resetSchedulingOptimizerOptions(J[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j(Loxq;)V
    .locals 1

    iget-object v0, p0, Ldea;->b:Ldes;

    iget-object v0, v0, Ldes;->b:Ldeg;

    iput-object p1, v0, Ldeg;->k:Loxq;

    iget-object v0, v0, Ldeg;->f:Ldeu;

    iput-object p1, v0, Ldeu;->f:Loxq;

    return-void
.end method

.method public final k(Ldef;)V
    .locals 1

    iget-object v0, p0, Ldea;->c:Lddw;

    invoke-interface {v0, p1}, Lddw;->d(Ldef;)V

    return-void
.end method
