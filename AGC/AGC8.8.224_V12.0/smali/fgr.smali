.class public final Lfgr;
.super Ljava/lang/Object;

# interfaces
.implements Lfhg;
.implements Lfhd;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lfhz;

.field public final c:Lmqp;

.field public final d:Ljava/lang/Object;

.field public e:Z

.field public final f:Ljava/util/Set;

.field private final g:Lfio;

.field private h:J

.field private final i:Lfgs;

.field private final j:Lfgs;

.field private final k:Lfgs;

.field private final l:Z

.field private final m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/microvideo/encoder/CookieCutterMicrovideoEncoder"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfgr;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lfhz;Lfio;Lmqp;Ljuf;Ldhi;Lkaq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfgr;->n:Z

    iput-boolean v0, p0, Lfgr;->e:Z

    iput-object p1, p0, Lfgr;->b:Lfhz;

    iput-object p2, p0, Lfgr;->g:Lfio;

    iput-object p3, p0, Lfgr;->c:Lmqp;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfgr;->d:Ljava/lang/Object;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lfgr;->h:J

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lfgr;->f:Ljava/util/Set;

    sget-object p1, Ldhv;->k:Ldhj;

    invoke-interface {p5, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Lfgr;->l:Z

    sget-object p1, Ldhv;->r:Ldhj;

    invoke-interface {p5, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Lfgr;->m:Z

    invoke-interface {p5}, Ldhi;->e()V

    new-instance p1, Lfgu;

    const-string p2, "Vid"

    invoke-direct {p1, p6, p2}, Lfgu;-><init>(Lkaq;Ljava/lang/String;)V

    iput-object p1, p0, Lfgr;->i:Lfgs;

    new-instance p1, Lfgu;

    const-string p2, "Aud"

    invoke-direct {p1, p6, p2}, Lfgu;-><init>(Lkaq;Ljava/lang/String;)V

    iput-object p1, p0, Lfgr;->j:Lfgs;

    new-instance p1, Lfgu;

    const-string p2, "Mtn"

    invoke-direct {p1, p6, p2}, Lfgu;-><init>(Lkaq;Ljava/lang/String;)V

    iput-object p1, p0, Lfgr;->k:Lfgs;

    new-instance p1, Leym;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Leym;-><init>(Lfgr;I)V

    invoke-virtual {p4, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 6

    iget-object v0, p0, Lfgr;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfgr;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfgq;

    iget-boolean v5, v4, Lfgq;->c:Z

    if-nez v5, :cond_0

    iget-boolean v5, v4, Lfgq;->f:Z

    if-nez v5, :cond_0

    iget-object v4, v4, Lfgq;->b:Lmym;

    invoke-virtual {v4}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_0
    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lfgr;->h:J

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lfgr;->h:J

    invoke-virtual {p0}, Lfgr;->e()V

    iget-object p1, p0, Lfgr;->i:Lfgs;

    iget-wide v1, p0, Lfgr;->h:J

    invoke-interface {p1, v1, v2}, Lfgs;->d(J)V

    iget-object p1, p0, Lfgr;->j:Lfgs;

    iget-wide v1, p0, Lfgr;->h:J

    invoke-interface {p1, v1, v2}, Lfgs;->d(J)V

    iget-object p1, p0, Lfgr;->k:Lfgs;

    iget-wide v1, p0, Lfgr;->h:J

    invoke-interface {p1, v1, v2}, Lfgs;->d(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final b()V
    .locals 10

    iget-object v0, p0, Lfgr;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfgr;->i:Lfgs;

    invoke-interface {v1}, Lfgs;->c()V

    iget-object v1, p0, Lfgr;->j:Lfgs;

    invoke-interface {v1}, Lfgs;->c()V

    iget-object v1, p0, Lfgr;->k:Lfgs;

    invoke-interface {v1}, Lfgs;->c()V

    iget-object v1, p0, Lfgr;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfgq;

    iget-object v3, v2, Lfgq;->b:Lmym;

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v3}, Lmym;->l()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "<%d>"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, "n/a"

    :goto_1
    invoke-virtual {v3}, Lmym;->m()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "<%d>"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Lmym;->j()Ljava/lang/Comparable;

    move-result-object v3

    aput-object v3, v9, v5

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const-string v3, "n/a"

    :goto_2
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s to %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v5

    aput-object v3, v9, v6

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_3
    iget-boolean v3, v2, Lfgq;->e:Z

    iget-boolean v2, v2, Lfgq;->c:Z

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lfgr;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lfgr;->e:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Attempting to init encoder that is shut down!"

    invoke-static {v1, v3}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-boolean v1, p0, Lfgr;->n:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lfgr;->b:Lfhz;

    iget-object v3, p0, Lfgr;->i:Lfgs;

    invoke-interface {v1, v3, p0}, Lfhz;->c(Lkxy;Lfhd;)V

    iget-object v1, p0, Lfgr;->g:Lfio;

    iget-object v3, p0, Lfgr;->k:Lfgs;

    iget-object v4, v1, Lfio;->a:Landroid/media/MediaFormat;

    invoke-static {v4}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v4

    invoke-interface {v3, v4}, Lkxy;->a(Lnou;)V

    iput-object v3, v1, Lfio;->b:Lkxy;

    iget-object v3, v1, Lfio;->d:Lva;

    invoke-virtual {v3}, Lva;->C()Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    move-result-object v3

    iput-object v3, v1, Lfio;->c:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iget-object v1, p0, Lfgr;->c:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfgr;->c:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfgp;

    iget-object v3, p0, Lfgr;->j:Lfgs;

    invoke-virtual {v1, v3, p0}, Lfgp;->b(Lkxy;Lfhd;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lfgr;->j:Lfgs;

    invoke-static {}, Lnsy;->z()Lnou;

    move-result-object v3

    invoke-interface {v1, v3}, Lfgs;->a(Lnou;)V

    :goto_0
    iput-boolean v2, p0, Lfgr;->n:Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lfgr;->b:Lfhz;

    invoke-interface {v0}, Lfhz;->e()V

    iget-object v0, p0, Lfgr;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfgr;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfgp;

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 10

    iget-object v0, p0, Lfgr;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfgr;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfgq;

    iget-object v5, v4, Lfgq;->b:Lmym;

    invoke-virtual {v5}, Lmym;->m()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lfgq;->b:Lmym;

    invoke-virtual {v5}, Lmym;->j()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v7, p0, Lfgr;->h:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    iget-object v4, v4, Lfgq;->b:Lmym;

    invoke-virtual {v4}, Lmym;->j()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lfgr;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfgq;

    iget-boolean v4, v2, Lfgq;->c:Z

    if-nez v4, :cond_2

    iget-boolean v4, v2, Lfgq;->f:Z

    if-nez v4, :cond_2

    iget-object v4, v2, Lfgq;->b:Lmym;

    invoke-virtual {v4}, Lmym;->m()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, v2, Lfgq;->e:Z

    if-eqz v4, :cond_2

    :cond_3
    iget-boolean v4, v2, Lfgq;->e:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lfgr;->m:Z

    goto :goto_2

    :cond_4
    iget-boolean v4, p0, Lfgr;->l:Z

    :goto_2
    iget-object v5, v2, Lfgq;->a:Lgxy;

    iget-object v5, v2, Lfgq;->k:Lva;

    iget-object v5, v5, Lva;->c:Ljava/lang/Object;

    if-nez v4, :cond_5

    new-instance v4, Lfhr;

    invoke-direct {v4, v5}, Lfhr;-><init>(Lkxy;)V

    move-object v5, v4

    goto :goto_3

    :cond_5
    :goto_3
    iget-object v4, p0, Lfgr;->i:Lfgs;

    iget-object v6, v2, Lfgq;->b:Lmym;

    invoke-virtual {v6}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lfgs;->e(Lkxy;J)Lfgt;

    move-result-object v4

    iput-object v4, v2, Lfgq;->h:Lfgt;

    iget-object v4, p0, Lfgr;->k:Lfgs;

    iget-object v5, v2, Lfgq;->k:Lva;

    iget-object v5, v5, Lva;->b:Ljava/lang/Object;

    iget-object v6, v2, Lfgq;->b:Lmym;

    invoke-virtual {v6}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lfgs;->e(Lkxy;J)Lfgt;

    move-result-object v4

    iput-object v4, v2, Lfgq;->j:Lfgt;

    iget-object v4, v2, Lfgq;->k:Lva;

    iget-object v4, v4, Lva;->a:Ljava/lang/Object;

    if-eqz v4, :cond_6

    iget-object v5, p0, Lfgr;->j:Lfgs;

    iget-object v6, v2, Lfgq;->b:Lmym;

    invoke-virtual {v6}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v5, v4, v6, v7}, Lfgs;->e(Lkxy;J)Lfgt;

    move-result-object v4

    iput-object v4, v2, Lfgq;->i:Lfgt;

    :cond_6
    iput-boolean v3, v2, Lfgq;->c:Z

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lfgr;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfgq;

    iget-boolean v4, v2, Lfgq;->c:Z

    if-eqz v4, :cond_8

    iget-object v4, v2, Lfgq;->b:Lmym;

    invoke-virtual {v4}, Lmym;->m()Z

    move-result v4

    if-nez v4, :cond_8

    iget-boolean v4, v2, Lfgq;->f:Z

    if-nez v4, :cond_8

    iget-boolean v4, v2, Lfgq;->e:Z

    if-eqz v4, :cond_8

    iget-object v4, v2, Lfgq;->a:Lgxy;

    iget-object v4, v2, Lfgq;->h:Lfgt;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, p0, Lfgr;->h:J

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lfgt;->a(JZ)V

    iget-object v4, v2, Lfgq;->j:Lfgt;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, p0, Lfgr;->h:J

    invoke-virtual {v4, v5, v6, v7}, Lfgt;->a(JZ)V

    iget-object v4, p0, Lfgr;->c:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, v2, Lfgq;->e:Z

    if-eqz v4, :cond_8

    iget-object v2, v2, Lfgq;->i:Lfgt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, p0, Lfgr;->h:J

    invoke-virtual {v2, v4, v5, v7}, Lfgt;->a(JZ)V

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lfgr;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfgq;

    iget-boolean v4, v2, Lfgq;->c:Z

    if-eqz v4, :cond_a

    iget-object v4, v2, Lfgq;->b:Lmym;

    invoke-virtual {v4}, Lmym;->m()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v4, v2, Lfgq;->f:Z

    if-nez v4, :cond_a

    iget-boolean v4, v2, Lfgq;->d:Z

    if-nez v4, :cond_a

    iget-object v4, v2, Lfgq;->a:Lgxy;

    iget-object v4, v2, Lfgq;->b:Lmym;

    invoke-virtual {v4}, Lmym;->i()Ljava/lang/Comparable;

    iget-object v4, v2, Lfgq;->b:Lmym;

    invoke-virtual {v4}, Lmym;->j()Ljava/lang/Comparable;

    iget-object v4, v2, Lfgq;->b:Lmym;

    invoke-virtual {v4}, Lmym;->j()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    iget-object v4, v2, Lfgq;->b:Lmym;

    invoke-virtual {v4}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    iget-object v4, v2, Lfgq;->h:Lfgt;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Lfgq;->b:Lmym;

    invoke-virtual {v5}, Lmym;->j()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v3}, Lfgt;->a(JZ)V

    iget-object v4, v2, Lfgq;->j:Lfgt;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Lfgq;->b:Lmym;

    invoke-virtual {v5}, Lmym;->j()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v3}, Lfgt;->a(JZ)V

    iget-object v4, v2, Lfgq;->i:Lfgt;

    if-eqz v4, :cond_c

    iget-boolean v5, v2, Lfgq;->e:Z

    if-eqz v5, :cond_b

    iget-object v5, v2, Lfgq;->b:Lmym;

    invoke-virtual {v5}, Lmym;->j()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v3}, Lfgt;->a(JZ)V

    goto :goto_6

    :cond_b
    iget-object v5, v2, Lfgq;->a:Lgxy;

    iget-object v5, v2, Lfgq;->b:Lmym;

    invoke-virtual {v5}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v3}, Lfgt;->a(JZ)V

    :cond_c
    :goto_6
    iput-boolean v3, v2, Lfgq;->d:Z

    goto/16 :goto_5

    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lfgr;->f:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfgq;

    iget-boolean v4, v3, Lfgq;->f:Z

    if-nez v4, :cond_f

    iget-boolean v4, v3, Lfgq;->d:Z

    if-eqz v4, :cond_e

    iget-object v4, v3, Lfgq;->b:Lmym;

    invoke-virtual {v4}, Lmym;->m()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v3, Lfgq;->b:Lmym;

    invoke-virtual {v4}, Lmym;->j()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, p0, Lfgr;->h:J

    const-wide/32 v8, -0x989680

    add-long/2addr v6, v8

    cmp-long v8, v4, v6

    if-gez v8, :cond_e

    :cond_f
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Lfgq;->a:Lgxy;

    goto :goto_7

    :cond_10
    iget-object v2, p0, Lfgr;->f:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :goto_8
    throw v1

    :goto_9
    goto :goto_8
