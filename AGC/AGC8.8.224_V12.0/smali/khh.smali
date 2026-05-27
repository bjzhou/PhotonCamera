.class public final Lkhh;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field public b:Z

.field public c:Z

.field public d:Z

.field public e:I

.field private final f:Lkgi;

.field private final g:Lkio;

.field private final h:Lkhf;

.field private final i:Lkgz;

.field private final j:Ljuf;

.field private final k:Lkbc;

.field private final l:Lkaq;

.field private final m:Lmqp;

.field private n:Ljava/util/Set;

.field private final o:Lkia;

.field private final p:Lkns;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkhh;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkfv;Lkjn;Landroidx/wear/ambient/AmbientDelegate;Lkgz;Lkio;Lkhf;Lkgi;Lkns;Ljuf;Lkbc;Lkaq;Lmqp;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p13, 0x1

    iput p13, p0, Lkhh;->e:I

    new-instance p14, Lkhg;

    invoke-direct {p14, p0}, Lkhg;-><init>(Lkhh;)V

    iput-object p14, p0, Lkhh;->o:Lkia;

    iput-object p5, p0, Lkhh;->g:Lkio;

    iput-object p6, p0, Lkhh;->h:Lkhf;

    iput-object p4, p0, Lkhh;->i:Lkgz;

    iput-object p8, p0, Lkhh;->p:Lkns;

    iput-object p7, p0, Lkhh;->f:Lkgi;

    iput-object p9, p0, Lkhh;->j:Ljuf;

    iput-object p10, p0, Lkhh;->k:Lkbc;

    new-instance p5, Ljava/util/HashSet;

    invoke-direct {p5}, Ljava/util/HashSet;-><init>()V

    iput-object p5, p0, Lkhh;->n:Ljava/util/Set;

    const-string p5, "RequestQueue"

    invoke-interface {p11, p5}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p5

    iput-object p5, p0, Lkhh;->l:Lkaq;

    iput-object p12, p0, Lkhh;->m:Lmqp;

    new-instance p5, Lkcu;

    const/4 p7, 0x5

    invoke-direct {p5, p0, p7}, Lkcu;-><init>(Lkhh;I)V

    new-instance p7, Lkcu;

    const/4 p8, 0x6

    invoke-direct {p7, p0, p8}, Lkcu;-><init>(Lkhh;I)V

    invoke-virtual {p1, p5}, Lkfv;->b(Ljava/lang/Runnable;)Lkad;

    move-result-object p1

    invoke-virtual {p9, p1}, Ljuf;->d(Lkad;)V

    invoke-virtual {p2, p5}, Lkjn;->b(Ljava/lang/Runnable;)V

    invoke-virtual {p3, p5}, Landroidx/wear/ambient/AmbientDelegate;->M(Ljava/lang/Runnable;)V

    invoke-virtual {p4, p7}, Lkgz;->c(Ljava/lang/Runnable;)V

    new-instance p1, Lkcu;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Lkcu;-><init>(Lkhh;I)V

    iget-object p2, p6, Lkhf;->b:Ljava/lang/Runnable;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p13, 0x0

    :goto_0
    const-string p2, "Session closed listener was set multiple times!"

    invoke-static {p13, p2}, Lmoz;->q(ZLjava/lang/Object;)V

    iput-object p1, p6, Lkhf;->b:Ljava/lang/Runnable;

    return-void
.end method

