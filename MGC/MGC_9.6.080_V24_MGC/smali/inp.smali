.class final Linp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lstu;


# instance fields
.field final synthetic a:I

.field final synthetic b:Linr;

.field final synthetic c:Lllc;

.field final synthetic d:Llxa;

.field final synthetic e:Ljava/util/UUID;

.field final synthetic f:Lrss;

.field final synthetic g:Lsuu;

.field final synthetic h:Lins;


# direct methods
.method public constructor <init>(Lins;ILinr;Lllc;Llxa;Ljava/util/UUID;Lrss;Lsuu;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Linp;->a:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p5, p0, Linp;->d:Llxa;

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

    :goto_3
    iput-object p8, p0, Linp;->g:Lsuu;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    iput-object p6, p0, Linp;->e:Ljava/util/UUID;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Linp;->c:Lllc;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iput-object p7, p0, Linp;->f:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Linp;->h:Lins;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p3, p0, Linp;->b:Linr;

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
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x8

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

    :goto_1
    sget-object v0, Lins;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-static {v1, v2, v0, p1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_f

    nop

    nop

    :goto_3
    return-void

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    const v1, 0x2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_3

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    const-string v1, "Error encoding jpeg image."

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

    :goto_c
    goto/32 :goto_4

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    iget-object p0, p0, Linp;->g:Lsuu;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    const/16 v2, 0x696

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

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 24

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_14

    nop

    :goto_1
    :try_start_0
    iget-object v3, v2, Linp;->g:Lsuu;

    nop

    nop

    new-instance v4, Limd;

    nop

    nop

    invoke-direct {v4, v0, v5}, Limd;-><init>(Ljava/lang/Object;I)V

    sget-object v0, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v4, v0}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Lsuu;->f(Lsui;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object/from16 v17, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    move-object/from16 v22, v11

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

    :goto_4
    invoke-static {v5, v3, v4, v1, v0}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_6
    move-object v1, v14

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v5, "Error attaching jpeg image to the session %s"

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

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_9
    const/16 v4, 0x699

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    invoke-interface {v3}, Llxa;->u()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_20

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    move-object/from16 p1, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    move-object/from16 v2, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_17

    nop

    nop

    :goto_11
    move/from16 v9, v20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    move/from16 v20, v8

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object/from16 v14, v17

    nop

    nop

    :try_start_1
    invoke-direct/range {v3 .. v14}, Llvp;-><init>(IJLjava/util/UUID;II[BLcom/google/android/libraries/camera/exif/ExifInterface;Lllc;Llxo;Lhoh;)V

    iget-object v3, v2, Lins;->c:Liob;

    nop

    nop

    nop

    invoke-interface/range {v23 .. v23}, Llxa;->m()Lpro;

    move-result-object v4

    nop

    nop

    invoke-interface {v3, v4}, Liob;->a(Lpro;)Lrss;

    move-result-object v3

    nop

    invoke-interface/range {v23 .. v23}, Llxa;->j()Llxm;

    move-result-object v4

    nop

    iget v4, v4, Llxm;->a:I

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {v23 .. v23}, Llxa;->n()Lrss;

    move-result-object v4

    nop

    nop

    nop

    new-instance v5, Linn;

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v6}, Linn;-><init>(I)V

    invoke-virtual {v4, v5}, Lrss;->b(Lrsk;)Lrss;

    move-result-object v4

    nop

    nop

    nop

    iget-wide v5, v0, Lqqd;->a:J

    nop

    nop

    nop

    nop

    int-to-float v7, v15

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lins;->h:Lfdo;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    nop

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    nop

    iget-object v2, v2, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v2, v5, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Linr;->b:Linr;

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x2

    nop

    nop

    if-ne v1, v2, :cond_1

    nop

    nop

    nop

    invoke-virtual/range {v22 .. v22}, Lrss;->h()Z

    move-result v1

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    nop

    nop

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface/range {v23 .. v23}, Llxa;->h()Llxc;

    move-result-object v2

    nop

    nop

    nop

    new-instance v7, Lmla;

    nop

    nop

    nop

    nop

    sget-object v6, Lpsz;->c:Lpsz;

    nop

    invoke-direct {v7, v6}, Lmla;-><init>(Lpsz;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-boolean v6, v2, Llxc;->c:Z

    nop

    nop

    nop

    iget-object v8, v2, Llxc;->d:Lidb;

    nop

    nop

    invoke-virtual {v8}, Lidb;->f()Ljava/lang/String;

    move-result-object v20

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v16, p1

    nop

    nop

    move-object/from16 v17, v3

    nop

    nop

    nop

    nop

    move-object/from16 v18, v4

    nop

    nop

    nop

    move/from16 v19, v6

    nop

    nop

    nop

    nop

    move-object/from16 v21, v1

    nop

    nop

    nop

    invoke-virtual/range {v16 .. v21}, Llvp;->b(Lrss;Lrss;ZLjava/lang/String;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual/range {v22 .. v22}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    new-instance v8, Ljava/io/ByteArrayInputStream;

    nop

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    nop

    nop

    invoke-direct {v8, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface/range {v23 .. v23}, Llxa;->h()Llxc;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    sget-object v10, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    invoke-interface/range {v23 .. v23}, Llxa;->e()J

    move-result-wide v11

    nop

    nop

    nop

    invoke-interface/range {v23 .. v23}, Llxa;->u()Ljava/lang/String;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {v23 .. v23}, Llxa;->ag()Lmjn;

    move-result-object v14

    nop

    nop

    nop

    invoke-interface/range {v6 .. v14}, Ljvw;->c(Lmla;Ljava/io/InputStream;Llxc;Lrss;JLjava/lang/String;Lmjn;)Lsui;

    move-result-object v1

    nop

    nop

    nop

    goto :goto_14

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    invoke-virtual {v2}, Llxc;->a()V

    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    nop

    nop

    nop

    :cond_0
    invoke-interface/range {v23 .. v23}, Llxa;->h()Llxc;

    move-result-object v1

    nop

    nop

    move-object/from16 v2, p1

    nop

    nop

    nop

    invoke-virtual {v2, v1, v3, v4}, Llvp;->a(Llxc;Lrss;Lrss;)Lmla;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v1

    nop

    nop

    :goto_14
    move-object/from16 v2, p0

    nop

    nop

    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    move-object/from16 v2, p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Linr;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    const-string v3, ""

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    if-eq v1, v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    :cond_2
    const-string v3, "DEBUG"

    nop

    goto :goto_15

    nop

    :cond_3
    const-string v3, "SECONDARY"

    nop

    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_4
    const-string v3, "ORIGINAL"

    nop

    :goto_15
    invoke-interface/range {v23 .. v23}, Llxa;->i()Llxg;

    move-result-object v1

    nop

    nop

    const-string v4, "jpg"

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Llxg;->b(Ljava/lang/String;)Llxc;

    move-result-object v1

    nop

    nop

    iget-object v4, v1, Llxc;->b:Lpsf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v3}, Lpsf;->h(Ljava/lang/String;)V

    sget-object v3, Lidb;->a:Lidb;

    nop

    nop

    nop

    iput-object v3, v1, Llxc;->d:Lidb;

    nop

    nop

    nop

    nop

    sget-object v3, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    invoke-virtual {v2, v1, v3, v3}, Llvp;->a(Llxc;Lrss;Lrss;)Lmla;

    move-result-object v1

    nop

    invoke-static {v1}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v0}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_17
    move-object/from16 v1, p0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    :goto_1a
    move-object/from16 v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v10, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    move-object/from16 v11, v19

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

    :goto_1d
    iget-object v1, v2, Linp;->g:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1f
    move-object v2, v1

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_21
    move-object/from16 v23, v13

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_22
    check-cast v0, Lqqd;

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    iget-object v2, v1, Linp;->h:Lins;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v1, Linp;->a:I

    nop

    nop

    iget-object v14, v1, Linp;->b:Linr;

    nop

    nop

    nop

    nop

    nop

    iget-object v12, v1, Linp;->c:Lllc;

    nop

    iget-object v13, v1, Linp;->d:Llxa;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v1, Linp;->e:Ljava/util/UUID;

    nop

    iget-object v11, v1, Linp;->f:Lrss;

    nop

    nop

    nop

    nop

    iget-object v3, v2, Lins;->g:Lpic;

    nop

    nop

    iget-object v4, v0, Lqqd;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object v5, v4

    nop

    nop

    check-cast v5, Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v5}, Lpic;->L(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    new-instance v10, Llvp;

    nop

    nop

    invoke-interface {v13}, Llxa;->k()Llxo;

    move-result-object v16

    nop

    nop

    iget-object v9, v2, Lins;->e:Lhoh;

    nop

    nop

    iget-object v3, v0, Lqqd;->d:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v5, v0, Lqqd;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object v6, v5

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Lpck;

    nop

    iget v8, v6, Lpck;->b:I

    nop

    nop

    nop

    nop

    check-cast v5, Lpck;

    nop

    iget v5, v5, Lpck;->a:I

    nop

    move/from16 v17, v5

    nop

    nop

    nop

    nop

    iget-wide v5, v0, Lqqd;->a:J

    nop

    nop

    nop

    move-object/from16 v18, v3

    nop

    check-cast v18, [B

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v19, v4

    nop

    nop

    nop

    check-cast v19, Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_23
    move v4, v15

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_24
    move-object/from16 v13, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v3, v2, Linp;->d:Llxa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_28
    sget-object v1, Lins;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_29
    move/from16 v8, v17

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

    :goto_2a
    if-lez v0, :cond_5

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    :goto_2b
    move-object v3, v10

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_20

    nop

    :catch_3
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

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
.end method
