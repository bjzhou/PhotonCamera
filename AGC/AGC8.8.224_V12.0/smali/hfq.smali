.class public Lhfq;
.super Ljava/lang/Object;

# interfaces
.implements Lhfh;
.implements Lfaz;


# instance fields
.field public final h:Landroid/content/Context;

.field public final i:Landroid/content/pm/PackageManager;

.field public final j:Landroid/content/res/Resources;

.field public final k:Lhfs;

.field public final l:Lhet;

.field public final m:Lchj;

.field public final n:Lhfb;

.field public final o:Landroid/os/Handler;

.field public final p:Lhff;

.field public final q:Ljava/lang/Runnable;

.field public final r:Lhfv;

.field public final s:Lhgn;

.field public t:Lchd;

.field public u:Landroid/content/pm/ResolveInfo;

.field public v:Z

.field public final w:Ligo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhfs;Lhet;Lchj;Lhfb;Landroid/os/Handler;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Lhfv;Lhff;Ligo;Lhgn;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhfq;->h:Landroid/content/Context;

    iput-object p2, p0, Lhfq;->k:Lhfs;

    iput-object p3, p0, Lhfq;->l:Lhet;

    iput-object p4, p0, Lhfq;->m:Lchj;

    iput-object p5, p0, Lhfq;->n:Lhfb;

    iput-object p6, p0, Lhfq;->o:Landroid/os/Handler;

    iput-object p9, p0, Lhfq;->r:Lhfv;

    iput-object p10, p0, Lhfq;->p:Lhff;

    iput-object p11, p0, Lhfq;->w:Ligo;

    iput-object p12, p0, Lhfq;->s:Lhgn;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    new-instance p1, Lhfi;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lhfi;-><init>(Lhfq;I)V

    iput-object p1, p0, Lhfq;->q:Ljava/lang/Runnable;

    iput-object p7, p0, Lhfq;->i:Landroid/content/pm/PackageManager;

    iput-object p8, p0, Lhfq;->j:Landroid/content/res/Resources;

    return-void
.end method

