.class public final Ledq;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lilz;

.field public static final b:Lilz;


# instance fields
.field public final c:Lkaq;

.field public final d:Logd;

.field public final e:Logd;

.field public final f:Lnsb;

.field public final g:Lecy;

.field public final h:Ldhi;

.field public final i:Lmqp;

.field public final j:Lgdd;

.field public final k:Ledd;

.field private final l:Logd;

.field private final m:Logd;

.field private final n:Logd;

.field private final o:Lmqp;

.field private final p:Lgsp;

.field private final q:Ldzf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lilz;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-direct {v0, v1}, Lilz;-><init>(F)V

    sput-object v0, Ledq;->a:Lilz;

    new-instance v0, Lilz;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-direct {v0, v1}, Lilz;-><init>(F)V

    sput-object v0, Ledq;->b:Lilz;

    return-void
.end method

.method public constructor <init>(Lkaq;Logd;Logd;Logd;Logd;Logd;Lnsb;Lecy;Ldhi;Lmqp;Lmqp;Lgdd;Ledd;Lgsp;Ldzf;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "PostprocOps"

    move-object v2, p1

    invoke-interface {p1, v1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object v1

    iput-object v1, v0, Ledq;->c:Lkaq;

    move-object v1, p2

    iput-object v1, v0, Ledq;->l:Logd;

    move-object v1, p5

    iput-object v1, v0, Ledq;->m:Logd;

    move-object v1, p3

    iput-object v1, v0, Ledq;->d:Logd;

    move-object v1, p4

    iput-object v1, v0, Ledq;->n:Logd;

    move-object v1, p6

    iput-object v1, v0, Ledq;->e:Logd;

    move-object v1, p7

    iput-object v1, v0, Ledq;->f:Lnsb;

    move-object v1, p8

    iput-object v1, v0, Ledq;->g:Lecy;

    move-object v1, p9

    iput-object v1, v0, Ledq;->h:Ldhi;

    move-object v1, p10

    iput-object v1, v0, Ledq;->i:Lmqp;

    move-object v1, p12

    iput-object v1, v0, Ledq;->j:Lgdd;

    move-object v1, p11

    iput-object v1, v0, Ledq;->o:Lmqp;

    move-object/from16 v1, p13

    iput-object v1, v0, Ledq;->k:Ledd;

    move-object/from16 v1, p14

    iput-object v1, v0, Ledq;->p:Lgsp;

    move-object/from16 v1, p15

    iput-object v1, v0, Ledq;->q:Ldzf;

    return-void
.end method

.method public static final j(Ledo;)Ledo;
    .locals 12

    iget-object v0, p0, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lnrj;->b:Lnrj;

    new-instance v2, Lcom/google/googlex/gcam/YuvImage;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU8;->c()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU8;->b()I

    move-result v4

    invoke-direct {v2, v3, v4, v1}, Lcom/google/googlex/gcam/YuvImage;-><init>(IILnrj;)V

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU8;->e()Lcom/google/googlex/gcam/InterleavedReadViewU8;

    move-result-object v1

    invoke-static {v2}, Lnsy;->g(Lcom/google/googlex/gcam/YuvImage;)Lcom/google/googlex/gcam/YuvWriteView;

    move-result-object v3

    iget-wide v4, v1, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a:J

    invoke-static {v3}, Lcom/google/googlex/gcam/YuvWriteView;->c(Lcom/google/googlex/gcam/YuvWriteView;)J

    move-result-wide v6

    const/4 v1, 0x1

    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const-string v11, "src view is null"

    invoke-static {v10, v11}, Lmoz;->f(ZLjava/lang/Object;)V

    cmp-long v10, v6, v8

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v3, "dst view is null"

    invoke-static {v1, v3}, Lmoz;->f(ZLjava/lang/Object;)V

    invoke-static {v4, v5, v6, v7}, Lcom/google/googlex/gcam/image/YuvUtils;->rgbToYuvImpl(JJ)Z

    new-instance v1, Leej;

    iget-wide v3, p0, Ledo;->g:J

    invoke-direct {v1, v2, v3, v4}, Leej;-><init>(Lcom/google/googlex/gcam/YuvImage;J)V

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU8;->g()V

    invoke-virtual {p0}, Ledo;->b()Ledn;

    move-result-object p0

    invoke-virtual {p0}, Ledn;->b()V

    iput-object v1, p0, Ledn;->b:Leej;

    invoke-virtual {p0}, Ledn;->a()Ledo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ledo;)Ledo;
    .locals 9

    iget-object v0, p0, Ledq;->c:Lkaq;

    const-string v1, "Apply Face Deblur (RGB)."

    invoke-interface {v0, v1}, Lkaq;->i(Ljava/lang/String;)V

    iget-object v3, p1, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ledq;->n:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqy;

    iget-object v1, p1, Ledo;->j:Lcom/google/googlex/gcam/InterleavedImageU8;

    :try_start_0
    iget-object v4, p1, Ledo;->i:Ldrb;

    iget-object v2, p1, Ledo;->n:Lgkr;

    iget-object v2, v2, Lgkr;->c:Ljava/lang/Object;

    if-nez v4, :cond_0

    iget-object v0, p0, Ledq;->c:Lkaq;

    const-string v2, "Can\'t apply face deblur, empty face metadata"

    invoke-interface {v0, v2}, Lkaq;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    iget-object v5, p0, Ledq;->h:Ldhi;

    sget-object v6, Ldhd;->a:Ldhj;

    invoke-interface {v5}, Ldhi;->e()V

    invoke-interface {v2}, Lgxl;->k()Lhjc;

    move-result-object v6

    iget-object v7, p1, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    new-instance v8, Ldqx;

    move-object v2, v8

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Ldqx;-><init>(Lcom/google/googlex/gcam/InterleavedImageU8;Ldrb;Lcom/google/googlex/gcam/InterleavedImageU8;Lhjc;Lcom/google/googlex/gcam/ShotMetadata;)V

    invoke-interface {v0, v8}, Ldqy;->a(Ldqx;)Lnou;

    move-result-object v0

    invoke-interface {v0}, Lnou;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    :try_start_1
    iget-object v2, p0, Ledq;->c:Lkaq;

    const-string v3, "Can\'t apply face-deblurring (RGB)"

    invoke-interface {v2, v3, v0}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/googlex/gcam/InterleavedImageU8;->g()V

    :cond_1
    invoke-virtual {p1}, Ledo;->b()Ledn;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Ledn;->f:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {p1}, Ledn;->a()Ledo;

    move-result-object p1

    :goto_2
    return-object p1

    :goto_3
    throw p1
.end method

.method public final b(Ledo;)Ledo;
    .locals 3

    iget-object v0, p1, Ledo;->b:Leej;

    if-nez v0, :cond_0

    iget-object v0, p0, Ledq;->c:Lkaq;

    const-string v1, "Input Yuv image is unavailable."

    invoke-interface {v0, v1}, Lkaq;->i(Ljava/lang/String;)V

    return-object p1

    :cond_0
    iget-object v1, p0, Ledq;->c:Lkaq;

    const-string v2, "Extract face metadata from yuv image."

    invoke-interface {v1, v2}, Lkaq;->i(Ljava/lang/String;)V

    iget-object v1, p1, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v2, p0, Ledq;->o:Lmqp;

    check-cast v2, Lmqt;

    iget-object v2, v2, Lmqt;->a:Ljava/lang/Object;

    check-cast v2, Ldrc;

    invoke-interface {v2, v1, v0}, Ldrc;->b(Lcom/google/googlex/gcam/ShotMetadata;Lkpb;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ledo;->b()Ledn;

    move-result-object p1

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldrb;

    iput-object v0, p1, Ledn;->e:Ldrb;

    invoke-virtual {p1}, Ledn;->a()Ledo;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final c(Ledo;Z)Ledo;
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v8, v7, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v6, Ledq;->g:Lecy;

    sget-object v1, Lecy;->c:Lecy;

    iget-object v2, v6, Ledq;->e:Logd;

    invoke-interface {v2}, Logd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lgtd;

    invoke-interface {v9}, Lgtd;->a()Lgtk;

    move-result-object v15

    iget-object v2, v6, Ledq;->h:Ldhi;

    sget-object v3, Ldhd;->a:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v8}, Lcom/google/googlex/gcam/InterleavedImageU8;->c()I

    move-result v5

    invoke-virtual {v8}, Lcom/google/googlex/gcam/InterleavedImageU8;->b()I

    move-result v10

    invoke-direct {v2, v5, v10, v3}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(III)V

    move-object v14, v2

    goto :goto_0

    :cond_0
    move-object v14, v4

    :goto_0
    if-nez v14, :cond_1

    move-object/from16 v18, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v14}, Lcom/google/googlex/gcam/InterleavedImageU8;->f()Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    move-result-object v2

    move-object/from16 v18, v2

    :goto_1
    if-ne v0, v1, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_2
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    new-instance v17, Ledp;

    const/4 v10, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v5

    move v5, v10

    invoke-direct/range {v0 .. v5}, Ledp;-><init>(Ledq;Ledo;ZLjava/util/concurrent/atomic/AtomicReference;I)V

    invoke-virtual {v8}, Lcom/google/googlex/gcam/InterleavedImageU8;->f()Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    move-result-object v10

    iget-object v11, v7, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v0, v7, Ledo;->n:Lgkr;

    iget-object v0, v0, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lgxl;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Ledo;->n:Lgkr;

    iget-object v1, v1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1}, Lgxl;->k()Lhjc;

    move-result-object v16

    move/from16 v13, p2

    move-object v2, v14

    move-object v14, v0

    move-object v0, v15

    invoke-interface/range {v9 .. v18}, Lgtd;->c(Lcom/google/googlex/gcam/InterleavedWriteViewU8;Lcom/google/googlex/gcam/ShotMetadata;ZZLjava/lang/String;Lgtk;Lhjc;Lcom/google/android/apps/camera/rectiface/Rectiface$RectifaceCallback;Lcom/google/googlex/gcam/InterleavedWriteViewU8;)V

    invoke-virtual/range {p1 .. p1}, Ledo;->b()Ledn;

    move-result-object v1

    iput-object v0, v1, Ledn;->g:Lgtk;

    iput-object v2, v1, Ledn;->f:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v1}, Ledn;->a()Ledo;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ledo;)Ledo;
    .locals 2

    iget-object v0, p1, Ledo;->c:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Ledq;->e:Logd;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgtd;

    invoke-interface {v1, v0}, Lgtd;->h(Landroid/hardware/HardwareBuffer;)Lcom/google/googlex/gcam/InterleavedImageU8;

    move-result-object v0

    invoke-virtual {p1}, Ledo;->b()Ledn;

    move-result-object p1

    invoke-virtual {p1}, Ledn;->b()V

    iput-object v0, p1, Ledn;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {p1}, Ledn;->a()Ledo;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ledo;)Ledo;
    .locals 5

    iget-object v0, p1, Ledo;->b:Leej;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-interface {v0}, Lkpb;->c()I

    move-result v2

    invoke-interface {v0}, Lkpb;->b()I

    move-result v3

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(III)V

    iget-object v2, p0, Ledq;->f:Lnsb;

    invoke-virtual {v2, v0}, Lnsb;->c(Lkpb;)Lcom/google/googlex/gcam/YuvWriteView;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlex/gcam/InterleavedImageU8;->f()Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    move-result-object v2

    invoke-static {v0}, Lnsy;->f(Lcom/google/googlex/gcam/YuvWriteView;)Lcom/google/googlex/gcam/YuvReadView;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/googlex/gcam/image/YuvUtils;->a(Lcom/google/googlex/gcam/YuvReadView;Lcom/google/googlex/gcam/InterleavedWriteViewU8;)Z

    invoke-virtual {p1}, Ledo;->b()Ledn;

    move-result-object p1

    invoke-virtual {p1}, Ledn;->b()V

    iput-object v1, p1, Ledn;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {p1}, Ledn;->a()Ledo;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ledo;Ldyy;)V
    .locals 1

    :try_start_0
    iget-object p1, p1, Ledo;->n:Lgkr;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->f()Lgxn;

    move-result-object p1

    iget-object p1, p1, Lgxn;->a:Lkph;

    iget-object v0, p0, Ledq;->q:Ldzf;

    invoke-interface {v0, p1, p2}, Ldzf;->c(Lkph;Ldyy;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Ledq;->c:Lkaq;

    const-string v0, "Error adding badge for Swiss image:  %s"

    invoke-interface {p2, v0, p1}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final g(Ledo;)Z
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Ledq;->c:Lkaq;

    const-string v0, "Original image is absent. Skip saving the original image."

    invoke-interface {p1, v0}, Lkaq;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Ledq;->k:Ledd;

    invoke-static {}, Ledb;->a()Leam;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Leam;->f(Z)V

    const-string v3, "glare_removal_original"

    iput-object v3, v1, Leam;->b:Ljava/lang/String;

    sget-object v3, Ldyy;->n:Ldyy;

    iput-object v3, v1, Leam;->c:Ldyy;

    invoke-virtual {v1}, Leam;->a()Ledb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ledd;->a(Ledo;Ledb;)V

    return v2
.end method

.method public final h(Ledo;)V
    .locals 2

    iget-object v0, p1, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p1, Ledo;->i:Ldrb;

    if-nez v0, :cond_0

    iget-object p1, p0, Ledq;->c:Lkaq;

    const-string v0, "[Dereflection] Can\'t apply eyeglasses dereflection, empty face metadata"

    invoke-interface {p1, v0}, Lkaq;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Ledq;->m:Logd;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldnf;

    iget-object v1, p1, Ledo;->n:Lgkr;

    iget-object v1, v1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1}, Lgxl;->k()Lhjc;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v1

    check-cast v1, Lnor;

    iget-object v1, v1, Lnor;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledo;

    invoke-virtual {p0, v0}, Ledq;->g(Ledo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ledq;->c:Lkaq;

    const-string v1, "[Anglerfish] Save the original image as burst."

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    sget-object v0, Ldyy;->n:Ldyy;

    invoke-virtual {p0, p1, v0}, Ledq;->f(Ledo;Ldyy;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object v0, p0, Ledq;->c:Lkaq;

    const-string v1, "Can\'t apply anglerfish (RGB)"

    invoke-interface {v0, v1, p1}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final i(Ledo;)V
    .locals 6

    iget-object v0, p1, Ledo;->b:Leej;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Ledq;->l:Logd;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldqq;

    iget-object v2, p0, Ledq;->p:Lgsp;

    iget-wide v3, p1, Ledo;->g:J

    invoke-virtual {v2, v3, v4}, Lgsp;->d(J)Lgsl;

    move-result-object v2

    :try_start_0
    new-instance v3, Lcvm;

    iget-object v4, p1, Ledo;->m:Lebb;

    iget-object v4, v4, Lebb;->a:Lgyq;

    iget-object v5, p1, Ledo;->f:Lkou;

    invoke-static {v2}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    invoke-direct {v3, v0, v4, v5, v2}, Lcvm;-><init>(Lkpb;Lgyq;Lkou;Lmqp;)V

    invoke-interface {v1, v3}, Ldqq;->a(Lcvm;)Lnou;

    move-result-object v0

    invoke-interface {v0}, Lnou;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqp;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p1, Ledo;->n:Lgkr;

    iget-object v1, v1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1}, Lgxl;->k()Lhjc;

    move-result-object v1

    invoke-interface {v0, v1}, Ldqp;->b(Lhjc;)V

    invoke-interface {v0}, Ldqp;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    invoke-virtual {p1}, Lcom/google/googlex/gcam/ShotMetadata;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/gcam/ShotMetadata;->n(Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object v0, p0, Ledq;->c:Lkaq;

    const-string v1, "Can\'t apply post-processing"

    invoke-interface {v0, v1, p1}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
