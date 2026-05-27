.class public final Lgso;
.super Ljava/lang/Object;

# interfaces
.implements Ldxm;
.implements Ldyb;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lgsg;

.field private final c:Lgsp;

.field private final d:Ldxl;

.field private final e:Lfgg;

.field private final f:Lmqp;

.field private final g:Lmqp;

.field private h:J

.field private final i:Lhmb;

.field private final j:Lmrd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/qualityscore/FrameQualityScoreProcessor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgso;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lgsg;Lgsp;Ldxl;Lfgg;Ljwb;Ldhi;Loiw;Lhmb;Lmrd;[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgso;->h:J

    iput-object p1, p0, Lgso;->b:Lgsg;

    iput-object p2, p0, Lgso;->c:Lgsp;

    iput-object p3, p0, Lgso;->d:Ldxl;

    iput-object p4, p0, Lgso;->e:Lfgg;

    invoke-interface {p5}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ldhf;->a:Ldhk;

    invoke-interface {p6}, Ldhi;->e()V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    sget-object p2, Ldhf;->e:Ldhj;

    invoke-interface {p6, p2}, Ldhi;->l(Ldhj;)Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_2

    invoke-interface {p7}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldye;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lgso;->f:Lmqp;

    sget-object p1, Lmpx;->a:Lmpx;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Lgso;->f:Lmqp;

    invoke-interface {p7}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldxz;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lgso;->g:Lmqp;

    goto :goto_2

    :cond_2
    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Lgso;->f:Lmqp;

    :goto_1
    iput-object p1, p0, Lgso;->g:Lmqp;

    :goto_2
    iput-object p8, p0, Lgso;->i:Lhmb;

    iput-object p9, p0, Lgso;->j:Lmrd;

    return-void
.end method


# virtual methods
.method public final b(Ljyp;)V
    .locals 2

    iget-wide v0, p1, Ljyp;->a:J

    invoke-virtual {p0, v0, v1}, Lgso;->c(J)V

    return-void
.end method

.method public final declared-synchronized bX(Lgrw;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p1, Lgrw;->c:J

    invoke-virtual {p0, v0, v1}, Lgso;->c(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(J)V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgso;->e:Lfgg;

    invoke-interface {v0, p1, p2}, Lfgg;->c(J)Lkpb;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lgso;->c:Lgsp;

    invoke-virtual {v2, p1, p2}, Lgsp;->c(J)Lgsl;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {v0}, Lkpb;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iget-object v2, p0, Lgso;->d:Ldxl;

    invoke-virtual {v2, p1, p2}, Ldxl;->a(J)Lgrw;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lgso;->g:Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v2, Lgrw;->q:[Lgrz;

    array-length v4, v4

    if-lez v4, :cond_4

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldxz;

    invoke-interface {v3, p1, p2}, Ldxz;->a(J)Ljyp;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_4
    iget-object v3, p0, Lgso;->i:Lhmb;

    invoke-virtual {v3}, Lhmb;->a()Ljvs;

    move-result-object v3

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lgso;->j:Lmrd;

    invoke-virtual {v3}, Lmrd;->g()Ljvs;

    move-result-object v3

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    const-string v3, "frameQualityScorer.getFrameScore"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v3, p0, Lgso;->b:Lgsg;

    invoke-virtual {v3, v0, v2}, Lgsg;->a(Lkpb;Lgrw;)Lgsl;

    move-result-object v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-wide v3, p0, Lgso;->h:J

    cmp-long v5, p1, v3

    if-gtz v5, :cond_6

    sget-object v3, Lgso;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v4, 0xc9b

    invoke-interface {v3, v4}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const-string v4, "Out of order frame scores detected!"

    invoke-interface {v3, v4}, Lnah;->o(Ljava/lang/String;)V

    :cond_6
    iget-object v3, p0, Lgso;->c:Lgsp;

    invoke-virtual {v3, v2}, Lgsp;->f(Lgsl;)V

    iget-object v3, p0, Lgso;->f:Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v2, Lgsl;->p:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldye;

    iget-object v2, v2, Lgsl;->p:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgsx;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v2, Lgsx;->a:[Lgsw;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_7

    aget-object v8, v5, v7

    invoke-static {}, Ldxy;->a()Ldxx;

    move-result-object v9

    iget-wide v10, v8, Lgsw;->a:J

    invoke-virtual {v9, v10, v11}, Ldxx;->d(J)V

    iget-object v10, v8, Lgsw;->b:Lmqp;

    iput-object v10, v9, Ldxx;->a:Lmqp;

    iget v10, v8, Lgsw;->c:F

    invoke-virtual {v9, v10}, Ldxx;->c(F)V

    iget-object v10, v8, Lgsw;->d:Lmqp;

    iput-object v10, v9, Ldxx;->b:Lmqp;

    iget v8, v8, Lgsw;->e:F

    invoke-virtual {v9, v8}, Ldxx;->b(F)V

    invoke-virtual {v9}, Ldxx;->a()Ldxy;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    new-instance v5, Ljyp;

    iget-wide v6, v2, Lgsx;->f:J

    invoke-direct {v5, v6, v7, v4}, Ljyp;-><init>(JLjava/util/List;)V

    invoke-virtual {v3, v5}, Ldye;->c(Ljyp;)V

    :cond_8
    iput-wide p1, p0, Lgso;->h:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    :try_start_4
    invoke-interface {v0}, Lkpb;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_5
    const-class v0, Ljava/lang/Throwable;

    const-string v2, "addSuppressed"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catch_0
    move-exception p2

    :goto_2
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
