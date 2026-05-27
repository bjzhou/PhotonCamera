.class public final Lfpl;
.super Ljava/lang/Object;

# interfaces
.implements Lfsm;


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Lfqq;

.field private final c:Lfse;

.field private final d:Lkaq;

.field private final e:Ldhi;

.field private final f:Landroid/media/MediaFormat;

.field private final g:Landroid/media/MediaFormat;

.field private final h:J

.field private final i:Lmqp;

.field private final j:Lgip;

.field private final k:Lgue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lfpl;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lgip;Lfse;Lkaq;Ldhi;Lfqq;Landroid/media/MediaFormat;Landroid/media/MediaFormat;JLgue;Lmqp;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfpl;->j:Lgip;

    iput-object p2, p0, Lfpl;->c:Lfse;

    const-class p1, Lfqp;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lfpl;->d:Lkaq;

    iput-object p4, p0, Lfpl;->e:Ldhi;

    iput-object p5, p0, Lfpl;->a:Lfqq;

    iput-object p6, p0, Lfpl;->f:Landroid/media/MediaFormat;

    iput-object p7, p0, Lfpl;->g:Landroid/media/MediaFormat;

    iput-wide p8, p0, Lfpl;->h:J

    iput-object p10, p0, Lfpl;->k:Lgue;

    iput-object p11, p0, Lfpl;->i:Lmqp;

    return-void
.end method

.method private static d(ZZ)I
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lkeb;Lgue;)Z
    .locals 1

    iget-object v0, p0, Lfpl;->c:Lfse;

    invoke-interface {v0, p1, p2}, Lfse;->c(Lkeb;Lgue;)Z

    move-result p1

    return p1
.end method

