.class public final Lccn;
.super Lkfg;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lfbz;

.field private final c:Ljava/lang/Boolean;

.field private final d:F

.field private final e:Ljvs;

.field private final f:Lklv;

.field private final g:Z

.field private final h:Lika;

.field private final i:Lkll;

.field private j:I

.field private final k:Ljava/util/List;

.field private l:Lkou;

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/aaa/Stats3AEventManager"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lccn;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lfbz;Ljava/lang/Boolean;Lkli;Ljvs;Lkll;Lika;)V
    .locals 1

    invoke-direct {p0}, Lkfg;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccn;->k:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lccn;->l:Lkou;

    const/4 v0, -0x1

    iput v0, p0, Lccn;->m:I

    iput v0, p0, Lccn;->n:I

    iput v0, p0, Lccn;->o:I

    iput-object p1, p0, Lccn;->b:Lfbz;

    iput-object p2, p0, Lccn;->c:Ljava/lang/Boolean;

    iput-object p4, p0, Lccn;->e:Ljvs;

    invoke-interface {p3}, Lkli;->h()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int p2, p2, p1

    int-to-float p1, p2

    iput p1, p0, Lccn;->d:F

    invoke-interface {p3}, Lkli;->k()Lklv;

    move-result-object p1

    iput-object p1, p0, Lccn;->f:Lklv;

    iput-object p5, p0, Lccn;->i:Lkll;

    invoke-interface {p3}, Lkli;->M()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p3}, Lkli;->D()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    iput-boolean p2, p0, Lccn;->g:Z

    iput-object p6, p0, Lccn;->h:Lika;

    return-void
.end method

