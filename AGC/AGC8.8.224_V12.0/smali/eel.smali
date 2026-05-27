.class final Leel;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:I

.field final synthetic b:Leen;

.field final synthetic c:Lgpa;

.field final synthetic d:Lgxl;

.field final synthetic e:Ljava/util/UUID;

.field final synthetic f:Lmqp;

.field final synthetic g:Lnph;

.field final synthetic h:Leeo;


# direct methods
.method public constructor <init>(Leeo;ILeen;Lgpa;Lgxl;Ljava/util/UUID;Lmqp;Lnph;)V
    .locals 0

    iput-object p1, p0, Leel;->h:Leeo;

    iput p2, p0, Leel;->a:I

    iput-object p3, p0, Leel;->b:Leen;

    iput-object p4, p0, Leel;->c:Lgpa;

    iput-object p5, p0, Leel;->d:Lgxl;

    iput-object p6, p0, Leel;->e:Ljava/util/UUID;

    iput-object p7, p0, Leel;->f:Lmqp;

    iput-object p8, p0, Leel;->g:Lnph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Leeo;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Error encoding jpeg image."

    const/16 v2, 0x543

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-object v0, p0, Leel;->g:Lnph;

    invoke-virtual {v0, p1}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    check-cast v0, Lfwy;

    :try_start_0
    iget-object v2, v1, Leel;->h:Leeo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v1, Leel;->a:I

    iget-object v14, v1, Leel;->b:Leen;

    iget-object v13, v1, Leel;->c:Lgpa;

    iget-object v12, v1, Leel;->d:Lgxl;

    iget-object v7, v1, Leel;->e:Ljava/util/UUID;

    iget-object v11, v1, Leel;->f:Lmqp;

    iget-object v10, v0, Lfwy;->d:Lcom/google/android/libraries/camera/exif/ExifInterface;

    iget-object v3, v2, Leeo;->h:Ljew;

    invoke-virtual {v3, v10}, Ljew;->n(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    new-instance v9, Lgwa;

    iget-wide v5, v0, Lfwy;->a:J

    iget v3, v0, Lfwy;->c:I

    invoke-static {v3}, Lkab;->b(I)Lkab;

    move-result-object v8

    iget-object v3, v0, Lfwy;->e:Lkaf;

    iget v4, v3, Lkaf;->a:I

    iget v3, v3, Lkaf;->b:I

    move-object/from16 v16, v11

    iget-object v11, v0, Lfwy;->b:[B

    invoke-interface {v12}, Lgxl;->i()Lgya;

    move-result-object v17
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v1, v2, Leeo;->f:Ldhi;

    move/from16 v18, v3

    move-object v3, v9

    move/from16 v19, v4

    move v4, v15

    move-object/from16 v22, v9

    move/from16 v9, v19

    move-object/from16 v19, v10

    move/from16 v10, v18

    move-object/from16 v23, v16

    move-object/from16 v24, v12

    move-object/from16 v12, v19

    move-object/from16 v25, v14

    move-object/from16 v14, v17

    move/from16 v26, v15

    move-object v15, v1

    invoke-direct/range {v3 .. v15}, Lgwa;-><init>(IJLjava/util/UUID;Lkab;II[BLcom/google/android/libraries/camera/exif/ExifInterface;Lgpa;Lgya;Ldhi;)V

    iget-object v1, v2, Leeo;->e:Lefq;

    invoke-interface/range {v24 .. v24}, Lgxl;->l()Lkou;

    move-result-object v3

    invoke-interface {v1, v3}, Lefq;->a(Lkou;)Lmqp;

    move-result-object v1

    invoke-interface/range {v24 .. v24}, Lgxl;->h()Lgxy;

    move-result-object v3

    iget v3, v3, Lgxy;->a:I

    invoke-interface/range {v24 .. v24}, Lgxl;->m()Lmqp;

    move-result-object v3

    sget-object v4, Ldeo;->h:Ldeo;

    invoke-virtual {v3, v4}, Lmqp;->b(Lmqi;)Lmqp;

    move-result-object v3

    iget-object v2, v2, Leeo;->i:Lbkb;

    iget-wide v4, v0, Lfwy;->a:J

    move/from16 v6, v26

    int-to-float v6, v6

    iget-object v2, v2, Lbkb;->a:Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Leen;->b:Leen;

    move-object/from16 v4, v25

    if-ne v4, v2, :cond_1

    invoke-virtual/range {v23 .. v23}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface/range {v24 .. v24}, Lgxl;->f()Lgxn;

    move-result-object v4

    new-instance v6, Lhkt;

    move-object/from16 v5, v22

    iget v7, v5, Lgwa;->b:I

    iget v8, v5, Lgwa;->c:I

    invoke-static {v7, v8}, Lkaf;->h(II)Lkaf;

    sget-object v7, Lkqi;->c:Lkqi;

    invoke-direct {v6, v7}, Lhkt;-><init>(Lkqi;)V

    iget-object v7, v5, Lgwa;->a:Lkab;

    invoke-virtual {v6, v7}, Lhkt;->b(Lkab;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-boolean v7, v4, Lgxn;->b:Z

    iget-object v8, v4, Lgxn;->c:Ldyy;

    invoke-virtual {v8}, Ldyy;->d()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v16, v5

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move/from16 v19, v7

    move-object/from16 v21, v2

    invoke-virtual/range {v16 .. v21}, Lgwa;->b(Lmqp;Lmqp;ZLjava/lang/String;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual/range {v23 .. v23}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lfgd;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface/range {v24 .. v24}, Lgxl;->f()Lgxn;

    move-result-object v8

    sget-object v9, Lmpx;->a:Lmpx;

    invoke-interface/range {v24 .. v24}, Lgxl;->d()J

    move-result-wide v10

    invoke-interface/range {v24 .. v24}, Lgxl;->s()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v24 .. v24}, Lgxl;->k()Lhjc;

    move-result-object v13

    invoke-interface/range {v5 .. v13}, Lfgd;->b(Lhkt;Ljava/io/InputStream;Lgxn;Lmqp;JLjava/lang/String;Lhjc;)Lnou;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v4}, Lgxn;->a()V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move-object/from16 v5, v22

    invoke-interface/range {v24 .. v24}, Lgxl;->f()Lgxn;

    move-result-object v2

    invoke-virtual {v5, v2, v1, v3}, Lgwa;->a(Lgxn;Lmqp;Lmqp;)Lhkt;

    move-result-object v1

    invoke-static {v1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object/from16 v5, v22

    invoke-virtual {v4}, Leen;->ordinal()I

    move-result v1

    const-string v2, ""

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v2, "DEBUG"

    goto :goto_0

    :pswitch_2
    const-string v2, "SECONDARY"

    goto :goto_0

    :pswitch_3
    const-string v2, "ORIGINAL"

    :goto_0
    invoke-interface/range {v24 .. v24}, Lgxl;->g()Lgxr;

    move-result-object v1

    invoke-virtual {v1}, Lgxr;->h()Lgxn;

    move-result-object v1

    iget-object v3, v1, Lgxn;->a:Lkph;

    invoke-interface {v3, v2}, Lkph;->h(Ljava/lang/String;)V

    sget-object v2, Ldyy;->a:Ldyy;

    iput-object v2, v1, Lgxn;->c:Ldyy;

    sget-object v2, Lmpx;->a:Lmpx;

    invoke-virtual {v5, v1, v2, v2}, Lgwa;->a(Lgxn;Lmqp;Lmqp;)Lhkt;

    move-result-object v1

    invoke-static {v1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    move-object/from16 v2, p0

    :try_start_4
    iget-object v3, v2, Leel;->g:Lnph;

    new-instance v4, Lcdu;

    const/16 v5, 0xe

    invoke-direct {v4, v0, v5}, Lcdu;-><init>(Lfwy;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {v1, v4, v0}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    invoke-virtual {v3, v0}, Lnph;->f(Lnou;)Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v2, v1

    :goto_2
    sget-object v1, Leeo;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    iget-object v3, v2, Leel;->d:Lgxl;

    invoke-interface {v3}, Lgxl;->s()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error attaching jpeg image to the session %s"

    const/16 v5, 0x546

    invoke-static {v1, v4, v3, v5, v0}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    iget-object v1, v2, Leel;->g:Lnph;

    invoke-virtual {v1, v0}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
