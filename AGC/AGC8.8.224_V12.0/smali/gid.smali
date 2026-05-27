.class public final Lgid;
.super Ljava/lang/Object;

# interfaces
.implements Lgam;


# static fields
.field public static final a:Lnak;


# instance fields
.field private final b:Lken;

.field private final c:Lkfj;

.field private final d:Lfyz;

.field private final e:I

.field private final f:Lghh;

.field private final g:Lggm;

.field private final h:Lkfh;

.field private final i:Lkbc;

.field private final j:Ljvs;

.field private final k:Lkgq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/commands/PckConvergedCaptureCommand"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgid;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lken;Lkfj;Lkgq;Lfyz;ILghh;Lggm;Lkfh;Lkbc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgid;->b:Lken;

    iput-object p2, p0, Lgid;->c:Lkfj;

    iput-object p3, p0, Lgid;->k:Lkgq;

    iput-object p4, p0, Lgid;->d:Lfyz;

    iput p5, p0, Lgid;->e:I

    iput-object p6, p0, Lgid;->f:Lghh;

    iput-object p7, p0, Lgid;->g:Lggm;

    iput-object p8, p0, Lgid;->h:Lkfh;

    iput-object p9, p0, Lgid;->i:Lkbc;

    invoke-virtual {p3}, Lkgq;->a()Ljvs;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Ljvw;->e(Ljvs;Ljava/lang/Comparable;)Ljvs;

    move-result-object p1

    iput-object p1, p0, Lgid;->j:Ljvs;

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget-object v0, p0, Lgid;->j:Ljvs;

    return-object v0
.end method

