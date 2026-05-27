.class public final Ldbf;
.super Ljava/lang/Object;

# interfaces
.implements Ldbx;
.implements Ljvs;


# static fields
.field private static final f:Lnak;


# instance fields
.field public a:Lklv;

.field public final b:Ljwb;

.field public final c:Ljava/util/List;

.field public final d:Ldhi;

.field public final e:Ljvs;

.field private final g:Ljuh;

.field private final h:Ljvs;

.field private i:Z

.field private j:Z

.field private final k:Landroid/content/Intent;

.field private final l:Ldde;

.field private final m:Ldbz;

.field private final n:Ldns;

.field private final o:Ljava/util/List;

.field private p:Lfuz;

.field private q:Lfuz;

.field private final r:Lklx;

.field private final s:Lcvr;

.field private final t:Ldfa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camerafacing/CameraFacingController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldbf;->f:Lnak;

    return-void
.end method

.method public constructor <init>(Lklx;Ljuh;Ldfa;Ldbz;Ldde;Lcvr;Ldns;Landroid/content/Intent;Ldhi;Ljvs;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p11, Lklv;->b:Lklv;

    iput-object p11, p0, Ldbf;->a:Lklv;

    new-instance p11, Ljava/util/ArrayList;

    invoke-direct {p11}, Ljava/util/ArrayList;-><init>()V

    iput-object p11, p0, Ldbf;->c:Ljava/util/List;

    new-instance p11, Ljava/util/ArrayList;

    invoke-direct {p11}, Ljava/util/ArrayList;-><init>()V

    iput-object p11, p0, Ldbf;->o:Ljava/util/List;

    iput-object p1, p0, Ldbf;->r:Lklx;

    iput-object p2, p0, Ldbf;->g:Ljuh;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ldbf;->i:Z

    iput-boolean p1, p0, Ldbf;->j:Z

    iput-object p8, p0, Ldbf;->k:Landroid/content/Intent;

    iput-object p3, p0, Ldbf;->t:Ldfa;

    iput-object p4, p0, Ldbf;->m:Ldbz;

    iput-object p5, p0, Ldbf;->l:Ldde;

    iput-object p6, p0, Ldbf;->s:Lcvr;

    iput-object p7, p0, Ldbf;->n:Ldns;

    iput-object p9, p0, Ldbf;->d:Ldhi;

    iput-object p10, p0, Ldbf;->e:Ljvs;

    new-instance p2, Ldbe;

    sget-object p4, Lklv;->b:Lklv;

    invoke-direct {p0}, Ldbf;->o()Lfuz;

    move-result-object p9

    const/4 p10, 0x1

    if-eqz p9, :cond_0

    const/4 p9, 0x1

    goto :goto_0

    :cond_0
    const/4 p9, 0x0

    :goto_0
    invoke-direct {p2, p4, p9}, Ldbe;-><init>(Lklv;Z)V

    invoke-interface {p11, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Ldbe;

    sget-object p4, Lklv;->a:Lklv;

    invoke-direct {p0}, Ldbf;->p()Lfuz;

    move-result-object p9

    if-eqz p9, :cond_1

    const/4 p9, 0x1

    goto :goto_1

    :cond_1
    const/4 p9, 0x0

    :goto_1
    invoke-direct {p2, p4, p9}, Ldbe;-><init>(Lklv;Z)V

    invoke-interface {p11, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldbf;->o()Lfuz;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p2, Lklv;->b:Lklv;

    goto :goto_2

    :cond_2
    sget-object p2, Lklv;->a:Lklv;

    :goto_2
    iput-object p2, p0, Ldbf;->a:Lklv;

    new-instance p2, Ljvk;

    iget-object p4, p0, Ldbf;->a:Lklv;

    invoke-direct {p2, p4}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ldbf;->b:Ljwb;

    new-instance p4, Lcjm;

    invoke-static {p2}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object p9

    new-instance p11, Lcdu;

    const/16 v0, 0xc

    invoke-direct {p11, p0, v0}, Lcdu;-><init>(Ldbf;I)V

    invoke-static {p9, p11}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object p9

    invoke-direct {p4, p9}, Lcjm;-><init>(Ljvs;)V

    iput-object p4, p0, Ldbf;->h:Ljvs;

    invoke-direct {p0}, Ldbf;->m()Z

    move-result p4

    const/4 p9, 0x2

    if-eqz p4, :cond_3

    new-array p4, p9, [Lklv;

    sget-object p11, Lklv;->a:Lklv;

    aput-object p11, p4, p1

    sget-object p11, Lklv;->b:Lklv;

    aput-object p11, p4, p10

    invoke-interface {p5, p4}, Ldde;->e([Lklv;)V

    goto :goto_3

    :cond_3
    sget-object p4, Lklv;->a:Lklv;

    invoke-direct {p0, p4}, Ldbf;->n(Lklv;)Z

    move-result p4

    if-nez p4, :cond_4

    new-array p4, p10, [Lklv;

    sget-object p11, Lklv;->b:Lklv;

    aput-object p11, p4, p1

    invoke-interface {p5, p4}, Ldde;->e([Lklv;)V

    goto :goto_3

    :cond_4
    sget-object p4, Lklv;->b:Lklv;

    invoke-direct {p0, p4}, Ldbf;->n(Lklv;)Z

    move-result p4

    if-nez p4, :cond_5

    new-array p4, p10, [Lklv;

    sget-object p11, Lklv;->a:Lklv;

    aput-object p11, p4, p1

    invoke-interface {p5, p4}, Ldde;->e([Lklv;)V

    :cond_5
    :goto_3
    invoke-static {p8}, Lcdg;->j(Landroid/content/Intent;)Z

    move-result p4

    if-eqz p4, :cond_6

    sget-object p4, Lklv;->a:Lklv;

    goto :goto_4

    :cond_6
    sget-object p4, Lklv;->b:Lklv;

    :goto_4
    invoke-direct {p0, p4}, Ldbf;->l(Lklv;)V

    invoke-direct {p0}, Ldbf;->m()Z

    move-result p8

    if-nez p8, :cond_8

    move-object p8, p2

    check-cast p8, Ljvk;

    iget-object p8, p2, Ljvk;->d:Ljava/lang/Object;

    if-eq p4, p8, :cond_8

    invoke-virtual {p6}, Lcvr;->j()Z

    move-result p6

    if-eqz p6, :cond_7

    move-object p1, p2

    check-cast p1, Ljvk;

    iget-object p1, p2, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Lklv;

    invoke-direct {p0, p1}, Ldbf;->l(Lklv;)V

    invoke-interface {p5, p4}, Ldde;->f(Lklv;)V

    invoke-virtual {p3, p4, p9, p9}, Ldfa;->a(Lklv;II)V

    return-void

    :cond_7
    new-instance p2, Ldnq;

    invoke-virtual {p4}, Lklv;->name()Ljava/lang/String;

    move-result-object p3

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "No "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " camera present"

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lkbo;->b:Lkbo;

    new-array p6, p10, [Lklv;

    aput-object p4, p6, p1

    invoke-direct {p2, p3, p5, p6}, Ldnq;-><init>(Ljava/lang/String;Lkbo;[Lklv;)V

    invoke-interface {p7, p2}, Ldns;->e(Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method private final l(Lklv;)V
    .locals 3

    iget-object v0, p0, Ldbf;->o:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ldaa;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Ldaa;-><init>(Lklv;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldbe;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Ldbe;->d:Z

    :cond_0
    return-void
.end method

.method private final m()Z
    .locals 5

    iget-object v0, p0, Ldbf;->o:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcdm;->g:Lcdm;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Stream;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final n(Lklv;)Z
    .locals 3

    iget-object v0, p0, Ldbf;->o:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ldaa;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v2}, Ldaa;-><init>(Lklv;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method private final declared-synchronized o()Lfuz;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldbf;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldbf;->r:Lklx;

    sget-object v1, Lklv;->b:Lklv;

    invoke-static {v0, v1}, Ldbf;->q(Lklx;Lklv;)Lfuz;

    move-result-object v0

    iput-object v0, p0, Ldbf;->p:Lfuz;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldbf;->i:Z

    :cond_0
    iget-object v0, p0, Ldbf;->p:Lfuz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized p()Lfuz;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldbf;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldbf;->r:Lklx;

    sget-object v1, Lklv;->a:Lklv;

    invoke-static {v0, v1}, Ldbf;->q(Lklx;Lklv;)Lfuz;

    move-result-object v0

    iput-object v0, p0, Ldbf;->q:Lfuz;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldbf;->j:Z

    :cond_0
    iget-object v0, p0, Ldbf;->q:Lfuz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static q(Lklx;Lklv;)Lfuz;
    .locals 0

    invoke-virtual {p0, p1}, Lklx;->e(Lklv;)Lkll;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lklx;->f(Lkll;)Lfuz;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lkai;Ljava/util/concurrent/Executor;)Lkad;
    .locals 1

    iget-object v0, p0, Ldbf;->h:Ljvs;

    invoke-interface {v0, p1, p2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic bm()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldbf;->c()Ldbw;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ldbw;
    .locals 1

    iget-object v0, p0, Ldbf;->h:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbw;

    return-object v0
.end method

.method public final d()Lklv;
    .locals 1

    iget-object v0, p0, Ldbf;->b:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Lklv;

    return-object v0
.end method

.method public final e()Lmqp;
    .locals 1

    invoke-virtual {p0}, Ldbf;->d()Lklv;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldbf;->k(Lklv;)Lfuz;

    move-result-object v0

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lklv;)V
    .locals 3

    iget-object v0, p0, Ldbf;->o:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ldaa;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Ldaa;-><init>(Lklv;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldbe;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Ldbe;->c:Z

    :cond_0
    return-void
.end method

.method public final g(Lklv;)V
    .locals 1

    invoke-direct {p0}, Ldbf;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldbf;->b:Ljwb;

    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final h(Ljava/lang/Runnable;)V
    .locals 8

    invoke-virtual {p0}, Ldbf;->d()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->b:Lklv;

    if-ne v0, v1, :cond_0

    sget-object v1, Lklv;->a:Lklv;

    goto :goto_0

    :cond_0
    sget-object v1, Lklv;->b:Lklv;

    :goto_0
    invoke-direct {p0, v1}, Ldbf;->n(Lklv;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ldbf;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lklv;->a:Lklv;

    goto :goto_1

    :cond_1
    sget-object v2, Lklv;->b:Lklv;

    :goto_1
    invoke-virtual {p0, v2}, Ldbf;->g(Lklv;)V

    invoke-virtual {p0}, Ldbf;->d()Lklv;

    iget-object v2, p0, Ldbf;->c:Ljava/util/List;

    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcwd;

    invoke-direct {v4, p0, v3}, Lcwd;-><init>(Ldbf;I)V

    invoke-interface {v2, v4}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lnsy;->x(Ljava/lang/Iterable;)Lnou;

    move-result-object v2

    new-instance v4, Lcig;

    const/4 v5, 0x4

    invoke-direct {v4, p1, v5}, Lcig;-><init>(Ljava/lang/Runnable;I)V

    iget-object p1, p0, Ldbf;->g:Ljuh;

    invoke-static {v2, v4, p1}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Ldbf;->s:Lcvr;

    invoke-virtual {p1}, Lcvr;->j()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Ldbf;->n:Ldns;

    new-instance v2, Ldnq;

    invoke-virtual {v1}, Lklv;->name()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " camera present"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lkbo;->b:Lkbo;

    const/4 v6, 0x1

    new-array v6, v6, [Lklv;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-direct {v2, v4, v5, v6}, Ldnq;-><init>(Ljava/lang/String;Lkbo;[Lklv;)V

    invoke-interface {p1, v2}, Ldns;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    invoke-direct {p0, v0}, Ldbf;->n(Lklv;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0, v1}, Ldbf;->n(Lklv;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Ldbf;->s:Lcvr;

    invoke-virtual {p1}, Lcvr;->j()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Ldbf;->o:Ljava/util/List;

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Ldaa;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ldaa;-><init>(Lklv;I)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldbe;

    iget-boolean p1, p1, Ldbe;->b:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_3

    :cond_4
    const/4 p1, 0x2

    :goto_3
    if-ne p1, v3, :cond_6

    iget-object v0, p0, Ldbf;->o:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v4, Ldaa;

    invoke-direct {v4, v1, v3}, Ldaa;-><init>(Lklv;I)V

    invoke-interface {v0, v4}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbe;

    if-eqz v0, :cond_5

    iget-boolean v0, v0, Ldbe;->d:Z

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Ldbf;->l:Ldde;

    invoke-interface {v0, v1}, Ldde;->f(Lklv;)V

    :cond_6
    iget-object v0, p0, Ldbf;->t:Ldfa;

    invoke-virtual {v0, v1, v2, p1}, Ldfa;->a(Lklv;II)V

    goto :goto_4

    :cond_7
    invoke-direct {p0, v0}, Ldbf;->n(Lklv;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-direct {p0, v1}, Ldbf;->n(Lklv;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Ldbf;->s:Lcvr;

    invoke-virtual {p1}, Lcvr;->j()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Ldbf;->m:Ldbz;

    invoke-interface {p1}, Ldbz;->c()V

    :cond_8
    :goto_4
    invoke-direct {p0, v1}, Ldbf;->l(Lklv;)V

    return-void
.end method

.method public final i()Z
    .locals 2

    invoke-virtual {p0}, Ldbf;->d()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->b:Lklv;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 2

    invoke-virtual {p0}, Ldbf;->d()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->a:Lklv;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k(Lklv;)Lfuz;
    .locals 3

    sget-object v0, Lklv;->b:Lklv;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Ldbf;->o()Lfuz;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ldbf;->o()Lfuz;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    sget-object v0, Lklv;->a:Lklv;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Ldbf;->p()Lfuz;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Ldbf;->p()Lfuz;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Ldbf;->f:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    invoke-virtual {p0}, Ldbf;->d()Lklv;

    move-result-object v0

    const-string v1, "No OneCameraCharacteristics found for: %s"

    const/16 v2, 0x33b

    invoke-static {p1, v1, v0, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Ldbf;->i()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const-string v0, "Front Camera"

    return-object v0

    :cond_0
    const-string v0, "Back Camera"

    return-object v0
.end method