.end method

.method public final f(J)Loxq;
    .locals 13

    iget-object v0, p0, Lfgr;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfgr;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfgq;

    iget-boolean v6, v4, Lfgq;->f:Z

    if-nez v6, :cond_0

    iget-boolean v6, v4, Lfgq;->e:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lfgr;->m:Z

    goto :goto_1

    :cond_1
    iget-boolean v6, p0, Lfgr;->l:Z

    :goto_1
    iget-object v7, v4, Lfgq;->b:Lmym;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmym;->k(Ljava/lang/Comparable;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object p1, v4, Lfgq;->a:Lgxy;

    invoke-static {v6}, Loxq;->o(Z)Loxq;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_2
    iget-object v7, v4, Lfgq;->b:Lmym;

    invoke-virtual {v7}, Lmym;->m()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v4, Lfgq;->b:Lmym;

    invoke-virtual {v7}, Lmym;->j()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    iget-object v9, v4, Lfgq;->b:Lmym;

    invoke-virtual {v9}, Lmym;->j()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-boolean v11, v4, Lfgq;->e:Z

    if-eq v5, v11, :cond_3

    const-wide/32 v11, 0x1046a

    goto :goto_2

    :cond_3
    const-wide/32 v11, 0xa2c2a

    :goto_2
    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v7, v9}, Lmym;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmym;

    move-result-object v7

    invoke-virtual {v7, v8}, Lmym;->k(Ljava/lang/Comparable;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object p1, v4, Lfgq;->a:Lgxy;

    invoke-static {v6}, Loxq;->o(Z)Loxq;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_4
    iget-object v4, v4, Lfgq;->b:Lmym;

    invoke-virtual {v4}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v6, p1

    if-ltz v4, :cond_5

    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    const/4 v4, 0x1

    :goto_3
    xor-int/2addr v4, v5

    or-int/2addr v3, v4

    goto/16 :goto_0

    :cond_6
    if-eqz v3, :cond_7

    new-instance p1, Loxq;

    invoke-direct {p1, v2}, Loxq;-><init>(I)V

    monitor-exit v0

    return-object p1

    :cond_7
    iget-boolean p1, p0, Lfgr;->l:Z

    if-eq v5, p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x4

    :goto_4
    new-instance p1, Loxq;

    or-int/lit8 p2, v2, 0x3

    invoke-direct {p1, p2}, Loxq;-><init>(I)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final g(Lgxy;Lva;JZ)Lfkm;
    .locals 13

    move-object v10, p0

    iget-object v11, v10, Lfgr;->d:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-boolean v0, v10, Lfgr;->n:Z

    const-string v1, "Must call initialize() before start()!"

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-wide v0, v10, Lfgr;->h:J

    cmp-long v2, p3, v0

    if-gez v2, :cond_0

    sget-object v0, Lfgr;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x8e1

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Starting session %s at %d which is before the last promise %d"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, v10, Lfgr;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v4, p1

    invoke-interface {v0, v1, p1, v2, v3}, Lnah;->B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-wide v0, v10, Lfgr;->h:J

    goto :goto_0

    :cond_0
    move-object v4, p1

    move-wide/from16 v0, p3

    :goto_0
    new-instance v12, Lfgq;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lmym;->c(Ljava/lang/Comparable;)Lmym;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v6, p5

    invoke-direct/range {v1 .. v9}, Lfgq;-><init>(Lfgr;Lgxy;Lva;Lmym;Z[B[B[B)V

    iget-object v0, v10, Lfgr;->f:Ljava/util/Set;

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lfgr;->e()V

    invoke-virtual {p0}, Lfgr;->d()V

    monitor-exit v11

    return-object v12

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