.method public final b()Ljvs;
    .locals 1

    invoke-static {}, Lfwt;->e()Lfwn;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lgal;Lgkr;)V
    .locals 12

    iget-object v0, p0, Lgid;->b:Lken;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lgid;->k:Lkgq;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lgid;->i:Lkbc;

    const-string v1, "PckConvergedCaptureCommand"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lgid;->i:Lkbc;

    const-string v1, "AcquireFrameServerSession"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lgid;->b:Lken;

    invoke-interface {v0}, Lken;->d()Lker;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    :try_start_1
    iget-object v1, p0, Lgid;->f:Lghh;

    invoke-interface {v1, v0}, Lghh;->a(Lker;)Lghg;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    :try_start_2
    iget-object v2, p0, Lgid;->g:Lggm;

    iget-object v3, p0, Lgid;->h:Lkfh;

    invoke-virtual {v2, v0, v3}, Lggm;->b(Lker;Lkfh;)Lfub;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    invoke-interface {v0}, Lker;->c()Lkem;

    move-result-object v3

    iget-object v4, p0, Lgid;->k:Lkgq;

    invoke-interface {v3, v4}, Lkem;->b(Lkgq;)V

    iget-object v4, p0, Lgid;->f:Lghh;

    instance-of v4, v4, Lghu;

    iget-object v5, p2, Lgkr;->d:Ljava/lang/Object;

    check-cast v5, Lfte;

    iget-object v5, v5, Lfte;->g:Ljwb;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v5, v4}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v4, p0, Lgid;->i:Lkbc;

    const-string v5, "AcquireImageSaverSession"

    invoke-interface {v4, v5}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v4, p0, Lgid;->d:Lfyz;

    invoke-interface {v4, p2}, Lfyz;->a(Lgkr;)Lfyy;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-object v5, p0, Lgid;->i:Lkbc;

    const-string v6, "BuildingFrameRequests"

    invoke-interface {v5, v6}, Lkbc;->g(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lgid;->k:Lkgq;

    invoke-virtual {v6}, Lkgq;->a()Ljvs;

    move-result-object v6

    invoke-interface {v6}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lgid;->e:I

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x0

    if-ge v8, v6, :cond_1

    move-object v10, v3

    check-cast v10, Lkfy;

    invoke-static {v10}, Lkfy;->g(Lkfy;)Lkfy;

    move-result-object v10

    if-gtz v8, :cond_0

    new-instance v11, Lgib;

    invoke-direct {v11, p2, v9, v9}, Lgib;-><init>(Lgkr;[B[B)V

    invoke-interface {v10, v11}, Lkem;->f(Lkfg;)V

    :cond_0
    invoke-interface {v10}, Lkem;->a()Lkfz;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lgid;->i:Lkbc;

    const-string v3, "SubmittingFrameRequests"

    invoke-interface {p2, v3}, Lkbc;->g(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    invoke-interface {v0, v5}, Lker;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v7

    invoke-static {v3}, Lmoz;->p(Z)V

    invoke-interface {v1}, Lghg;->close()V

    invoke-interface {v2}, Lfub;->close()V

    invoke-interface {v0}, Lker;->close()V

    iget-object v3, p0, Lgid;->i:Lkbc;

    const-string v5, "RetrievingImages"

    invoke-interface {v3, v5}, Lkbc;->g(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkgn;

    iget-object v5, p0, Lgid;->i:Lkbc;

    const-string v6, "GettingImageFromFrame"

    invoke-interface {v5, v6}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v5, p0, Lgid;->k:Lkgq;

    invoke-virtual {v3, v5}, Lkgn;->a(Lkgq;)Lkeb;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v6, p0, Lgid;->c:Lkfj;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v7

    new-instance v8, Lgic;

    invoke-direct {v8, v5, v7}, Lgic;-><init>(Lkeb;Lnph;)V

    invoke-interface {v5, v8}, Lkeb;->k(Lkfg;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v5}, Lkfg;->z(Lkeb;)V

    invoke-interface {v5, v6}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object v8

    if-nez v8, :cond_2

    sget-object v7, Lgid;->a:Lnak;

    invoke-virtual {v7}, Lnaf;->c()Lnaz;

    move-result-object v7

    check-cast v7, Lnah;

    const/16 v8, 0xa76

    invoke-interface {v7, v8}, Lnah;->G(I)Lnaz;

    move-result-object v7

    check-cast v7, Lnah;

    const-string v8, "Failed to get image from %s for frame %s"

    invoke-interface {v7, v8, v6, v5}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    new-instance v6, Lfws;

    invoke-direct {v6, v8, v7}, Lfws;-><init>(Lkpb;Lnou;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-interface {v5}, Lkeb;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_0
    move-exception v6

    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    :try_start_8
    invoke-interface {v5}, Lkeb;->close()V

    move-object v6, v9

    :goto_3
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lfws;->k()Lnou;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p0, Lgid;->i:Lkbc;

    const-string v10, "AddingImageToImageSaver"

    invoke-interface {v8, v10}, Lkbc;->g(Ljava/lang/String;)V

    invoke-virtual {v6}, Lkoy;->d()J

    invoke-interface {v4, v6, v7}, Lfyy;->a(Lkpb;Lnou;)V

    :cond_3
    invoke-interface {v5}, Lkeb;->close()V

    goto :goto_5

    :goto_4
    invoke-interface {v5}, Lkeb;->close()V

    throw p2

    :cond_4
    :goto_5
    invoke-virtual {v3}, Lkgn;->close()V

    iget-object v3, p0, Lgid;->i:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V

    goto/16 :goto_1

    :cond_5
    invoke-interface {p1}, Lgal;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v4, :cond_6

    :try_start_9
    invoke-interface {v4}, Lfyy;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_6
    :try_start_a
    invoke-interface {v2}, Lfub;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v1, :cond_7

    :try_start_b
    invoke-interface {v1}, Lghg;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :cond_7
    :try_start_c
    invoke-interface {v0}, Lker;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    iget-object p2, p0, Lgid;->i:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    iget-object p2, p0, Lgid;->i:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    iget-object p2, p0, Lgid;->f:Lghh;

    invoke-interface {p2}, Lghh;->b()V

    invoke-interface {p1}, Lgal;->close()V

    return-void

    :catchall_1
    move-exception p2

    if-eqz v4, :cond_8

    :try_start_d
    invoke-interface {v4}, Lfyy;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v3

    :try_start_e
    invoke-static {p2, v3}, Lgia;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_8
    :goto_6
    throw p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catchall_3
    move-exception p2

    :try_start_f
    invoke-interface {v2}, Lfub;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v2

    :try_start_10
    invoke-static {p2, v2}, Lgia;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    throw p2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :catchall_5
    move-exception p2

    if-eqz v1, :cond_9

    :try_start_11
    invoke-interface {v1}, Lghg;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception v1

    :try_start_12
    invoke-static {p2, v1}, Lgia;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_9
    :goto_8
    throw p2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :catchall_7
    move-exception p2

    :try_start_13
    invoke-interface {v0}, Lker;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception v0

    :try_start_14
    invoke-static {p2, v0}, Lgia;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_9
    throw p2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    :catchall_9
    move-exception p2

    iget-object v0, p0, Lgid;->i:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, p0, Lgid;->i:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, p0, Lgid;->f:Lghh;

    invoke-interface {v0}, Lghh;->b()V

    invoke-interface {p1}, Lgal;->close()V

    throw p2

    :cond_a
    invoke-interface {p1}, Lgal;->close()V

    new-instance p1, Lkdf;

    const-string p2, "FrameServer is not available"

    invoke-direct {p1, p2}, Lkdf;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a
.end method