.method private final p(Lkou;)Lccm;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    sget-object v2, Liuy;->j:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    sget-object v2, Liuy;->j:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v2}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_5

    array-length v6, v2

    if-lez v6, :cond_5

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v2, Lmpp;->o:Lmpp;

    sget-object v7, Lnwh;->a:Lnwh;

    :try_start_0
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ne v8, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v8, v6}, Lnvy;->G(ILjava/io/InputStream;)I

    move-result v8
    :try_end_0
    .catch Lnxd; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    new-instance v9, Lnvc;

    invoke-direct {v9, v6, v8}, Lnvc;-><init>(Ljava/io/InputStream;I)V

    invoke-static {v9}, Lnvy;->I(Ljava/io/InputStream;)Lnvy;

    move-result-object v6

    invoke-virtual {v2}, Lnws;->P()Lnws;

    move-result-object v2

    :try_start_1
    sget-object v8, Lnyh;->a:Lnyh;

    invoke-virtual {v8, v2}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v8

    invoke-static {v6}, Lnvz;->p(Lnvy;)Lnvz;

    move-result-object v9

    invoke-interface {v8, v2, v9, v7}, Lnyo;->h(Ljava/lang/Object;Lnyk;Lnwh;)V

    invoke-interface {v8, v2}, Lnyo;->f(Ljava/lang/Object;)V
    :try_end_1
    .catch Lnxd; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lnyz; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v6, v4}, Lnvy;->z(I)V
    :try_end_2
    .catch Lnxd; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    invoke-static {v2}, Lnws;->ae(Lnws;)V

    check-cast v2, Lmpp;

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    throw v2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lnxd;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lnxd;

    throw v0

    :cond_1
    throw v0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lnxd;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lnxd;

    throw v0

    :cond_2
    new-instance v2, Lnxd;

    invoke-direct {v2, v0}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw v2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lnyz;->a()Lnxd;

    move-result-object v0

    throw v0

    :catch_4
    move-exception v0

    iget-boolean v2, v0, Lnxd;->a:Z

    if-eqz v2, :cond_3

    new-instance v2, Lnxd;

    invoke-direct {v2, v0}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw v2

    :cond_3
    throw v0

    :catch_5
    move-exception v0

    new-instance v2, Lnxd;

    invoke-direct {v2, v0}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw v2

    :catch_6
    move-exception v0

    iget-boolean v2, v0, Lnxd;->a:Z

    if-eqz v2, :cond_4

    new-instance v2, Lnxd;

    invoke-direct {v2, v0}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw v2

    :cond_4
    throw v0

    :cond_5
    const/4 v2, 0x0

    :goto_1
    sget-object v6, Liuy;->k:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v6, :cond_b

    invoke-interface {v0, v6}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    if-eqz v6, :cond_b

    array-length v7, v6

    if-lez v7, :cond_b

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v6, Lmpn;->s:Lmpn;

    sget-object v8, Lnwh;->a:Lnwh;

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v9

    if-ne v9, v3, :cond_6

    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    invoke-static {v9, v7}, Lnvy;->G(ILjava/io/InputStream;)I

    move-result v9
    :try_end_3
    .catch Lnxd; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c

    new-instance v10, Lnvc;

    invoke-direct {v10, v7, v9}, Lnvc;-><init>(Ljava/io/InputStream;I)V

    invoke-static {v10}, Lnvy;->I(Ljava/io/InputStream;)Lnvy;

    move-result-object v7

    invoke-virtual {v6}, Lnws;->P()Lnws;

    move-result-object v6

    :try_start_4
    sget-object v9, Lnyh;->a:Lnyh;

    invoke-virtual {v9, v6}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v9

    invoke-static {v7}, Lnvz;->p(Lnvy;)Lnvz;

    move-result-object v10

    invoke-interface {v9, v6, v10, v8}, Lnyo;->h(Ljava/lang/Object;Lnyk;Lnwh;)V

    invoke-interface {v9, v6}, Lnyo;->f(Ljava/lang/Object;)V
    :try_end_4
    .catch Lnxd; {:try_start_4 .. :try_end_4} :catch_b
    .catch Lnyz; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_8

    :try_start_5
    invoke-virtual {v7, v4}, Lnvy;->z(I)V
    :try_end_5
    .catch Lnxd; {:try_start_5 .. :try_end_5} :catch_7

    :goto_2
    invoke-static {v6}, Lnws;->ae(Lnws;)V

    check-cast v6, Lmpn;

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v2, v0

    throw v2

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lnxd;

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lnxd;

    throw v0

    :cond_7
    throw v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lnxd;

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lnxd;

    throw v0

    :cond_8
    new-instance v2, Lnxd;

    invoke-direct {v2, v0}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw v2

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Lnyz;->a()Lnxd;

    move-result-object v0

    throw v0

    :catch_b
    move-exception v0

    iget-boolean v2, v0, Lnxd;->a:Z

    if-eqz v2, :cond_9

    new-instance v2, Lnxd;

    invoke-direct {v2, v0}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw v2

    :cond_9
    throw v0

    :catch_c
    move-exception v0

    new-instance v2, Lnxd;

    invoke-direct {v2, v0}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw v2

    :catch_d
    move-exception v0

    iget-boolean v2, v0, Lnxd;->a:Z

    if-eqz v2, :cond_a

    new-instance v2, Lnxd;

    invoke-direct {v2, v0}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw v2

    :cond_a
    throw v0

    :cond_b
    const/4 v6, 0x0

    :goto_3
    sget-object v7, Liuy;->l:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v7, :cond_11

    invoke-interface {v0, v7}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    if-eqz v7, :cond_11

    array-length v8, v7

    if-lez v8, :cond_11

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v7, Lmpo;->k:Lmpo;

    sget-object v9, Lnwh;->a:Lnwh;

    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v10

    if-ne v10, v3, :cond_c

    const/4 v7, 0x0

    goto :goto_4

    :cond_c
    invoke-static {v10, v8}, Lnvy;->G(ILjava/io/InputStream;)I

    move-result v3
    :try_end_6
    .catch Lnxd; {:try_start_6 .. :try_end_6} :catch_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_13

    new-instance v10, Lnvc;

    invoke-direct {v10, v8, v3}, Lnvc;-><init>(Ljava/io/InputStream;I)V

    invoke-static {v10}, Lnvy;->I(Ljava/io/InputStream;)Lnvy;

    move-result-object v3

    invoke-virtual {v7}, Lnws;->P()Lnws;

    move-result-object v7

    :try_start_7
    sget-object v8, Lnyh;->a:Lnyh;

    invoke-virtual {v8, v7}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v8

    invoke-static {v3}, Lnvz;->p(Lnvy;)Lnvz;

    move-result-object v10

    invoke-interface {v8, v7, v10, v9}, Lnyo;->h(Ljava/lang/Object;Lnyk;Lnwh;)V

    invoke-interface {v8, v7}, Lnyo;->f(Ljava/lang/Object;)V
    :try_end_7
    .catch Lnxd; {:try_start_7 .. :try_end_7} :catch_12
    .catch Lnyz; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_f

    :try_start_8
    invoke-virtual {v3, v4}, Lnvy;->z(I)V
    :try_end_8
    .catch Lnxd; {:try_start_8 .. :try_end_8} :catch_e

    :goto_4
    invoke-static {v7}, Lnws;->ae(Lnws;)V

    check-cast v7, Lmpo;

    goto :goto_5

    :catch_e
    move-exception v0

    move-object v2, v0

    throw v2

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lnxd;

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lnxd;

    throw v0

    :cond_d
    throw v0

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lnxd;

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lnxd;

    throw v0

    :cond_e
    new-instance v2, Lnxd;

    invoke-direct {v2, v0}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw v2

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Lnyz;->a()Lnxd;

    move-result-object v0

    throw v0

    :catch_12
    move-exception v0

    iget-boolean v2, v0, Lnxd;->a:Z

    if-eqz v2, :cond_f

    new-instance v2, Lnxd;

    invoke-direct {v2, v0}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw v2

    :cond_f
    throw v0

    :catch_13
    move-exception v0

    new-instance v2, Lnxd;

    invoke-direct {v2, v0}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw v2

    :catch_14
    move-exception v0

    iget-boolean v2, v0, Lnxd;->a:Z

    if-eqz v2, :cond_10

    new-instance v2, Lnxd;

    invoke-direct {v2, v0}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw v2

    :cond_10
    throw v0

    :cond_11
    const/4 v7, 0x0

    :goto_5
    const/4 v3, 0x1

    if-eqz v2, :cond_12

    const/4 v8, 0x1

    goto :goto_6

    :cond_12
    const/4 v8, 0x0

    :goto_6
    if-eqz v6, :cond_13

    const/4 v9, 0x1

    goto :goto_7

    :cond_13
    const/4 v9, 0x0

    :goto_7
    if-eqz v7, :cond_14

    const/4 v10, 0x1

    goto :goto_8

    :cond_14
    const/4 v10, 0x0

    :goto_8
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_16

    iget v15, v2, Lmpp;->a:F

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v2, Lmpp;->c:F

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v2, Lmpp;->d:F

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v2, Lmpp;->e:F

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v2, Lmpp;->f:F

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v15, v2, Lmpp;->g:Z

    if-eq v3, v15, :cond_15

    const/4 v15, 0x0

    goto :goto_9

    :cond_15
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_9
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v2, Lmpp;->h:F

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v2, Lmpp;->i:F

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v2, Lmpp;->j:F

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v2, Lmpp;->k:F

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v2, Lmpp;->l:F

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v2, Lmpp;->m:F

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v2, Lmpp;->n:F

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_16
    const/4 v15, 0x0

    :goto_a
    const/16 v5, 0xd

    if-ge v15, v5, :cond_17

    sget-object v5, Lmpx;->a:Lmpx;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    :cond_17
    :goto_b
    const/4 v5, 0x5

    if-eqz v9, :cond_1a

    iget v15, v6, Lmpn;->a:I

    int-to-float v15, v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v15, v6, Lmpn;->b:Z

    if-eq v3, v15, :cond_18

    const/4 v15, 0x0

    goto :goto_c

    :cond_18
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_c
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v6, Lmpn;->c:I

    int-to-float v15, v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v15, v6, Lmpn;->e:Z

    if-eq v3, v15, :cond_19

    const/4 v15, 0x0

    goto :goto_d

    :cond_19
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_d
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v6, Lmpn;->g:F

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1a
    const/4 v15, 0x0

    :goto_e
    if-ge v15, v5, :cond_1b

    sget-object v5, Lmpx;->a:Lmpx;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x5

    goto :goto_e

    :cond_1b
    :goto_f
    const/16 v5, 0x9

    if-eqz v10, :cond_1c

    iget v15, v7, Lmpo;->a:I

    int-to-float v15, v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v7, Lmpo;->b:I

    int-to-float v15, v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v7, Lmpo;->c:I

    int-to-float v15, v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v7, Lmpo;->d:I

    int-to-float v15, v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v7, Lmpo;->e:I

    int-to-float v15, v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v7, Lmpo;->f:I

    int-to-float v15, v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v7, Lmpo;->g:I

    int-to-float v15, v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v7, Lmpo;->h:I

    int-to-float v15, v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v15, v7, Lmpo;->i:I

    int-to-float v15, v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1c
    const/4 v15, 0x0

    :goto_10
    if-ge v15, v5, :cond_1d

    sget-object v5, Lmpx;->a:Lmpx;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/16 v5, 0x9

    goto :goto_10

    :cond_1d
    :goto_11
    invoke-static {v0, v4, v3, v4}, Lccn;->q(Lkou;ZZZ)Lmqp;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-static {v5}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v3, v4, v4}, Lccn;->q(Lkou;ZZZ)Lmqp;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    const/4 v15, 0x3

    if-eqz v9, :cond_1e

    iget-object v13, v6, Lmpn;->f:Lnwx;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-lt v14, v15, :cond_1e

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    goto :goto_12

    :cond_1e
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    :goto_12
    invoke-static {v14}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v17 .. v17}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v4, v4, v3}, Lccn;->q(Lkou;ZZZ)Lmqp;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v13, v1, Lccn;->d:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v13}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v13, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v13}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/hardware/camera2/params/Face;

    if-eqz v13, :cond_20

    array-length v14, v13

    if-lez v14, :cond_20

    int-to-float v4, v14

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v16, 0x0

    :goto_13
    if-ge v5, v14, :cond_1f

    aget-object v18, v13, v5

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v19

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    mul-int v15, v19, v18

    int-to-float v15, v15

    add-float v16, v16, v15

    add-int/lit8 v5, v5, 0x1

    const/4 v15, 0x3

    goto :goto_13

    :cond_1f
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object/from16 v16, v5

    move-object v5, v4

    goto :goto_14

    :cond_20
    const/4 v5, 0x0

    const/16 v16, 0x0

    :goto_14
    invoke-static {v5}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v16 .. v16}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lccn;->e:Ljvs;

    invoke-interface {v4}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-static {v4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_21

    invoke-virtual {v4}, Ljava/lang/Integer;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    goto :goto_15

    :cond_21
    sget-object v4, Lmpx;->a:Lmpx;

    :goto_15
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_23

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v3, v4, :cond_22

    const/4 v13, 0x0

    goto :goto_16

    :cond_22
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_16
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_23
    sget-object v4, Lmpx;->a:Lmpx;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_17
    if-eqz v9, :cond_24

    iget v4, v6, Lmpn;->j:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_24
    sget-object v4, Lmpx;->a:Lmpx;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_18
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_26

    iget v4, v6, Lmpn;->d:I

    invoke-static {v4}, Lmoz;->c(I)I

    move-result v4

    if-nez v4, :cond_25

    const/4 v4, 0x1

    :cond_25
    invoke-static {v4}, Lmoz;->b(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_26
    sget-object v4, Lmpx;->a:Lmpx;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_19
    if-eqz v8, :cond_27

    iget v2, v2, Lmpp;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_27
    sget-object v2, Lmpx;->a:Lmpx;

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1a
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v2}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_28

    iget v2, v7, Lmpo;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_28
    sget-object v2, Lmpx;->a:Lmpx;

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1b
    const/4 v2, 0x6

    const/16 v4, 0xa

    const/4 v5, 0x4

    if-eqz v9, :cond_2c

    iget v7, v6, Lmpn;->h:I

    invoke-static {v7}, Lmoz;->c(I)I

    move-result v7

    if-nez v7, :cond_29

    const/4 v7, 0x1

    :cond_29
    invoke-static {v7}, Lmoz;->b(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v7, v6, Lmpn;->i:I

    packed-switch v7, :pswitch_data_0

    const/4 v7, 0x0

    goto :goto_1c

    :pswitch_0
    const/16 v7, 0x8

    goto :goto_1c

    :pswitch_1
    const/4 v7, 0x7

    goto :goto_1c

    :pswitch_2
    const/4 v7, 0x6

    goto :goto_1c

    :pswitch_3
    const/4 v7, 0x5

    goto :goto_1c

    :pswitch_4
    const/4 v7, 0x4

    goto :goto_1c

    :pswitch_5
    const/4 v7, 0x3

    goto :goto_1c

    :pswitch_6
    const/4 v7, 0x2

    :goto_1c
    if-nez v7, :cond_2a

    const/4 v7, 0x1

    :cond_2a
    if-eq v7, v3, :cond_2b

    add-int/lit8 v7, v7, -0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v7, v6, Lmpn;->k:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v7, v6, Lmpn;->l:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v7, v6, Lmpn;->m:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v7, v6, Lmpn;->n:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v7, v6, Lmpn;->o:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v7, v6, Lmpn;->p:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v7, v6, Lmpn;->q:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, v6, Lmpn;->r:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    const/4 v6, 0x0

    :goto_1d
    if-ge v6, v4, :cond_2d

    sget-object v7, Lmpx;->a:Lmpx;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_2d
    :goto_1e
    iget-object v6, v1, Lccn;->f:Lklv;

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v7}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v7, Lklv;->c:Lklv;

    if-ne v6, v7, :cond_2e

    const/4 v0, 0x4

    goto :goto_20

    :cond_2e
    sget-object v7, Lklv;->a:Lklv;

    if-eqz v0, :cond_33

    iget-boolean v8, v1, Lccn;->g:Z

    if-nez v8, :cond_2f

    goto :goto_1f

    :cond_2f
    iget-object v8, v1, Lccn;->i:Lkll;

    iget-object v8, v8, Lkll;->a:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    if-ne v6, v7, :cond_30

    const/16 v0, 0xb

    goto :goto_20

    :cond_30
    const/16 v0, 0x9

    goto :goto_20

    :cond_31
    if-ne v6, v7, :cond_32

    const/16 v0, 0xc

    goto :goto_20

    :cond_32
    const/16 v0, 0xa

    goto :goto_20

    :cond_33
    :goto_1f
    if-ne v6, v7, :cond_34

    const/4 v0, 0x2

    goto :goto_20

    :cond_34
    const/4 v0, 0x3

    :goto_20
    invoke-static {v11}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v4

    if-eqz v4, :cond_37

    invoke-static {v12}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v6

    if-eqz v6, :cond_36

    iget-object v7, v1, Lccn;->h:Lika;

    sget-object v8, Lika;->a:Lika;

    invoke-virtual {v7}, Lika;->ordinal()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    const/4 v5, 0x1

    goto :goto_21

    :sswitch_0
    const/4 v5, 0x5

    goto :goto_21

    :sswitch_1
    goto :goto_21

    :sswitch_2
    const/4 v5, 0x6

    goto :goto_21

    :sswitch_3
    const/4 v5, 0x3

    goto :goto_21

    :sswitch_4
    const/4 v5, 0x2

    :goto_21
    new-instance v2, Lccm;

    invoke-direct {v2, v4, v6, v0, v5}, Lccm;-><init>(Lmvv;Lmvv;II)V

    iget-object v0, v2, Lccm;->a:Lmvv;

    invoke-virtual {v0}, Lmvv;->size()I

    move-result v0

    const/16 v4, 0x11

    const/16 v5, 0x29

    if-ne v0, v5, :cond_35

    iget-object v0, v2, Lccm;->b:Lmvv;

    invoke-virtual {v0}, Lmvv;->size()I

    move-result v0

    if-ne v0, v4, :cond_35

    const/4 v6, 0x1

    goto :goto_22

    :cond_35
    const/4 v6, 0x0

    :goto_22
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v0, v2, Lccm;->a:Lmvv;

    invoke-virtual {v0}, Lmvv;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v0, v2, Lccm;->b:Lmvv;

    invoke-virtual {v0}, Lmvv;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v7, "Incorrect number of data fields. expected floats=%s, integers=%s. received floats=%s, integers=%s"

    invoke-static/range {v6 .. v11}, Lmoz;->v(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null dataFieldsInteger"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null dataFieldsFloat"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_24

    :goto_23
    throw v0

    :goto_24
    goto :goto_23

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x6 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method private static q(Lkou;ZZZ)Lmqp;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, p1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/MeteringRectangle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v2, Lccn;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    const-string v3, "Error retrieving CONTROL_AF_REGIONS."

    const/16 v4, 0x12

    invoke-static {v2, v3, v4, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_0

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, p1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz p1, :cond_1

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_1
    if-eqz p3, :cond_2

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, p1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz p0, :cond_2

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p0, :cond_3

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p3}, Landroid/hardware/camera2/params/MeteringRectangle;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/hardware/camera2/params/MeteringRectangle;->getHeight()I

    move-result p3

    mul-int v1, v1, p3

    int-to-float p3, v1

    add-float/2addr p1, p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_2

    :cond_4
    :goto_2
    invoke-static {v1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized r(Ljava/util/List;II)V
    .locals 68

    move-object/from16 v1, p0

    move/from16 v2, p2

    monitor-enter p0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    move/from16 v5, p3

    if-eq v5, v3, :cond_1

    const/4 v5, 0x2

    :cond_1
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    if-ne v5, v4, :cond_2

    move-object/from16 v9, p1

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccm;

    iget-object v7, v6, Lccm;->a:Lmvv;

    iget-object v10, v6, Lccm;->b:Lmvv;

    iget v11, v6, Lccm;->c:I

    iget v6, v6, Lccm;->d:I

    move-object/from16 v67, v7

    move v7, v6

    move-object/from16 v6, v67

    goto :goto_0

    :cond_2
    move-object/from16 v9, p1

    move-object v10, v7

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_0
    const/4 v12, 0x1

    if-ne v5, v3, :cond_7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_1
    const/16 v11, 0x29

    if-ge v10, v11, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lccm;

    iget-object v15, v15, Lccm;->a:Lmvv;

    invoke-virtual {v15, v10}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmqp;

    invoke-virtual {v15}, Lmqp;->g()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v15}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float/2addr v13, v14

    const/4 v14, 0x1

    goto :goto_2

    :cond_4
    if-eqz v14, :cond_5

    int-to-float v11, v7

    div-float/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v11}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v11

    goto :goto_3

    :cond_5
    sget-object v11, Lmpx;->a:Lmpx;

    :goto_3
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    invoke-static/range {p1 .. p1}, Llyh;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccm;

    iget-object v10, v7, Lccm;->b:Lmvv;

    iget v11, v7, Lccm;->c:I

    iget v7, v7, Lccm;->d:I

    :cond_7
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmqp;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmqp;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmqp;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmqp;

    const/4 v3, 0x4

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lmqp;

    const/4 v3, 0x5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lmqp;

    const/4 v3, 0x6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lmqp;

    const/4 v3, 0x7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lmqp;

    const/16 v3, 0x8

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lmqp;

    const/16 v3, 0x9

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lmqp;

    const/16 v3, 0xa

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lmqp;

    const/16 v3, 0xb

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lmqp;

    const/16 v3, 0xc

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lmqp;

    const/16 v3, 0xd

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lmqp;

    const/16 v3, 0xe

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lmqp;

    const/16 v3, 0xf

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lmqp;

    const/16 v3, 0x10

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lmqp;

    const/16 v3, 0x11

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmqp;

    const/16 v4, 0x12

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmqp;

    const/16 v12, 0x13

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmqp;

    const/16 v8, 0x14

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmqp;

    const/16 v9, 0x15

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmqp;

    move/from16 v43, v5

    const/16 v5, 0x16

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmqp;

    move/from16 v44, v7

    const/16 v7, 0x17

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmqp;

    move/from16 v45, v11

    const/16 v11, 0x18

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmqp;

    const/16 v2, 0x19

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v46, v2

    const/16 v2, 0x1a

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v47, v2

    const/16 v2, 0x1b

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v48, v2

    const/16 v2, 0x1c

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v49, v2

    const/16 v2, 0x1d

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v50, v2

    const/16 v2, 0x1e

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v51, v2

    const/16 v2, 0x1f

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v52, v2

    const/16 v2, 0x20

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lmqp;

    const/16 v2, 0x21

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v54, v2

    const/16 v2, 0x22

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v55, v2

    const/16 v2, 0x23

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v56, v2

    const/16 v2, 0x24

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v57, v2

    const/16 v2, 0x25

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v58, v2

    const/16 v2, 0x26

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v59, v2

    const/16 v2, 0x27

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v60, v2

    const/16 v2, 0x28

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    const/4 v6, 0x0

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmqp;

    move-object/from16 v42, v2

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lmqp;

    const/4 v2, 0x2

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lmqp;

    const/4 v2, 0x3

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v17, v2

    const/4 v2, 0x4

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 p3, v2

    const/4 v2, 0x5

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v20, v2

    const/4 v2, 0x6

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v22, v2

    const/4 v2, 0x7

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v24, v2

    const/16 v2, 0x8

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lmqp;

    const/16 v2, 0x9

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v27, v2

    const/16 v2, 0xa

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v29, v2

    const/16 v2, 0xb

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v31, v2

    const/16 v2, 0xc

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v33, v2

    const/16 v2, 0xd

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v35, v2

    const/16 v2, 0xe

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v37, v2

    const/16 v2, 0xf

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    move-object/from16 v39, v2

    const/16 v2, 0x10

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmqp;

    sget-object v2, Lnkv;->ap:Lnkv;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    move-object/from16 v64, v10

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 v65, v6

    iget-object v6, v2, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_8
    iget-object v6, v2, Lnwn;->b:Lnws;

    check-cast v6, Lnkv;

    move-object/from16 v66, v11

    iget v11, v6, Lnkv;->a:I

    const/16 v41, 0x1

    or-int/lit8 v11, v11, 0x1

    iput v11, v6, Lnkv;->a:I

    iput v10, v6, Lnkv;->d:I

    invoke-virtual {v13}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v13}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v10, v2, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_9
    iget-object v10, v2, Lnwn;->b:Lnws;

    check-cast v10, Lnkv;

    iget v11, v10, Lnkv;->a:I

    const/4 v13, 0x2

    or-int/2addr v11, v13

    iput v11, v10, Lnkv;->a:I

    iput v6, v10, Lnkv;->e:F

    :cond_a
    invoke-virtual {v14}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v14}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v10, v2, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_b
    iget-object v10, v2, Lnwn;->b:Lnws;

    check-cast v10, Lnkv;

    iget v11, v10, Lnkv;->a:I

    const/16 v13, 0x8

    or-int/2addr v11, v13

    iput v11, v10, Lnkv;->a:I

    iput v6, v10, Lnkv;->f:F

    :cond_c
    invoke-virtual {v15}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v15}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v10, v2, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_d
    iget-object v10, v2, Lnwn;->b:Lnws;

    check-cast v10, Lnkv;

    iget v11, v10, Lnkv;->a:I

    const/16 v13, 0x10

    or-int/2addr v11, v13

    iput v11, v10, Lnkv;->a:I

    iput v6, v10, Lnkv;->g:F

    :cond_e
    invoke-virtual/range {v16 .. v16}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual/range {v16 .. v16}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v10, v2, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_f

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_f
    iget-object v10, v2, Lnwn;->b:Lnws;

    check-cast v10, Lnkv;

    iget v11, v10, Lnkv;->a:I

    const/16 v13, 0x20

    or-int/2addr v11, v13

    iput v11, v10, Lnkv;->a:I

    iput v6, v10, Lnkv;->h:F

    :cond_10
    invoke-virtual/range {v18 .. v18}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual/range {v18 .. v18}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v10, v2, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_11

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_11
    iget-object v10, v2, Lnwn;->b:Lnws;

    check-cast v10, Lnkv;

    iget v11, v10, Lnkv;->a:I

    or-int/lit8 v11, v11, 0x40

    iput v11, v10, Lnkv;->a:I

    iput v6, v10, Lnkv;->i:F

    :cond_12
    invoke-virtual/range {v19 .. v19}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual/range {v19 .. v19}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v10, v2, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_13
    iget-object v10, v2, Lnwn;->b:Lnws;

    check-cast v10, Lnkv;

    iget v11, v10, Lnkv;->a:I

    or-int/lit16 v11, v11, 0x80

    iput v11, v10, Lnkv;->a:I

    iput v6, v10, Lnkv;->j:F

    :cond_14
    invoke-virtual/range {v21 .. v21}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual/range {v21 .. v21}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v10, v2, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_15

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_15
    iget-object v10, v2, Lnwn;->b:Lnws;

    check-cast v10, Lnkv;

    iget v11, v10, Lnkv;->a:I

    or-int/lit16 v11, v11, 0x100

    iput v11, v10, Lnkv;->a:I

    iput v6, v10, Lnkv;->k:F

    :cond_16
    invoke-virtual/range {v23 .. v23}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual/range {v23 .. v23}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v10, v2, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_17

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_17
    iget-object v10, v2, Lnwn;->b:Lnws;

    check-cast v10, Lnkv;

    iget v11, v10, Lnkv;->a:I

    or-int/lit16 v11, v11, 0x200

    iput v11, v10, Lnkv;->a:I

    iput v6, v10, Lnkv;->l:F

    :cond_18
    invoke-virtual/range {v25 .. v25}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual/range {v25 .. v25}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v10, v2, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_19

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_19
    iget-object v10, v2, Lnwn;->b:Lnws;

    check-cast v10, Lnkv;

    iget v11, v10, Lnkv;->a:I

    or-int/lit16 v11, v11, 0x400

    iput v11, v10, Lnkv;->a:I

    iput v6, v10, Lnkv;->m:F

    :cond_1a
    invoke-virtual/range {v26 .. v26}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-virtual/range {v26 .. v26}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v10, v2, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_1b

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_1b
    iget-object v10, v2, Lnwn;->b:Lnws;

    check-cast v10, Lnkv;

    iget v11, v10, Lnkv;->a:I

    or-int/lit16 v11, v11, 0x800

    iput v11, v10, Lnkv;->a:I

    iput v6, v10, Lnkv;->n:F

    :cond_1c
    invoke-virtual/range {v28 .. v28}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-virtual/range {v28 .. v28}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v10, v2, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_1d

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_1d
    iget-object v10, v2, Lnwn;->b:Lnws;

    check-cast v10, Lnkv;

    iget v11, v10, Lnkv;->a:I

    or-int/lit16 v11, v11, 0x1000

    iput v11, v10, Lnkv;->a:I

    iput v6, v10, Lnkv;->o:F

    :cond_1e
    invoke-virtual/range {v30 .. v30}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-virtual/range {v30 .. v30}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v10, v2, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_1f

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_1f
    iget-object v10, v2, Lnwn;->b:Lnws;

    check-cast v10, Lnkv;

    iget v11, v10, Lnkv;->a:I

    or-int/lit16 v11, v11, 0x2000

    iput v11, v10, Lnkv;->a:I

    iput v6, v10, Lnkv;->p:F

    :cond_20
    invoke-virtual/range {v32 .. v32}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-virtual/range {v32 .. v32}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v10, v2, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_21

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_21
    iget-object v10, v2, Lnwn;->b:Lnws;

    check-cast v10, Lnkv;

    iget v11, v10, Lnkv;->a:I

    or-int/lit16 v11, v11, 0x4000

    iput v11, v10, Lnkv;->a:I

    iput v6, v10, Lnkv;->q:F

    :cond_22
    invoke-virtual/range {v34 .. v34}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-virtual/range {v34 .. v34}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v10, v2, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_23

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_23
    iget-object v10, v2, Lnwn;->b:Lnws;

    check-cast v10, Lnkv;

    iget v11, v10, Lnkv;->a:I

    const v13, 0x8000

    or-int/2addr v11, v13

    iput v11, v10, Lnkv;->a:I

    iput v6, v10, Lnkv;->r:F

    :cond_24
    invoke-virtual/range {v36 .. v36}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-virtual/range {v36 .. v36}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v10, v2, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_25

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_25
    iget-object v10, v2, Lnwn;->b:Lnws;

    check-cast v10, Lnkv;

    iget v11, v10, Lnkv;->a:I

    const/high16 v13, 0x10000

    or-int/2addr v11, v13

    iput v11, v10, Lnkv;->a:I

    iput v6, v10, Lnkv;->s:F

    :cond_26
    invoke-virtual/range {v38 .. v38}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-virtual/range {v38 .. v38}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v10, v2, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_27

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_27
    iget-object v10, v2, Lnwn;->b:Lnws;

    check-cast v10, Lnkv;

    iget v11, v10, Lnkv;->a:I

    const/high16 v13, 0x20000

    or-int/2addr v11, v13

    iput v11, v10, Lnkv;->a:I

    iput v6, v10, Lnkv;->t:F

    :cond_28
    invoke-virtual/range {v40 .. v40}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-virtual/range {v40 .. v40}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v10, v2, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_29

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_29
    iget-object v10, v2, Lnwn;->b:Lnws;

    check-cast v10, Lnkv;

    iget v11, v10, Lnkv;->a:I

    const/high16 v13, 0x40000

    or-int/2addr v11, v13

    iput v11, v10, Lnkv;->a:I

    iput v6, v10, Lnkv;->u:F

    :cond_2a
    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v6, v2, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_2b

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_2b
    iget-object v6, v2, Lnwn;->b:Lnws;

    check-cast v6, Lnkv;

    iget v10, v6, Lnkv;->a:I

    const/high16 v11, 0x80000

    or-int/2addr v10, v11

    iput v10, v6, Lnkv;->a:I

    iput v3, v6, Lnkv;->v:F

    :cond_2c
    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_2d
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    iget v6, v4, Lnkv;->a:I

    const/high16 v10, 0x100000

    or-int/2addr v6, v10

    iput v6, v4, Lnkv;->a:I

    iput v3, v4, Lnkv;->w:F

    :cond_2e
    invoke-virtual {v12}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {v12}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_2f
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    iget v6, v4, Lnkv;->a:I

    const/high16 v10, 0x200000

    or-int/2addr v6, v10

    iput v6, v4, Lnkv;->a:I

    iput v3, v4, Lnkv;->x:F

    :cond_30
    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_31

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_31
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    iget v6, v4, Lnkv;->a:I

    const/high16 v8, 0x400000

    or-int/2addr v6, v8

    iput v6, v4, Lnkv;->a:I

    iput v3, v4, Lnkv;->y:F

    :cond_32
    invoke-virtual {v9}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {v9}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_33

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_33
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    iget v6, v4, Lnkv;->a:I

    const/high16 v8, 0x800000

    or-int/2addr v6, v8

    iput v6, v4, Lnkv;->a:I

    iput v3, v4, Lnkv;->z:F

    :cond_34
    invoke-virtual {v5}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {v5}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_35

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_35
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    iget v5, v4, Lnkv;->a:I

    const/high16 v6, 0x1000000

    or-int/2addr v5, v6

    iput v5, v4, Lnkv;->a:I

    iput v3, v4, Lnkv;->A:F

    :cond_36
    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_37

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_37
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    iget v5, v4, Lnkv;->a:I

    const/high16 v6, 0x2000000

    or-int/2addr v5, v6

    iput v5, v4, Lnkv;->a:I

    iput v3, v4, Lnkv;->B:F

    :cond_38
    invoke-virtual/range {v66 .. v66}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual/range {v66 .. v66}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_39

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_39
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    iget v5, v4, Lnkv;->a:I

    const/high16 v6, 0x4000000

    or-int/2addr v5, v6

    iput v5, v4, Lnkv;->a:I

    iput v3, v4, Lnkv;->C:F

    :cond_3a
    invoke-virtual/range {v46 .. v46}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual/range {v46 .. v46}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_3b

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_3b
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    iget v5, v4, Lnkv;->a:I

    const/high16 v6, 0x8000000

    or-int/2addr v5, v6

    iput v5, v4, Lnkv;->a:I

    iput v3, v4, Lnkv;->D:F

    :cond_3c
    invoke-virtual/range {v47 .. v47}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual/range {v47 .. v47}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_3d

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_3d
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    iget v5, v4, Lnkv;->a:I

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    iput v5, v4, Lnkv;->a:I

    iput v3, v4, Lnkv;->E:F

    :cond_3e
    invoke-virtual/range {v65 .. v65}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual/range {v65 .. v65}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_3f

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_3f
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    iget v5, v4, Lnkv;->a:I

    const/high16 v6, 0x20000000

    or-int/2addr v5, v6

    iput v5, v4, Lnkv;->a:I

    iput v3, v4, Lnkv;->F:I

    :cond_40
    invoke-virtual/range {v48 .. v48}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual/range {v48 .. v48}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_41

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_41
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    iget v5, v4, Lnkv;->a:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    iput v5, v4, Lnkv;->a:I

    iput v3, v4, Lnkv;->G:F

    :cond_42
    invoke-virtual/range {v49 .. v49}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-virtual/range {v49 .. v49}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_43

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_43
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    iget v5, v4, Lnkv;->a:I

    const/high16 v6, -0x80000000

    or-int/2addr v5, v6

    iput v5, v4, Lnkv;->a:I

    iput v3, v4, Lnkv;->H:F

    :cond_44
    invoke-virtual/range {v61 .. v61}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual/range {v61 .. v61}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_45

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_45
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    iget v5, v4, Lnkv;->b:I

    const/4 v6, 0x1

    or-int/2addr v5, v6

    iput v5, v4, Lnkv;->b:I

    iput v3, v4, Lnkv;->I:I

    :cond_46
    invoke-virtual/range {v50 .. v50}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual/range {v50 .. v50}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_47

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_47
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    iget v5, v4, Lnkv;->b:I

    const/4 v6, 0x2

    or-int/2addr v5, v6

    iput v5, v4, Lnkv;->b:I

    iput v3, v4, Lnkv;->J:F

    :cond_48
    invoke-virtual/range {v51 .. v51}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual/range {v51 .. v51}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_49

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_49
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->b(F)V

    :cond_4a
    invoke-virtual/range {v52 .. v52}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-virtual/range {v52 .. v52}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_4b

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_4b
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->c(F)V

    :cond_4c
    invoke-virtual/range {v53 .. v53}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-virtual/range {v53 .. v53}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_4d

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_4d
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->d(F)V

    :cond_4e
    invoke-virtual/range {v62 .. v62}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual/range {v62 .. v62}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_4f

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_4f
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->e(I)V

    :cond_50
    invoke-virtual/range {v54 .. v54}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-virtual/range {v54 .. v54}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_51

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_51
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->f(F)V

    :cond_52
    invoke-virtual/range {v55 .. v55}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-virtual/range {v55 .. v55}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_53

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_53
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->g(F)V

    :cond_54
    invoke-virtual/range {v56 .. v56}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-virtual/range {v56 .. v56}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_55

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_55
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->h(F)V

    :cond_56
    invoke-virtual/range {v57 .. v57}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-virtual/range {v57 .. v57}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_57

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_57
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->i(F)V

    :cond_58
    invoke-virtual/range {v58 .. v58}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-virtual/range {v58 .. v58}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_59

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_59
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->j(F)V

    :cond_5a
    invoke-virtual/range {v17 .. v17}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-virtual/range {v17 .. v17}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_5b

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_5b
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->k(I)V

    :cond_5c
    invoke-virtual/range {p3 .. p3}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-virtual/range {p3 .. p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_5d

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_5d
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->l(I)V

    :cond_5e
    invoke-virtual/range {v59 .. v59}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-virtual/range {v59 .. v59}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_5f

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_5f
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->m(F)V

    :cond_60
    invoke-virtual/range {v60 .. v60}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-virtual/range {v60 .. v60}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_61

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_61
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->n(F)V

    :cond_62
    invoke-virtual/range {v20 .. v20}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-virtual/range {v20 .. v20}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_63

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_63
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->o(I)V

    :cond_64
    invoke-virtual/range {v22 .. v22}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-virtual/range {v22 .. v22}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_65

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_65
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->p(I)V

    :cond_66
    invoke-virtual/range {v42 .. v42}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-virtual/range {v42 .. v42}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_67

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_67
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->t(F)V

    :cond_68
    invoke-virtual/range {v24 .. v24}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-virtual/range {v24 .. v24}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_69

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_69
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->u(I)V

    :cond_6a
    invoke-virtual/range {v63 .. v63}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-virtual/range {v63 .. v63}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_6b

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_6b
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->v(I)V

    :cond_6c
    invoke-virtual/range {v27 .. v27}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-virtual/range {v27 .. v27}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_6d

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_6d
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->w(I)V

    :cond_6e
    invoke-virtual/range {v29 .. v29}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-virtual/range {v29 .. v29}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_6f

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_6f
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->x(I)V

    :cond_70
    invoke-virtual/range {v31 .. v31}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-virtual/range {v31 .. v31}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_71

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_71
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->y(I)V

    :cond_72
    invoke-virtual/range {v33 .. v33}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-virtual/range {v33 .. v33}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_73

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_73
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->z(I)V

    :cond_74
    invoke-virtual/range {v35 .. v35}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-virtual/range {v35 .. v35}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_75

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_75
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->A(I)V

    :cond_76
    invoke-virtual/range {v37 .. v37}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-virtual/range {v37 .. v37}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_77

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_77
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->B(I)V

    :cond_78
    invoke-virtual/range {v39 .. v39}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-virtual/range {v39 .. v39}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_79

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_79
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->C(I)V

    :cond_7a
    invoke-virtual/range {v64 .. v64}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-virtual/range {v64 .. v64}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_7b

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_7b
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    invoke-virtual {v4, v3}, Lnkv;->D(I)V

    :cond_7c
    move/from16 v3, p2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7f

    iget v4, v1, Lccn;->m:I

    iget-object v5, v2, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_7d

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_7d
    iget-object v5, v2, Lnwn;->b:Lnws;

    check-cast v5, Lnkv;

    invoke-virtual {v5, v4}, Lnkv;->q(I)V

    iget v4, v1, Lccn;->n:I

    iget-object v5, v2, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_7e

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_7e
    iget-object v5, v2, Lnwn;->b:Lnws;

    check-cast v5, Lnkv;

    invoke-virtual {v5, v4}, Lnkv;->r(I)V

    iget v4, v1, Lccn;->o:I

    invoke-virtual {v2}, Lnwn;->o()V

    iget-object v5, v2, Lnwn;->b:Lnws;

    check-cast v5, Lnkv;

    invoke-virtual {v5, v4}, Lnkv;->s(I)V

    :cond_7f
    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_80

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_80
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    move/from16 v11, v45

    invoke-virtual {v4, v11}, Lnkv;->E(I)V

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_81

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_81
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnkv;

    move/from16 v7, v44

    invoke-virtual {v4, v7}, Lnkv;->F(I)V

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lnkv;

    iget-object v4, v1, Lccn;->b:Lfbz;

    sget-object v5, Lnkw;->e:Lnkw;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    invoke-virtual {v5, v3}, Lnwn;->I(I)V

    move/from16 v3, v43

    invoke-virtual {v5, v3}, Lnwn;->J(I)V

    invoke-virtual {v5, v2}, Lnwn;->H(Lnkv;)V

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lnkw;

    invoke-interface {v4, v2}, Lfbz;->K(Lnkw;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw v2

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public final declared-synchronized b(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lccn;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lccn;->l:Lkou;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-direct {p0, v0}, Lccn;->p(Lkou;)Lccm;

    move-result-object v0

    invoke-static {v0}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lccn;->r(Ljava/util/List;II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized bC(Lkou;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lccn;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lccn;->l:Lkou;

    iget v0, p0, Lccn;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccn;->j:I

    iget v0, p0, Lccn;->m:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x2

    if-ne v0, v3, :cond_3

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_3

    :cond_2
    iget v0, p0, Lccn;->j:I

    iput v0, p0, Lccn;->m:I

    :cond_3
    :goto_0
    iget v0, p0, Lccn;->n:I

    if-ne v0, v3, :cond_6

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    :cond_5
    iget v0, p0, Lccn;->j:I

    iput v0, p0, Lccn;->n:I

    :cond_6
    :goto_1
    iget v0, p0, Lccn;->o:I

    if-ne v0, v3, :cond_9

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v4, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_9

    :cond_8
    iget v0, p0, Lccn;->j:I

    iput v0, p0, Lccn;->o:I

    :cond_9
    :goto_2
    iget v0, p0, Lccn;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_a

    monitor-exit p0

    return-void

    :cond_a
    :try_start_2
    invoke-direct {p0, p1}, Lccn;->p(Lkou;)Lccm;

    move-result-object p1

    iget-object v0, p0, Lccn;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_3
    :try_start_3
    iget p1, p0, Lccn;->j:I

    if-ne p1, v1, :cond_b

    iget-object p1, p0, Lccn;->k:Ljava/util/List;

    invoke-direct {p0, p1, v4, v2}, Lccn;->r(Ljava/util/List;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
