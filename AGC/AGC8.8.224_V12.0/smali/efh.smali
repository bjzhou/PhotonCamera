.class public final Lefh;
.super Ljava/lang/Object;

# interfaces
.implements Ledm;


# instance fields
.field public final a:Lgaa;

.field public final b:Lgxl;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public e:J

.field public f:Z

.field public final synthetic g:Lefi;

.field public final h:Lebb;

.field public final i:Lnwn;

.field public final j:Ljew;

.field public final k:Lgkr;

.field private final l:Lefy;

.field private final m:Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;

.field private final n:Lefw;

.field private final o:Lefw;

.field private volatile p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Lefi;Lgkr;Lebb;Lefy;[B[B)V
    .locals 2

    iput-object p1, p0, Lefh;->g:Lefi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p5, Lnib;->e:Lnib;

    invoke-virtual {p5}, Lnws;->O()Lnwn;

    move-result-object p5

    iput-object p5, p0, Lefh;->i:Lnwn;

    new-instance p5, Ljew;

    const/4 p6, 0x0

    invoke-direct {p5, p6}, Ljew;-><init>([C)V

    iput-object p5, p0, Lefh;->j:Ljew;

    invoke-static {}, Lefx;->a()Lefw;

    move-result-object p5

    iput-object p5, p0, Lefh;->n:Lefw;

    invoke-static {}, Lefx;->a()Lefw;

    move-result-object p5

    iput-object p5, p0, Lefh;->o:Lefw;

    const/4 p5, 0x0

    iput-boolean p5, p0, Lefh;->p:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lefh;->e:J

    iput-boolean p5, p0, Lefh;->f:Z

    iput-boolean p5, p0, Lefh;->q:Z

    iput-object p2, p0, Lefh;->k:Lgkr;

    iput-object p3, p0, Lefh;->h:Lebb;

    iget-object p3, p2, Lgkr;->c:Ljava/lang/Object;

    iput-object p3, p0, Lefh;->b:Lgxl;

    iget-object p5, p2, Lgkr;->a:Ljava/lang/Object;

    iput-object p5, p0, Lefh;->a:Lgaa;

    iput-object p4, p0, Lefh;->l:Lefy;

    invoke-interface {p3}, Lgxl;->h()Lgxy;

    move-result-object p3

    invoke-virtual {p3}, Lgxy;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lefh;->c:Ljava/lang/String;

    iget-object p2, p2, Lgkr;->d:Ljava/lang/Object;

    check-cast p2, Lfte;

    iget p2, p2, Lfte;->a:I

    iget-object p3, p1, Lefi;->k:Limq;

    iget-object p6, p1, Lefi;->m:Lfuz;

    iget-object v0, p1, Lefi;->l:Ljvs;

    iget-object p1, p1, Lefi;->e:Ldhi;

    invoke-static {p2, p3, p6, v0, p1}, Lcea;->b(ILimq;Lkli;Ljvs;Ldhi;)I

    move-result p1

    iput p1, p0, Lefh;->d:I

    sget-object p1, Ledq;->b:Lilz;

    const/4 p2, 0x0

    invoke-interface {p5, p1, p2}, Lgaa;->a(Lilz;F)V

    new-instance p1, Leff;

    invoke-direct {p1, p0, p4}, Leff;-><init>(Lefh;Lefy;)V

    iput-object p1, p0, Lefh;->m:Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;

    return-void
.end method

.method public static bridge synthetic h(Lefh;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lefh;->q:Z

    return-void
.end method


# virtual methods
.method public final a(Lkpb;Lnou;)V
    .locals 0

    return-void
.end method

.method public final b(Lnrc;Lcom/google/googlex/gcam/ShotMetadata;Lnqv;Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lefh;->b:Lgxl;

    invoke-interface {v0}, Lgxl;->s()Ljava/lang/String;

    iget-object v0, p0, Lefh;->n:Lefw;

    invoke-virtual {v0, p1}, Lefw;->c(Lcom/google/googlex/gcam/RawReadView;)V

    iput-object p2, v0, Lefw;->b:Ljava/lang/Object;

    iput-object p3, v0, Lefw;->c:Ljava/lang/Object;

    invoke-static {p4}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object p1

    invoke-virtual {v0, p1}, Lefw;->b(Lmvv;)V

    return-void

    :cond_1
    :goto_0
    iget-object p2, p0, Lefh;->b:Lgxl;

    invoke-interface {p2}, Lgxl;->s()Ljava/lang/String;

    iget-object p2, p0, Lefh;->n:Lefw;

    new-instance p3, Lnrc;

    invoke-direct {p3}, Lnrc;-><init>()V

    invoke-virtual {p2, p3}, Lefw;->c(Lcom/google/googlex/gcam/RawReadView;)V

    new-instance p3, Lcom/google/googlex/gcam/ShotMetadata;

    invoke-direct {p3}, Lcom/google/googlex/gcam/ShotMetadata;-><init>()V

    iput-object p3, p2, Lefw;->b:Ljava/lang/Object;

    new-instance p3, Lnqv;

    invoke-direct {p3}, Lnqv;-><init>()V

    iput-object p3, p2, Lefw;->c:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/googlex/gcam/RawReadView;->a()V

    :cond_2
    return-void
.end method

.method public final c(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/PortraitRequest;Lcom/google/googlex/gcam/ShotMetadata;Lnou;Ljuf;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lefh;->b:Lgxl;

    invoke-interface {p2}, Lgxl;->s()Ljava/lang/String;

    iget-object p2, p0, Lefh;->n:Lefw;

    invoke-virtual {p2, p1}, Lefw;->d(Lcom/google/googlex/gcam/InterleavedImageU8;)V

    iput-object p3, p2, Lefw;->b:Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p1, p0, Lefh;->b:Lgxl;

    invoke-interface {p1}, Lgxl;->s()Ljava/lang/String;

    iget-object p1, p0, Lefh;->n:Lefw;

    new-instance p2, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-direct {p2}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>()V

    invoke-virtual {p1, p2}, Lefw;->d(Lcom/google/googlex/gcam/InterleavedImageU8;)V

    new-instance p2, Lcom/google/googlex/gcam/ShotMetadata;

    invoke-direct {p2}, Lcom/google/googlex/gcam/ShotMetadata;-><init>()V

    iput-object p2, p1, Lefw;->b:Ljava/lang/Object;

    return-void
.end method

.method public final close()V
    .locals 11

    iget-boolean v0, p0, Lefh;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lefh;->n:Lefw;

    invoke-virtual {v0}, Lefw;->a()Lefx;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lefh;->o:Lefw;

    invoke-virtual {v0}, Lefw;->a()Lefx;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lefh;->p:Z

    iget-object v1, p0, Lefh;->a:Lgaa;

    sget-object v2, Lecd;->a:Lilz;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v1, v2, v3}, Lgaa;->a(Lilz;F)V

    iget-object v1, p0, Lefh;->g:Lefi;

    iget-object v1, v1, Lefi;->i:Ljava/util/Map;

    iget-object v2, p0, Lefh;->b:Lgxl;

    invoke-interface {v2}, Lgxl;->s()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lefh;->g:Lefi;

    iget-object v1, v1, Lefi;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lefh;->e:J

    iget-object v1, p0, Lefh;->l:Lefy;

    iget-object v2, p0, Lefh;->g:Lefi;

    iget-object v4, v2, Lefi;->m:Lfuz;

    iget-object v7, p0, Lefh;->m:Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;

    iget-object v8, v2, Lefi;->g:Lkaf;

    move-wide v2, v9

    invoke-interface/range {v1 .. v8}, Lefy;->e(JLfuz;Lefx;Lefx;Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;Lkaf;)Lnou;

    move-result-object v1

    new-instance v2, Lehc;

    invoke-direct {v2, p0, v9, v10, v0}, Lehc;-><init>(Lefh;JI)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {v1, v2, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lefi;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-interface {v1, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x57d

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    iget-object v1, p0, Lefh;->c:Ljava/lang/String;

    const-string v2, "[%s] Unable to close the session. Is there a pending secondary shot?"

    invoke-interface {v0, v2, v1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v0

    sget-object v1, Lefi;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-interface {v1, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x57e

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    iget-object v1, p0, Lefh;->c:Ljava/lang/String;

    const-string v2, "[%s] Unable to close the session. Is there a pending primary shot?"

    invoke-interface {v0, v2, v1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lnrc;Lcom/google/googlex/gcam/ShotMetadata;Lnqv;Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lefh;->b:Lgxl;

    invoke-interface {v0}, Lgxl;->s()Ljava/lang/String;

    iget-object v0, p0, Lefh;->o:Lefw;

    invoke-virtual {v0, p1}, Lefw;->c(Lcom/google/googlex/gcam/RawReadView;)V

    iput-object p2, v0, Lefw;->b:Ljava/lang/Object;

    iput-object p3, v0, Lefw;->c:Ljava/lang/Object;

    invoke-static {p4}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object p1

    invoke-virtual {v0, p1}, Lefw;->b(Lmvv;)V

    return-void

    :cond_1
    :goto_0
    iget-object p2, p0, Lefh;->b:Lgxl;

    invoke-interface {p2}, Lgxl;->s()Ljava/lang/String;

    iget-object p2, p0, Lefh;->o:Lefw;

    new-instance p3, Lnrc;

    invoke-direct {p3}, Lnrc;-><init>()V

    invoke-virtual {p2, p3}, Lefw;->c(Lcom/google/googlex/gcam/RawReadView;)V

    new-instance p3, Lcom/google/googlex/gcam/ShotMetadata;

    invoke-direct {p3}, Lcom/google/googlex/gcam/ShotMetadata;-><init>()V

    iput-object p3, p2, Lefw;->b:Ljava/lang/Object;

    new-instance p3, Lnqv;

    invoke-direct {p3}, Lnqv;-><init>()V

    iput-object p3, p2, Lefw;->c:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/googlex/gcam/RawReadView;->a()V

    :cond_2
    return-void
.end method

.method public final e(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lefh;->b:Lgxl;

    invoke-interface {v0}, Lgxl;->s()Ljava/lang/String;

    iget-object v0, p0, Lefh;->o:Lefw;

    invoke-virtual {v0, p1}, Lefw;->d(Lcom/google/googlex/gcam/InterleavedImageU8;)V

    iput-object p2, v0, Lefw;->b:Ljava/lang/Object;

    invoke-static {p3}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object p1

    invoke-virtual {v0, p1}, Lefw;->b(Lmvv;)V

    return-void

    :cond_1
    :goto_0
    iget-object p2, p0, Lefh;->b:Lgxl;

    invoke-interface {p2}, Lgxl;->s()Ljava/lang/String;

    iget-object p2, p0, Lefh;->o:Lefw;

    new-instance p3, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-direct {p3}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>()V

    invoke-virtual {p2, p3}, Lefw;->d(Lcom/google/googlex/gcam/InterleavedImageU8;)V

    new-instance p3, Lcom/google/googlex/gcam/ShotMetadata;

    invoke-direct {p3}, Lcom/google/googlex/gcam/ShotMetadata;-><init>()V

    iput-object p3, p2, Lefw;->b:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/googlex/gcam/InterleavedImageU8;->g()V

    :cond_2
    return-void
.end method

.method public final f(J)V
    .locals 4

    iget-boolean v0, p0, Lefh;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lefh;->j:Ljew;

    invoke-virtual {v0}, Ljew;->w()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lefh;->a:Lgaa;

    sget-object v1, Ledq;->b:Lilz;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Lgaa;->a(Lilz;F)V

    iget-boolean v0, p0, Lefh;->f:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lefh;->b:Lgxl;

    invoke-interface {p1}, Lgxl;->s()Ljava/lang/String;

    iget-object p1, p0, Lefh;->b:Lgxl;

    invoke-interface {p1}, Lgxl;->k()Lhjc;

    move-result-object p1

    iget-object p2, p0, Lefh;->i:Lnwn;

    invoke-virtual {p2}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lnib;

    check-cast p1, Lhjd;

    iput-object p2, p1, Lhjd;->p:Lnib;

    return-void

    :cond_0
    new-instance v0, Ldog;

    iget-object v1, p0, Lefh;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PostProcessingFusionImageSaverImpl did not save any output images for session "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ldog;-><init>(Ljava/lang/String;)V

    sget-object v1, Lefi;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-interface {v1, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x580

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    iget-object v2, p0, Lefh;->c:Ljava/lang/String;

    iget-object v3, p0, Lefh;->b:Lgxl;

    invoke-interface {v3}, Lgxl;->s()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "[%s] Error processing the image, cancelling the session %s for %d"

    invoke-interface {v1, p2, v2, v3, p1}, Lnah;->B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lefh;->b:Lgxl;

    invoke-interface {p1, v0}, Lgxl;->w(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final g(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lefh;->g:Lefi;

    iget-object v0, v0, Lefi;->j:Lfwx;

    new-instance v1, Ldqf;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Ldqf;-><init>(Lefh;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Lfwx;->a(Lfwu;)Lnou;

    return-void
.end method
