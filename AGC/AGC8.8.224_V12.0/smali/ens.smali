.class public final Lens;
.super Ljava/lang/Object;

# interfaces
.implements Lenv;
.implements Lecw;


# static fields
.field private static final b:Lnak;


# instance fields
.field public final a:Ljava/util/Map;

.field private final c:Lebl;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:I

.field private final f:Lenm;

.field private final g:Ldhi;

.field private h:I

.field private i:Z

.field private final j:Lgkf;

.field private final k:Lva;

.field private final l:Lcvr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/kepler/AstrolapseProcessorImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lens;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Lgkf;Lebl;Lcvr;Lenm;Lva;Ldhi;Ljava/util/concurrent/Executor;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p8, Ljava/util/HashMap;

    invoke-direct {p8}, Ljava/util/HashMap;-><init>()V

    iput-object p8, p0, Lens;->a:Ljava/util/Map;

    iput-object p1, p0, Lens;->j:Lgkf;

    iput-object p2, p0, Lens;->c:Lebl;

    iput-object p4, p0, Lens;->f:Lenm;

    iput-object p5, p0, Lens;->k:Lva;

    iput-object p3, p0, Lens;->l:Lcvr;

    iput-object p7, p0, Lens;->d:Ljava/util/concurrent/Executor;

    sget-object p1, Ldhq;->p:Ldhk;

    invoke-interface {p6, p1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    const/16 p2, 0xf

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lens;->h:I

    sget-object p1, Ldhq;->r:Ldhk;

    invoke-interface {p6, p1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    const p2, 0x249f0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lens;->e:I

    iput-object p6, p0, Lens;->g:Ldhi;

    return-void
.end method

.method private final l(Leea;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lens;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lenr;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lenr;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lens;->f:Lenm;

    invoke-virtual {v0, p1}, Lenm;->a(Leea;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lens;->j(Leea;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic b(Lhjg;Lebd;)V
    .locals 0

    return-void
.end method

.method public final c(Leea;Lecq;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lens;->i:Z

    invoke-virtual {p2}, Lecq;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lens;->l(Leea;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Lgxy;)V
    .locals 3

    sget-object v0, Lnbk;->a:Lnbc;

    iget v0, p1, Lgxy;->a:I

    iget-object v0, p0, Lens;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leea;

    iget-object v2, v1, Leea;->v:Lgkr;

    iget-object v2, v2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v2}, Lgxl;->h()Lgxy;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    return-void

    :cond_2
    const-string p1, "Shot aborted."

    invoke-direct {p0, v1, p1}, Lens;->l(Leea;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Leea;Lkeb;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lens;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lenr;

    iget-object v0, p0, Lens;->c:Lebl;

    invoke-virtual {v0}, Lebl;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p1, Lenr;->a:Lgmp;

    iget v0, v0, Lgmp;->r:I

    iget v1, p0, Lens;->h:I

    if-ge v0, v1, :cond_3

    invoke-interface {p2}, Lkeb;->a()Lkeb;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lnbk;->a:Lnbc;

    iget-object v1, p1, Lenr;->a:Lgmp;

    invoke-virtual {v1, v0}, Lgmp;->c(Lkeb;)V

    iget-boolean v0, p0, Lens;->i:Z

    iget-object v1, p0, Lens;->g:Ldhi;

    sget-object v2, Ldhq;->an:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p1, Lenr;->a:Lgmp;

    iget v1, v1, Lgmp;->r:I

    iget v4, p0, Lens;->h:I

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p1, Lenr;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget-object v3, p0, Lens;->f:Lenm;

    iget-object v4, p1, Lenr;->b:Leea;

    iget-object v5, p1, Lenr;->a:Lgmp;

    iget v6, p0, Lens;->h:I

    iget-object v1, p1, Lenr;->d:Lenu;

    iget-object v7, v1, Lenu;->a:Lgxn;

    iget-object v7, v7, Lgxn;->a:Lkph;

    invoke-virtual {v1, v7}, Lenu;->a(Lkph;)V

    iget-object v1, v1, Lenu;->a:Lgxn;

    iget-object v7, v1, Lgxn;->a:Lkph;

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Lenm;->c(Leea;Lgmp;ILkph;Lnph;)V

    new-instance v1, Lenq;

    invoke-direct {v1, p0, p1, v2}, Lenq;-><init>(Lens;Lenr;I)V

    iget-object v2, p0, Lens;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    :cond_2
    iget-object v0, p0, Lens;->f:Lenm;

    iget-object p1, p1, Lenr;->b:Leea;

    invoke-virtual {v0, p1}, Lenm;->d(Leea;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-interface {p2}, Lkeb;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p2}, Lkeb;->close()V

    throw p1
.end method

.method public final f(Leea;Lcom/google/googlex/gcam/BurstSpec;Lkou;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lens;->c:Lebl;

    invoke-virtual {v2}, Lebl;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lnbk;->a:Lnbc;

    iget-object v2, v0, Lens;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lmoz;->p(Z)V

    iget-object v2, v0, Lens;->a:Ljava/util/Map;

    iget-object v3, v0, Lens;->j:Lgkf;

    invoke-virtual {v3}, Lgkf;->a()Lebb;

    move-result-object v6

    iget-object v3, v0, Lens;->k:Lva;

    iget-object v4, v1, Leea;->v:Lgkr;

    iget-object v4, v4, Lgkr;->c:Ljava/lang/Object;

    iget-object v5, v3, Lva;->a:Ljava/lang/Object;

    sget-object v7, Ldhq;->a:Ldhk;

    invoke-interface {v5}, Ldhi;->f()V

    new-instance v14, Lenu;

    iget-object v5, v3, Lva;->b:Ljava/lang/Object;

    iget-object v10, v3, Lva;->c:Ljava/lang/Object;

    invoke-interface {v4}, Lgxl;->k()Lhjc;

    move-result-object v11

    move-object v9, v5

    check-cast v9, Lkpo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lenu;-><init>(Lkpo;Ldzf;Lhjc;[B[B)V

    new-instance v3, Lenr;

    new-instance v11, Lgmp;

    iget-object v5, v1, Leea;->v:Lgkr;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v11

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v10}, Lgmp;-><init>(Lgkr;Lebb;Lcom/google/googlex/gcam/BurstSpec;Lkou;[B[B)V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    invoke-direct {v3, v11, v1, v4, v14}, Lenr;-><init>(Lgmp;Leea;Ljava/util/concurrent/atomic/AtomicBoolean;Lenu;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/gcam/BurstSpec;->b()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/gcam/FrameRequestVector;->a()J

    move-result-wide v1

    long-to-int v2, v1

    iget v1, v0, Lens;->h:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lens;->h:I

    :cond_0
    return-void
.end method

.method public final g(Lgxy;)V
    .locals 1

    iget-object v0, p0, Lens;->l:Lcvr;

    invoke-virtual {v0, p1}, Lcvr;->K(Lgxy;)Leeb;

    move-result-object p1

    invoke-virtual {p1, p0}, Leeb;->f(Lecw;)V

    return-void
.end method

.method public final h(Leea;)V
    .locals 3

    sget-object v0, Lnbk;->a:Lnbc;

    invoke-virtual {p1}, Leea;->a()I

    iget-object v0, p0, Lens;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lenr;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lenr;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lenr;->a:Lgmp;

    iget v1, v1, Lgmp;->r:I

    iget v2, p0, Lens;->h:I

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Kelper not produced since not enough frames."

    invoke-direct {p0, p1, v0}, Lens;->l(Leea;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, v0, Lenr;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Kepler was never initiated."

    invoke-virtual {p0, p1, v0}, Lens;->j(Leea;Ljava/lang/String;)V

    return-void

    :cond_2
    return-void
.end method

.method public final synthetic i(Leea;)V
    .locals 0

    return-void
.end method

.method public final j(Leea;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lens;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    sget-object v1, Lnbk;->a:Lnbc;

    const-string v2, "KeplerProcessorImpl"

    invoke-interface {v0, v1, v2}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x67a

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-virtual {p1}, Leea;->a()I

    move-result v1

    if-nez p2, :cond_0

    const-string p2, "Unknown"

    :cond_0
    const-string v2, "Shot cancelled. Shot id: %d. Reason: %s"

    invoke-interface {v0, v2, v1, p2}, Lnah;->u(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p2, p0, Lens;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lenr;

    if-eqz p1, :cond_1

    iget-object p2, p1, Lenr;->a:Lgmp;

    invoke-virtual {p2}, Lgmp;->b()V

    iget-object p1, p1, Lenr;->d:Lenu;

    iget-object p2, p1, Lenu;->a:Lgxn;

    invoke-virtual {p2}, Lgxn;->a()V

    iget-object p2, p1, Lenu;->b:Lgxr;

    invoke-virtual {p2}, Lgxr;->d()V

    iget-object p1, p1, Lenu;->c:Lhjc;

    check-cast p1, Lhjd;

    iget-object p1, p1, Lhjd;->v:Lnph;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final declared-synchronized k(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnbk;->a:Lnbc;

    iget v0, p0, Lens;->e:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lens;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final p(Leea;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lens;->i:Z

    iget-object p1, p1, Leea;->v:Lgkr;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->h()Lgxy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lens;->d(Lgxy;)V

    return-void
.end method