.method private final c(Ljava/util/Set;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgs;

    iget-object v1, p0, Lkhh;->l:Lkaq;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to submit "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkaq;->i(Ljava/lang/String;)V

    invoke-virtual {v0}, Lkgs;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 14

    iget-object v0, p0, Lkhh;->p:Lkns;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lkhh;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v2, p0, Lkhh;->j:Ljuf;

    invoke-virtual {v2}, Ljuf;->b()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lkhh;->p:Lkns;

    iget-object v3, p0, Lkhh;->f:Lkgi;

    invoke-virtual {v2, v3}, Lkns;->e(Lkgi;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lkhh;->e:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    iput v3, p0, Lkhh;->e:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, p0, Lkhh;->l:Lkaq;

    const-string v3, "RequestQueue startCamera"

    invoke-interface {v2, v3}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lkhh;->k:Lkbc;

    const-string v3, "RequestQueue startCamera"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lkhh;->m:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lkhh;->m:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkjr;

    iget-object v2, v2, Lkjr;->a:Lrb;

    invoke-interface {v2}, Lrb;->d()V

    goto/16 :goto_2

    :cond_1
    iget-object v2, p0, Lkhh;->g:Lkio;

    iget-object v3, v2, Lkio;->e:Ljuf;

    invoke-virtual {v3}, Ljuf;->b()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lkio;->j:Lkin;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lkin;->f()Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    :cond_2
    new-instance v3, Ljuf;

    invoke-direct {v3}, Ljuf;-><init>()V

    iget-object v4, v2, Lkio;->e:Ljuf;

    new-instance v5, Ligc;

    const/4 v6, 0x7

    invoke-direct {v5, v2, v3, v6}, Ligc;-><init>(Lkio;Ljuf;I)V

    invoke-virtual {v4, v5}, Ljuf;->d(Lkad;)V

    new-instance v4, Lkin;

    iget-object v5, v2, Lkio;->a:Lkeq;

    iget-object v8, v5, Lkeq;->a:Lkll;

    iget-object v5, v2, Lkio;->h:Lkjc;

    iget-object v6, v2, Lkio;->i:Landroid/os/Handler;

    invoke-virtual {v2, v5, v6}, Lkio;->a(Lkjc;Landroid/os/Handler;)Lkiq;

    move-result-object v9

    iget-object v10, v2, Lkio;->c:Lkip;

    iget-object v11, v2, Lkio;->i:Landroid/os/Handler;

    iget-object v12, v2, Lkio;->f:Lkbc;

    iget-object v13, v2, Lkio;->g:Lkaq;

    move-object v7, v4

    invoke-direct/range {v7 .. v13}, Lkin;-><init>(Lkll;Lkiq;Lkip;Landroid/os/Handler;Lkbc;Lkaq;)V

    iget-object v5, v2, Lkio;->k:Lkil;

    invoke-static {v4, v5}, Lmvv;->m(Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v5

    new-instance v6, Lkbv;

    invoke-static {v5}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v5

    invoke-direct {v6, v5}, Lkbv;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Ljuf;->d(Lkad;)V

    iget-object v5, v4, Lkin;->a:Ljuf;

    invoke-virtual {v5, v3}, Ljuf;->d(Lkad;)V

    new-instance v5, Lkcu;

    const/16 v7, 0x9

    invoke-direct {v5, v2, v7}, Lkcu;-><init>(Lkio;I)V

    iget-object v7, v2, Lkio;->d:Lkjn;

    invoke-virtual {v7, v5}, Lkjn;->b(Ljava/lang/Runnable;)V

    new-instance v7, Ligc;

    const/16 v8, 0x8

    invoke-direct {v7, v2, v5, v8}, Ligc;-><init>(Lkio;Ljava/lang/Runnable;I)V

    invoke-virtual {v3, v7}, Ljuf;->d(Lkad;)V

    iget-object v3, v2, Lkio;->g:Lkaq;

    iget-object v5, v2, Lkio;->a:Lkeq;

    iget-object v5, v5, Lkeq;->a:Lkll;

    iget-object v5, v5, Lkll;->a:Ljava/lang/String;

    const-string v7, "Starting Camera "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v3, v2, Lkio;->b:Lkbx;

    iget-object v5, v2, Lkio;->a:Lkeq;

    iget-object v5, v5, Lkeq;->a:Lkll;

    invoke-interface {v3, v5, v6}, Lkbx;->c(Lkll;Lkbw;)V

    iput-object v4, v2, Lkio;->j:Lkin;

    iget-object v2, v2, Lkio;->h:Lkjc;

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v2, v2, Lkio;->h:Lkjc;

    :goto_1
    iget-object v3, p0, Lkhh;->o:Lkia;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-boolean v4, v2, Lkjc;->f:Z

    if-eqz v4, :cond_4

    monitor-exit v2

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v2, Lkjc;->d:Lkia;

    iget-object v4, v2, Lkjc;->b:Lkhw;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_5

    :try_start_4
    invoke-interface {v3}, Lkia;->b()V

    :cond_5
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-enter v1

    :try_start_5
    iget-boolean v0, p0, Lkhh;->d:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkhh;->b:Z

    iput-boolean v0, p0, Lkhh;->c:Z

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lkhh;->b()V

    :cond_7
    iget-object v0, p0, Lkhh;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_8
    :goto_4
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    return-void

    :catchall_2
    move-exception v2

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v2

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v1
.end method

.method public final b()V
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    sget-object v3, Lkhh;->a:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v1, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lkhh;->d:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    monitor-exit v3

    return-void

    :cond_1
    :goto_1
    iget-boolean v1, p0, Lkhh;->b:Z

    iget-boolean v4, p0, Lkhh;->c:Z

    const/4 v5, 0x0

    if-nez v2, :cond_2

    iput-boolean v5, p0, Lkhh;->d:Z

    monitor-exit v3

    return-void

    :cond_2
    if-nez v1, :cond_4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v5, p0, Lkhh;->d:Z

    monitor-exit v3

    return-void

    :cond_4
    :goto_2
    iget-object v2, p0, Lkhh;->h:Lkhf;

    iget-object v6, v2, Lkhf;->a:Lkna;

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Lkna;->b(J)Lkmy;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v7, 0x0

    if-nez v6, :cond_5

    move-object v2, v7

    goto :goto_3

    :cond_5
    :try_start_1
    invoke-virtual {v2, v6}, Lkhf;->b(Lkmy;)Lkhd;

    move-result-object v2
    :try_end_1
    .catch Lkdf; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_3

    :catch_0
    move-exception v2

    move-object v2, v7

    :goto_3
    if-nez v2, :cond_6

    :try_start_2
    iput-boolean v5, p0, Lkhh;->d:Z

    monitor-exit v3

    return-void

    :cond_6
    iput-boolean v5, p0, Lkhh;->b:Z

    iput-boolean v5, p0, Lkhh;->c:Z

    iput-boolean v0, p0, Lkhh;->d:Z

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v1, :cond_8

    :try_start_3
    invoke-virtual {v2}, Lkhd;->b()Lkfy;

    move-result-object v1

    invoke-virtual {v1}, Lkfy;->a()Lkfz;

    move-result-object v1

    invoke-virtual {v1}, Lkfz;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lkhh;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v6, p0, Lkhh;->n:Ljava/util/Set;

    invoke-virtual {v1}, Lkfz;->a()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lkhh;->l:Lkaq;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lkfz;->a()Ljava/util/Set;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set repeating request to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " with "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lkaq;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Lkfz;->a()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v6

    iput-object v6, p0, Lkhh;->n:Ljava/util/Set;

    :cond_7
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2, v1}, Lkhd;->i(Lkfz;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v1, 0x1

    goto :goto_4

    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v1

    const/4 v3, 0x0

    goto/16 :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_4
    if-eqz v4, :cond_b

    :try_start_8
    iget-object v3, p0, Lkhh;->i:Lkgz;

    invoke-virtual {v3}, Lkgz;->a()Ljava/util/Set;

    move-result-object v3

    move-object v7, v3

    :goto_5
    if-eqz v7, :cond_b

    invoke-virtual {v2}, Lkhd;->b()Lkfy;

    move-result-object v3

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkgs;

    iget-object v6, v6, Lkgs;->c:Lkgq;

    invoke-virtual {v3, v6}, Lkfy;->b(Lkgq;)V

    goto :goto_6

    :cond_9
    invoke-virtual {v3}, Lkfy;->a()Lkfz;

    move-result-object v3

    invoke-virtual {v3}, Lkfz;->a()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0, v7}, Lkhh;->c(Ljava/util/Set;)V

    goto :goto_7

    :cond_a
    iget-object v4, p0, Lkhh;->l:Lkaq;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lkfz;->a()Ljava/util/Set;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Submitting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " with "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lkaq;->f(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v7}, Lkhd;->j(Lkfz;Ljava/util/Set;)V

    const/4 v1, 0x1

    :goto_7
    iget-object v3, p0, Lkhh;->i:Lkgz;

    invoke-virtual {v3}, Lkgz;->a()Ljava/util/Set;

    move-result-object v7

    goto :goto_5

    :catchall_2
    move-exception v3

    move-object v12, v3

    move v3, v1

    move-object v1, v12

    goto :goto_8

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lkhh;->a()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_a

    :goto_8
    :try_start_9
    invoke-virtual {v2}, Lkhd;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v2

    :try_start_a
    const-class v4, Ljava/lang/Throwable;

    const-string v6, "addSuppressed"

    new-array v8, v0, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Throwable;

    aput-object v9, v8, v5

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v2, v6, v5

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_9

    :catch_1
    move-exception v2

    :goto_9
    :try_start_b
    throw v1
    :try_end_b
    .catch Lkdf; {:try_start_b .. :try_end_b} :catch_2

    :catch_2
    move-exception v1

    goto :goto_b

    :cond_c
    :goto_a
    :try_start_c
    invoke-virtual {v2}, Lkhd;->close()V
    :try_end_c
    .catch Lkdf; {:try_start_c .. :try_end_c} :catch_3

    move v2, v1

    goto :goto_c

    :catch_3
    move-exception v2

    move v3, v1

    move-object v1, v2

    :goto_b
    iget-object v2, p0, Lkhh;->l:Lkaq;

    const-string v4, "Unable to invoke setRepeating, requestProcessor is unavailable"

    invoke-interface {v2, v4, v1}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v7}, Lkhh;->c(Ljava/util/Set;)V

    move v2, v3

    :goto_c
    const/4 v1, 0x0

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method
