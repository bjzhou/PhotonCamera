.class public Lgnl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public b:Lsui;

.field public c:Lgsz;

.field public final d:Ljava/lang/Object;

.field private final e:Lgtl;

.field private final f:Lgqf;

.field private final g:Lgqi;

.field private final h:Lpdf;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m()V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lgnl;->c:Lgsz;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lgsz;->close()V

    iput-object v2, p0, Lgnl;->c:Lgsz;

    nop

    nop

    nop

    :cond_0
    iget-object v1, p0, Lgnl;->b:Lsui;

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3}, Lsui;->cancel(Z)Z

    iput-object v2, p0, Lgnl;->b:Lsui;

    nop

    nop

    :cond_1
    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lgnl;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_b
    const v0, 0xb

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-string v0, "gnl"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lgnl;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lhdn;Lgqf;Lgqi;Lpdf;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lgnl;->g:Lgqi;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    iget-object p1, p1, Lhdn;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lgnl;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lgnl;->f:Lgqf;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p1, Lgtl;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lgnl;->e:Lgtl;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    iput-object p4, p0, Lgnl;->h:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final a(Lgqg;)Lgsz;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_a

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    :try_start_0
    sget-object v0, Lgnl;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    const/16 v0, 0x212

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    check-cast p1, Lscz;

    nop

    nop

    const-string v0, "Error creating video recorder: "

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    :goto_6
    iget-object p0, p0, Lgnl;->h:Lpdf;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    :goto_8
    :try_start_1
    iget-object v0, p0, Lgnl;->h:Lpdf;

    nop

    nop

    nop

    const-string v1, "VRP#getNew"

    nop

    nop

    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lgnl;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, p1}, Lgnl;->b(Lgqg;)Lsui;

    move-result-object p1

    nop

    invoke-interface {p1}, Lsui;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lgsz;

    nop

    nop

    monitor-exit v0

    nop

    nop

    goto :goto_f

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    monitor-exit v0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    :goto_10
    iget-object p0, p0, Lgnl;->h:Lpdf;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop
.end method

.method final b(Lgqg;)Lsui;
    .locals 7

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    :goto_5
    iget-object v0, p0, Lgnl;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter v0

    nop

    :try_start_0
    invoke-direct {p0}, Lgnl;->33f5b80483094659737b73d90f80a8a4m()V

    iget-object v1, p0, Lgnl;->e:Lgtl;

    nop

    iget-object v2, p0, Lgnl;->g:Lgqi;

    nop

    iget-object v3, p0, Lgnl;->f:Lgqf;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lgqf;->a()Lgqc;

    move-result-object v3

    nop

    nop

    nop

    nop

    iget-object v4, v1, Lgtl;->k:Ljava/lang/Object;

    nop

    monitor-enter v4

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v5, v1, Lgtl;->m:Z

    nop

    if-eqz v5, :cond_0

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    iput-boolean v5, v1, Lgtl;->m:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v1, Lgtl;->v:Lgvg;

    nop

    nop

    nop

    sget-object v6, Lgst;->d:Lgst;

    nop

    invoke-virtual {v5, v6}, Lgvg;->k(Lgst;)Lows;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v1}, Lows;->d(Lpci;)V

    iget-object v5, v1, Lgtl;->b:Ltxm;

    nop

    nop

    nop

    check-cast v5, Lgtv;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lgtv;->b()Lgtu;

    move-result-object v5

    nop

    nop

    iput-object v5, v1, Lgtl;->q:Lgtu;

    nop

    nop

    nop

    nop

    nop

    :cond_0
    monitor-exit v4

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v4, Lgtk;

    nop

    invoke-direct {v4, v1, v2, p1, v3}, Lgtk;-><init>(Lgtl;Lgqi;Lgqg;Lgqc;)V

    iget-object p1, v1, Lgtl;->f:Lgsn;

    nop

    nop

    invoke-virtual {p1}, Lgsn;->b()Lowr;

    move-result-object p1

    nop

    invoke-static {v4, p1}, Lsgj;->T(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p1

    nop

    iput-object p1, p0, Lgnl;->b:Lsui;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lhos;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Lhos;-><init>(Ljava/lang/Object;I)V

    sget-object v2, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v1, v2}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    iget-object p0, p0, Lgnl;->b:Lsui;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x11

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_3
    monitor-exit v4

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_a

    nop

    nop

    :goto_a
    throw p0

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lgnl;->33f5b80483094659737b73d90f80a8a4m()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method
