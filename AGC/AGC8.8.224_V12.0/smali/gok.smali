.class public final synthetic Lgok;
.super Ljava/lang/Object;

# interfaces
.implements Lgon;


# instance fields
.field public final synthetic a:Lgom;

.field public final synthetic b:Z

.field public final synthetic c:Lnph;

.field public final synthetic d:Lehb;


# direct methods
.method public synthetic constructor <init>(Lgom;Lehb;ZLnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgok;->a:Lgom;

    iput-object p2, p0, Lgok;->d:Lehb;

    iput-boolean p3, p0, Lgok;->b:Z

    iput-object p4, p0, Lgok;->c:Lnph;

    return-void
.end method


# virtual methods
.method public final a(JLigo;Lnqz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    iget-object v2, v1, Lgok;->a:Lgom;

    iget-object v3, v1, Lgok;->d:Lehb;

    iget-boolean v0, v1, Lgok;->b:Z

    iget-object v4, v1, Lgok;->c:Lnph;

    invoke-static/range {p4 .. p4}, Lnsy;->k(Lnqz;)Z

    move-result v5

    invoke-static {v5}, Lmoz;->e(Z)V

    sget-object v5, Lgop;->a:Lnak;

    if-eqz v3, :cond_c

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v4}, Lnph;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgoo;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_0
    :goto_0
    move-object v0, v5

    :goto_1
    invoke-static/range {p3 .. p3}, Lgop;->f(Ligo;)Z

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    iget-object v4, v2, Lgom;->b:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;->close()V

    iput-object v5, v2, Lgom;->b:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    :cond_1
    if-eqz v0, :cond_2

    iget-object v4, v0, Lgoo;->b:Ligo;

    iget-wide v8, v0, Lgoo;->a:J

    move-object v11, v4

    move-wide v9, v8

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    move-wide/from16 v9, p1

    move-object/from16 v11, p3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_5

    iget-object v0, v0, Lgoo;->b:Ligo;

    iget-object v4, v0, Ligo;->b:Ljava/lang/Object;

    check-cast v4, Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v5

    iget-object v0, v0, Ligo;->a:Ljava/lang/Object;

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v4}, Lcom/google/googlex/gcam/InterleavedImageU8;->g()V

    :cond_4
    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    goto :goto_2

    :cond_5
    :goto_2
    move-wide/from16 v9, p1

    move-object/from16 v11, p3

    const/4 v0, 0x0

    :goto_3
    invoke-static/range {p5 .. p5}, Lgop;->b(Ljava/lang/String;)Lmqp;

    move-result-object v4

    invoke-static/range {p6 .. p6}, Lgop;->b(Ljava/lang/String;)Lmqp;

    move-result-object v5

    iget-object v2, v2, Lgom;->b:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    invoke-static {v2}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lgoz;->a(Lmqp;Lmqp;Lmqp;)Lgpa;

    move-result-object v12

    iget-object v2, v3, Lehb;->d:Lehe;

    iget-object v2, v2, Lehe;->g:Ljew;

    invoke-virtual {v2}, Ljew;->x()Lhbq;

    move-result-object v15

    iget-object v2, v11, Ligo;->b:Ljava/lang/Object;

    check-cast v2, Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v2}, Lcom/google/googlex/gcam/InterleavedImageU8;->c()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, v11, Ligo;->b:Ljava/lang/Object;

    check-cast v2, Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v2}, Lcom/google/googlex/gcam/InterleavedImageU8;->b()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    iget-object v4, v11, Ligo;->a:Ljava/lang/Object;

    check-cast v4, Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v4}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v4

    if-lez v4, :cond_7

    iget-object v4, v11, Ligo;->a:Ljava/lang/Object;

    check-cast v4, Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v4}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v4

    if-lez v4, :cond_7

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    if-nez v2, :cond_9

    if-eqz v6, :cond_8

    goto :goto_6

    :cond_8
    sget-object v0, Lehf;->b:Lnak;

    iget-object v0, v3, Lehb;->d:Lehe;

    invoke-virtual {v15}, Lhbq;->close()V

    sget-object v2, Lmpx;->a:Lmpx;

    invoke-virtual {v0, v9, v10, v2}, Lehe;->f(JLmqp;)V

    return-void

    :cond_9
    :goto_6
    if-eqz v0, :cond_b

    sget-object v0, Lehf;->b:Lnak;

    iget-object v0, v3, Lehb;->b:Lgxl;

    invoke-interface {v0}, Lgxl;->s()Ljava/lang/String;

    iget-object v0, v3, Lehb;->b:Lgxl;

    invoke-interface {v0}, Lgxl;->f()Lgxn;

    move-result-object v2

    iget-object v0, v2, Lgxn;->a:Lkph;

    invoke-interface {v0}, Lkph;->b()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_a

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v4, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :try_start_1
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v0, v3, Lehb;->d:Lehe;

    iget-object v0, v0, Lehe;->e:Lehf;

    iget-object v0, v0, Lehf;->i:Ldzf;

    sget-object v7, Ldyy;->a:Ldyy;

    invoke-interface {v0, v5, v6, v7}, Ldzf;->b(JLdyy;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    sget-object v5, Lehf;->b:Lnak;

    invoke-virtual {v5}, Lnaf;->b()Lnaz;

    move-result-object v5

    const-string v6, "Failed to parse media store id from %s"

    const/16 v7, 0x5b2

    invoke-static {v5, v6, v4, v7, v0}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    :cond_a
    :goto_7
    sget-object v0, Ldyy;->a:Ldyy;

    iput-object v0, v2, Lgxn;->c:Ldyy;

    iget-object v0, v2, Lgxn;->a:Lkph;

    const-string v2, "ORIGINAL"

    invoke-interface {v0, v2}, Lkph;->h(Ljava/lang/String;)V

    goto :goto_8

    :cond_b
    sget-object v0, Lehf;->b:Lnak;

    :goto_8
    iget-object v8, v3, Lehb;->d:Lehe;

    const/16 v13, 0x64

    sget-object v14, Leen;->b:Leen;

    iget-object v0, v3, Lehb;->c:Lmqp;

    move-object/from16 v16, v0

    invoke-virtual/range {v8 .. v16}, Lehe;->h(JLigo;Lgpa;ILeen;Lhbq;Lmqp;)V

    return-void

    :cond_c
    return-void
.end method
