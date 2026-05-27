.class final Lkqh;
.super Ljava/lang/Object;

# interfaces
.implements Lkph;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final b:I

.field private final c:Lkqt;

.field private final d:Lkqg;

.field private final e:Lkpi;

.field private final f:J

.field private final g:J

.field private final h:J

.field private final i:Lkqr;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Lkqo;

.field private final n:Lkbc;

.field private final o:Lkaq;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Lkqq;

.field private final s:Lnph;

.field private final t:I

.field private final u:Llhe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lkqh;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lkqt;Llhe;Lkqo;Lkqg;JJJLjava/lang/String;ILkqr;Ljava/lang/String;Ljava/lang/String;Lkbc;Lkaq;[B[B[B)V
    .locals 9

    move-object v0, p0

    move-wide/from16 v1, p7

    move-wide/from16 v3, p9

    move-object/from16 v5, p13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v6, ""

    iput-object v6, v0, Lkqh;->q:Ljava/lang/String;

    invoke-static/range {p15 .. p15}, Lkwp;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    move-object v7, v6

    :cond_0
    invoke-virtual {v5, v7}, Lkqr;->c(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Lmoz;->e(Z)V

    move-object v7, p1

    iput-object v7, v0, Lkqh;->c:Lkqt;

    move-object v7, p2

    iput-object v7, v0, Lkqh;->u:Llhe;

    move-object v7, p4

    iput-object v7, v0, Lkqh;->d:Lkqg;

    move-wide v7, p5

    iput-wide v7, v0, Lkqh;->f:J

    iput-wide v1, v0, Lkqh;->g:J

    iput-wide v3, v0, Lkqh;->h:J

    iput-object v5, v0, Lkqh;->i:Lkqr;

    move/from16 v5, p12

    iput v5, v0, Lkqh;->t:I

    move-object/from16 v5, p14

    iput-object v5, v0, Lkqh;->j:Ljava/lang/String;

    move-object/from16 v5, p15

    iput-object v5, v0, Lkqh;->k:Ljava/lang/String;

    move-object/from16 v5, p11

    iput-object v5, v0, Lkqh;->l:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v0, Lkqh;->r:Lkqq;

    move-object/from16 v5, p16

    iput-object v5, v0, Lkqh;->n:Lkbc;

    move-object v5, p3

    iput-object v5, v0, Lkqh;->m:Lkqo;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v5

    iput-object v5, v0, Lkqh;->s:Lnph;

    new-instance v5, Lkpi;

    invoke-direct {v5}, Lkpi;-><init>()V

    iput-object v6, v5, Lkpi;->c:Ljava/lang/String;

    sget-object v6, Lkqu;->a:Lkqu;

    if-eqz v6, :cond_1

    iput-object v6, v5, Lkpi;->d:Lkqu;

    iput-wide v3, v5, Lkpi;->a:J

    iput-wide v1, v5, Lkpi;->b:J

    const/4 v1, 0x3

    iput-byte v1, v5, Lkpi;->f:B

    iput-object v5, v0, Lkqh;->e:Lkpi;

    sget-object v1, Lkqh;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iput v1, v0, Lkqh;->b:I

    const-string v1, "MediaFile"

    move-object/from16 v2, p17

    invoke-interface {v2, v1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object v1

    iput-object v1, v0, Lkqh;->o:Lkaq;

    return-void

    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null metadata"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final l()Lkqq;
    .locals 14

    iget-object v0, p0, Lkqh;->n:Lkbc;

    invoke-virtual {p0}, Lkqh;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-create"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lkqh;->u:Llhe;

    iget-wide v2, p0, Lkqh;->f:J

    iget-wide v8, p0, Lkqh;->g:J

    iget-object v10, p0, Lkqh;->l:Ljava/lang/String;

    iget-wide v6, p0, Lkqh;->h:J

    iget-object v11, p0, Lkqh;->q:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v12, p0, Lkqh;->k:Ljava/lang/String;

    if-eqz v12, :cond_1

    new-instance v13, Lkqj;

    move-object v1, v13

    move-wide v4, v8

    invoke-direct/range {v1 .. v12}, Lkqj;-><init>(JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Llhe;->a:Ljava/lang/Object;

    check-cast v0, Lkqa;

    iget-object v0, v0, Lkqa;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v13, Lkqj;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v13, Lkqj;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v13, Lkqj;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkqh;->i:Lkqr;

    iget-object v2, p0, Lkqh;->j:Ljava/lang/String;

    iget-object v3, p0, Lkqh;->k:Ljava/lang/String;

    invoke-static {v3}, Lkwp;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    invoke-static {v1, v2, v0, v3, v4}, Lkqy;->a(Lkqr;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkqy;

    move-result-object v0

    iget-object v1, p0, Lkqh;->c:Lkqt;

    iget-object v2, p0, Lkqh;->m:Lkqo;

    invoke-interface {v1, v0, v2}, Lkqt;->a(Lkqy;Lkqo;)Lkqq;

    move-result-object v0

    iget-object v1, p0, Lkqh;->n:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null extension"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null tag"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkqh;->r:Lkqq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkqq;->a()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_0
    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lkqh;->r:Lkqq;

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    return-object v0

    :cond_0
    invoke-interface {v0}, Lkqq;->h()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lnou;
    .locals 1

    iget-object v0, p0, Lkqh;->s:Lnph;

    invoke-static {v0}, Lnsy;->C(Lnou;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized d()Ljava/io/FileInputStream;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkqh;->p:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot open an input stream after %s has been published or abandoned."

    invoke-static {v0, v1, p0}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lkqh;->n:Lkbc;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#openInputStream"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lkqh;->r:Lkqq;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lkqh;->l()Lkqq;

    move-result-object v0

    iput-object v0, p0, Lkqh;->r:Lkqq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lkqh;->r:Lkqq;

    invoke-interface {v0}, Lkqq;->b()Ljava/io/FileInputStream;

    move-result-object v0

    iget-object v1, p0, Lkqh;->o:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lkqh;->r:Lkqq;

    invoke-interface {v4}, Lkqq;->i()Lkqy;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " opened "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkaq;->f(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lkqh;->n:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    iget-object v1, p0, Lkqh;->s:Lnph;

    iget-object v2, p0, Lkqh;->r:Lkqq;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lkqq;->h()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnph;->e(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lkqh;->n:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Ljava/io/FileOutputStream;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkqh;->p:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot open an output stream after %s has been published or abandoned."

    invoke-static {v0, v1, p0}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lkqh;->n:Lkbc;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#openOutputStream"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lkqh;->r:Lkqq;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lkqh;->l()Lkqq;

    move-result-object v0

    iput-object v0, p0, Lkqh;->r:Lkqq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lkqh;->r:Lkqq;

    invoke-interface {v0}, Lkqq;->c()Ljava/io/FileOutputStream;

    move-result-object v0

    iget-object v1, p0, Lkqh;->o:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lkqh;->r:Lkqq;

    invoke-interface {v4}, Lkqq;->i()Lkqy;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " opened "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkaq;->f(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lkqh;->n:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    iget-object v1, p0, Lkqh;->s:Lnph;

    iget-object v2, p0, Lkqh;->r:Lkqq;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lkqq;->h()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnph;->e(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lkqh;->n:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    iget-object v1, p0, Lkqh;->s:Lnph;

    iget-object v2, p0, Lkqh;->r:Lkqq;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lkqq;->h()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnph;->e(Ljava/lang/Object;)Z

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 3

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lkqh;->p:Z

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lkqh;->p:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lkqh;->o:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " Abandoned"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lkqh;->d:Lkqg;

    invoke-interface {v0, p0}, Lkqg;->d(Lkqh;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkqh;->p:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkqh;->p:Z

    iget-object v0, p0, Lkqh;->e:Lkpi;

    iget-object v1, p0, Lkqh;->r:Lkqq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lkpi;->e:Lkqq;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lkqh;->o:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " Published, but will be visible to other apps after the MediaGroup is also published)."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lkqh;->d:Lkqg;

    invoke-interface {v0, p0}, Lkqg;->e(Lkqh;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lkqh;->p:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot set tag after %s has been published or abandoned."

    invoke-static {v0, v1, p0}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lkqh;->q:Ljava/lang/String;

    iget-object v0, p0, Lkqh;->e:Lkpi;

    iput-object p1, v0, Lkpi;->c:Ljava/lang/String;

    return-void
.end method

.method public final declared-synchronized i()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkqh;->p:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot create new file after %s has been published or abandoned."

    invoke-static {v0, v1, p0}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lkqh;->r:Lkqq;

    if-nez v0, :cond_0

    iget-object v0, p0, Lkqh;->n:Lkbc;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#touch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lkqh;->l()Lkqq;

    move-result-object v0

    iput-object v0, p0, Lkqh;->r:Lkqq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0}, Lkqq;->d()V

    iget-object v0, p0, Lkqh;->o:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lkqh;->r:Lkqq;

    invoke-interface {v2}, Lkqq;->i()Lkqy;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " created: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lkqh;->n:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, p0, Lkqh;->s:Lnph;

    iget-object v1, p0, Lkqh;->r:Lkqq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lkqq;->h()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lkqh;->n:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    iget-object v1, p0, Lkqh;->s:Lnph;

    iget-object v2, p0, Lkqh;->r:Lkqq;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lkqq;->h()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnph;->e(Ljava/lang/Object;)Z

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized j()Lkpj;
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkqh;->p:Z

    const-string v1, "Cannot be invoked until %s is published or abandoned."

    invoke-static {v0, v1, p0}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lkqh;->e:Lkpi;

    iget-byte v1, v0, Lkpi;->f:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v8, v0, Lkpi;->c:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v9, v0, Lkpi;->d:Lkqu;

    if-eqz v9, :cond_1

    iget-object v10, v0, Lkpi;->e:Lkqq;

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lkpj;

    iget-wide v4, v0, Lkpi;->a:J

    iget-wide v6, v0, Lkpi;->b:J

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lkpj;-><init>(JJLjava/lang/String;Lkqu;Lkqq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v2, v0, Lkpi;->f:B

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    const-string v2, " timestampNs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte v2, v0, Lkpi;->f:B

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    const-string v2, " utcTimestampMs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, v0, Lkpi;->c:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, " tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v2, v0, Lkpi;->d:Lkqu;

    if-nez v2, :cond_5

    const-string v2, " metadata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v0, v0, Lkpi;->e:Lkqq;

    if-nez v0, :cond_6

    const-string v0, " fileObject"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized k()Lkqq;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkqh;->p:Z

    const-string v1, "Cannot be invoked until %s is published or abandoned."

    invoke-static {v0, v1, p0}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lkqh;->r:Lkqq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lkqh;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lkqh;->t:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, ""

    goto :goto_1

    :cond_0
    packed-switch v2, :pswitch_data_0

    const-string v2, "CACHE"

    goto :goto_0

    :pswitch_0
    const-string v2, "PRIVATE"

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v1, v3

    const-string v2, "MediaFile-%s%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