.method public final c(Lkeb;Lfte;Lnom;Lfsl;)V
    .locals 23

    move-object/from16 v14, p0

    move-object/from16 v0, p2

    move-object/from16 v10, p4

    sget-object v1, Lfpl;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fast launcher shot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v14, Lfpl;->d:Lkaq;

    invoke-static {v1, v2}, Lkau;->k(Ljava/lang/String;Lkaq;)Lkau;

    move-result-object v15

    const-string v1, "launcher got a HDR+ burst"

    invoke-interface {v15, v1}, Lkaq;->b(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lkeb;->b()Lkeg;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, v1, Lkeg;->b:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    with frame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Lkaq;->b(Ljava/lang/String;)V

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/camera/moments/MomentsUtils;->a(Lkeb;)Lnou;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1388

    invoke-interface {v1, v3, v4, v2}, Lnou;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lkou;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface/range {p1 .. p1}, Lkeb;->b()Lkeg;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v1, Lkeg;->b:J

    iget-object v1, v14, Lfpl;->k:Lgue;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lgli;->e()Lkpb;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lgli;->d()Lkpb;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Lklz;

    invoke-direct {v3, v5, v6}, Lklz;-><init>(J)V

    move-object v8, v3

    goto :goto_0

    :cond_0
    move-object v8, v3

    :goto_0
    invoke-interface/range {p1 .. p1}, Lkeb;->close()V

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get a raw image from input frame"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v0}, Lfsl;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    new-instance v12, Lkma;

    const/4 v11, 0x1

    invoke-direct {v12, v1, v11}, Lkma;-><init>(Lkpb;I)V

    :try_start_1
    new-instance v9, Lkma;

    invoke-direct {v9, v8, v11}, Lkma;-><init>(Lkpb;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    const-string v1, "Acquired frame metadata successfully."

    invoke-interface {v15, v1}, Lkaq;->b(Ljava/lang/String;)V

    invoke-virtual {v9}, Lkma;->k()Lkpb;

    move-result-object v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v17, :cond_2

    :try_start_3
    const-string v0, "Failed to fork PD image"

    invoke-interface {v15, v0}, Lkaq;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v9}, Lkma;->l()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v12}, Lkma;->l()V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v22, v12

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v21, v9

    move-object/from16 v22, v12

    goto/16 :goto_9

    :cond_2
    :try_start_5
    new-instance v7, Lfpk;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v20, v7

    move-object v7, v13

    move-object/from16 v21, v9

    move-object/from16 v9, v17

    move-object/from16 v10, p4

    const/16 v17, 0x1

    move-object v11, v15

    move-object/from16 v22, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v15

    move-object v15, v13

    move-object/from16 v13, v19

    :try_start_6
    invoke-direct/range {v1 .. v13}, Lfpk;-><init>(Lfpl;Lkma;Lnom;JLkou;Lkpb;Lkpb;Lfsl;Lkaq;[B[B)V

    iget-object v1, v14, Lfpl;->j:Lgip;

    invoke-virtual/range {v16 .. v16}, Lgli;->a()Lkfj;

    move-result-object v2

    invoke-interface {v2}, Lkfj;->c()Lkll;

    move-result-object v2

    iget v3, v0, Lfte;->a:I

    invoke-virtual {v1, v2, v15, v3}, Lgip;->a(Lkll;Lkou;I)Lfsf;

    move-result-object v1

    iget-boolean v2, v0, Lfte;->i:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const-string v3, "height"

    const-string v4, "width"

    if-eqz v2, :cond_3

    :try_start_7
    new-instance v2, Lkaf;

    iget-object v5, v14, Lfpl;->g:Landroid/media/MediaFormat;

    invoke-virtual {v5, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v14, Lfpl;->g:Landroid/media/MediaFormat;

    invoke-virtual {v5, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v4, v3}, Lkaf;-><init>(II)V

    move-object v6, v2

    goto :goto_1

    :cond_3
    new-instance v2, Lkaf;

    iget-object v5, v14, Lfpl;->f:Landroid/media/MediaFormat;

    invoke-virtual {v5, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v14, Lfpl;->f:Landroid/media/MediaFormat;

    invoke-virtual {v5, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v4, v3}, Lkaf;-><init>(II)V

    move-object v6, v2

    :goto_1
    iget-boolean v0, v0, Lfte;->i:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v14, Lfpl;->e:Ldhi;

    sget-object v2, Ldhw;->t:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v14, Lfpl;->e:Ldhi;

    sget-object v2, Ldhw;->P:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    :goto_2
    iget-object v0, v14, Lfpl;->e:Ldhi;

    sget-object v2, Ldhw;->u:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    invoke-static {v11, v0}, Lfpl;->d(ZZ)I

    move-result v0

    move v7, v0

    goto :goto_3

    :cond_5
    iget-object v0, v14, Lfpl;->e:Ldhi;

    sget-object v2, Ldhw;->a:Ldhj;

    invoke-interface {v0}, Ldhi;->e()V

    iget-object v0, v14, Lfpl;->e:Ldhi;

    invoke-interface {v0}, Ldhi;->e()V

    invoke-static {v11, v11}, Lfpl;->d(ZZ)I

    move-result v0

    move v7, v0

    :goto_3
    iget-object v0, v14, Lfpl;->e:Ldhi;

    sget-object v2, Ldhw;->z:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    const/4 v11, 0x3

    if-eqz v0, :cond_7

    iget-object v2, v14, Lfpl;->e:Ldhi;

    sget-object v3, Ldhw;->W:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    const/16 v17, 0x2

    goto :goto_4

    :cond_6
    goto :goto_4

    :cond_7
    const/16 v17, 0x3

    :goto_4
    move-object/from16 v2, p3

    iget-boolean v2, v2, Lnom;->a:Z

    if-eqz v2, :cond_8

    iget-object v2, v14, Lfpl;->i:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    move/from16 v11, v17

    :goto_5
    new-instance v2, Ljfe;

    if-eqz v0, :cond_9

    const-wide/16 v3, 0x0

    move-wide v9, v3

    goto :goto_6

    :cond_9
    iget-wide v3, v14, Lfpl;->h:J

    move-wide v9, v3

    :goto_6
    move-object v5, v2

    move v8, v11

    invoke-direct/range {v5 .. v10}, Ljfe;-><init>(Lkaf;IIJ)V

    invoke-virtual/range {v22 .. v22}, Lkma;->k()Lkpb;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, "Failed to fork raw image"

    move-object/from16 v3, v18

    invoke-interface {v3, v0}, Lkaq;->d(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual/range {v21 .. v21}, Lkma;->l()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    invoke-virtual/range {v22 .. v22}, Lkma;->l()V

    return-void

    :cond_a
    move-object/from16 v3, v18

    :try_start_9
    iget-object v4, v14, Lfpl;->c:Lfse;

    move-object/from16 v5, v20

    invoke-interface {v4, v0, v1, v2, v5}, Lfse;->b(Lkpb;Lfsf;Ljfe;Lfsd;)V

    packed-switch v11, :pswitch_data_0

    const-string v0, "YUV_IMAGE"

    goto :goto_7

    :pswitch_0
    const-string v0, "YUV_HARDWARE_BUFFER"

    goto :goto_7

    :pswitch_1
    const-string v0, "RGBA_HARDWARE_BUFFER"

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launched FastMomentsHdr shot, outputFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lkaq;->b(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual/range {v21 .. v21}, Lkma;->l()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    invoke-virtual/range {v22 .. v22}, Lkma;->l()V

    return-void

    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v21, v9

    move-object/from16 v22, v12

    :goto_8
    move-object v1, v0

    :goto_9
    :try_start_b
    invoke-virtual/range {v21 .. v21}, Lkma;->l()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_c
    invoke-static {v1, v2}, Lgdh;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_a
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_b

    :catchall_6
    move-exception v0

    move-object/from16 v22, v12

    :goto_b
    move-object v1, v0

    :goto_c
    :try_start_d
    invoke-virtual/range {v22 .. v22}, Lkma;->l()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-static {v1, v2}, Lgdh;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_d
    throw v1

    :catch_0
    move-exception v0

    move-object/from16 v2, p1

    move-object v3, v15

    const-string v1, "Timed out waiting for metadata."

    invoke-interface {v3, v1}, Lkaq;->d(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lkeb;->close()V

    invoke-interface {v10, v0}, Lfsl;->b(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    move-object/from16 v2, p1

    move-object v3, v15

    const-string v1, "metadata get interrupted"

    invoke-interface {v3, v1}, Lkaq;->d(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lkeb;->close()V

    invoke-interface {v10, v0}, Lfsl;->b(Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v0

    move-object/from16 v2, p1

    move-object v3, v15

    const-string v1, "Failed to acquire metadata from the first frame."

    invoke-interface {v3, v1}, Lkaq;->d(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lkeb;->close()V

    invoke-interface {v10, v0}, Lfsl;->b(Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