.method static bridge synthetic t(Lhfq;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhfq;->v:Z

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    return-void
.end method

.method public synthetic b(Lchd;Z)V
    .locals 0

    return-void
.end method

.method public synthetic bN()V
    .locals 0

    return-void
.end method

.method public synthetic bP()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic cj()V
    .locals 0

    return-void
.end method

.method public synthetic d(Lchd;Z)V
    .locals 0

    return-void
.end method

.method public synthetic f()V
    .locals 0

    return-void
.end method

.method public synthetic g()V
    .locals 0

    return-void
.end method

.method public synthetic h()V
    .locals 0

    return-void
.end method

.method public synthetic i()V
    .locals 0

    return-void
.end method

.method public synthetic j()V
    .locals 0

    return-void
.end method

.method public synthetic k()V
    .locals 0

    return-void
.end method

.method public synthetic l(Landroid/content/pm/ResolveInfo;)V
    .locals 0

    return-void
.end method

.method public synthetic m()V
    .locals 0

    return-void
.end method

.method public synthetic n()V
    .locals 0

    return-void
.end method

.method public synthetic o()V
    .locals 0

    return-void
.end method

.method public synthetic p(J)V
    .locals 0

    return-void
.end method

.method public final q(Lchd;)Lnou;
    .locals 13

    iget-object v6, p0, Lhfq;->n:Lhfb;

    invoke-static {p1}, Lhfb;->a(Lchd;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lhfb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, v6, Lhfb;->a:Lhgd;

    const-string v1, "image/*"

    invoke-interface {v0, v1}, Lhgd;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    iget-object v0, v6, Lhfb;->a:Lhgd;

    const-string v1, "video/*"

    invoke-interface {v0, v1}, Lhgd;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v6, Lhfb;->a:Lhgd;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lhfj;->b:Lhfj;

    invoke-static {v2}, Lhfb;->c(Ljava/util/function/Function;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Lhgd;->h(Ljava/util/List;)V

    invoke-static {p1}, Lhfb;->d(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1}, Lhfb;->g(Ljava/lang/String;)Z

    move-result v10

    invoke-static {}, Lhgx;->a()Lhyz;

    move-result-object v11

    invoke-virtual {v11, v0}, Lhyz;->j(Z)V

    new-instance v12, Lfcq;

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v12

    move-object v1, v6

    move-object v2, v9

    move-object v3, v11

    invoke-direct/range {v0 .. v5}, Lfcq;-><init>(Lhfb;Ljava/util/ArrayList;Lhyz;I[B)V

    invoke-static {v7, v12}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    invoke-virtual {v11, v10}, Lhyz;->j(Z)V

    new-instance v7, Lfcq;

    const/4 v4, 0x5

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lfcq;-><init>(Lhfb;Ljava/util/ArrayList;Lhyz;I[B)V

    invoke-static {v8, v7}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    invoke-static {v9}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lkpg;

    const/4 v2, 0x1

    invoke-direct {v1, v6, v2}, Lkpg;-><init>(Lhfb;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lefv;->u:Lefv;

    invoke-static {v1}, Lhfb;->c(Ljava/util/function/Function;)Ljava/util/function/Predicate;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Ldrk;->d:Ldrk;

    invoke-static {v1}, Lj$/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, v6, Lhfb;->d:Ldhi;

    sget-object v3, Ldho;->be:Ldhj;

    invoke-interface {v1, v3}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v6, Lhfb;->a:Lhgd;

    invoke-interface {v1, p1}, Lhgd;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lgfd;

    const/16 v3, 0x9

    invoke-direct {v1, v6, v3}, Lgfd;-><init>(Lhfb;I)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lhgx;->a()Lhyz;

    move-result-object v1

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, p1}, Lhyz;->h(Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v1, v2}, Lhyz;->i(Z)V

    invoke-virtual {v1, v2}, Lhyz;->j(Z)V

    invoke-virtual {v1, v2}, Lhyz;->g(Z)V

    invoke-virtual {v1}, Lhyz;->f()Lhgx;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lhgx;->a()Lhyz;

    move-result-object p1

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lgdt;

    const/4 v7, 0x4

    invoke-direct {v5, v1, v3, v7}, Lgdt;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Lhfb;->h(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v4}, Lhfb;->h(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Lhyz;->h(Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {p1, v2}, Lhyz;->i(Z)V

    invoke-virtual {p1, v2}, Lhyz;->j(Z)V

    invoke-virtual {p1}, Lhyz;->f()Lhgx;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lfjd;->l:Lfjd;

    invoke-static {v0, p1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lhfj;->a:Lhfj;

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lhfq;->p:Lhff;

    iget-object v3, p0, Lhfq;->h:Landroid/content/Context;

    iget-boolean v4, v1, Lhff;->c:Z

    invoke-static {v4}, Lmoz;->p(Z)V

    iget-object v4, v1, Lhff;->a:Lgzm;

    sget-object v5, Lgzd;->Q:Lgzr;

    invoke-interface {v4, v5}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lhfz;->c:Lmwn;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, v1, Lhff;->b:Lgzn;

    sget-object v1, Lgzd;->Q:Lgzr;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    :cond_5
    :goto_2
    iget-object p1, p0, Lhfq;->s:Lhgn;

    invoke-interface {p1, v0}, Lhgn;->a(Ljava/util/ArrayList;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final r(ZZ)V
    .locals 1

    iget-object v0, p0, Lhfq;->s:Lhgn;

    invoke-interface {v0, p1}, Lhgn;->c(Z)V

    iget-object v0, p0, Lhfq;->l:Lhet;

    invoke-interface {v0, p1}, Lhet;->c(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lhfq;->v:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lhfq;->t:Lchd;

    iget-object p1, p0, Lhfq;->p:Lhff;

    iget-boolean v0, p1, Lhff;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lhff;->c()V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lhfq;->r:Lhfv;

    invoke-interface {p1}, Lhfv;->a()V

    iget-object p1, p0, Lhfq;->r:Lhfv;

    invoke-interface {p1}, Lhfv;->b()V

    :cond_1
    return-void
.end method
