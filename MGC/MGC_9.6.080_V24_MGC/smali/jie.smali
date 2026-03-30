.class public final Ljie;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:I

.field private static final b:Ljava/util/concurrent/Executor;


# instance fields
.field private final c:Lsuu;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Ljie;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lght;->a:Ljava/util/concurrent/ScheduledExecutorService;

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
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Ljie;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Ljie;->c:Lsuu;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()Lsui;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ljie;->c:Lsuu;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

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
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 7

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_b
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Ljie;->d:Z

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    iput-boolean v0, p0, Ljie;->d:Z

    nop

    nop

    nop

    nop

    new-instance v1, Ljid;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p1}, Ljid;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Ljie;->c:Lsuu;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljic;

    nop

    invoke-direct {v2, v0}, Ljic;-><init>(I)V

    sget-object v0, Ljie;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    invoke-static {v2, v0}, Lsgj;->R(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v2

    nop

    nop

    new-instance v3, Ljhr;

    nop

    const/4 v4, 0x5

    nop

    nop

    nop

    invoke-direct {v3, v1, v4}, Ljhr;-><init>(Ljava/lang/Object;I)V

    invoke-static {v3, v0}, Lsgj;->R(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Ljhr;

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x6

    nop

    nop

    nop

    nop

    invoke-direct {v4, v1, v5}, Ljhr;-><init>(Ljava/lang/Object;I)V

    invoke-static {v4, v0}, Lsgj;->R(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v4

    nop

    nop

    nop

    nop

    new-instance v5, Ljhr;

    nop

    const/4 v6, 0x7

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v1, v6}, Ljhr;-><init>(Ljava/lang/Object;I)V

    invoke-static {v5, v0}, Lsgj;->R(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v1

    nop

    new-instance v5, Ljic;

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    invoke-direct {v5, v6}, Ljic;-><init>(I)V

    invoke-static {v5, v0}, Lsgj;->R(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3, v4, v1, v0}, Lryb;->p(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lsgj;->K(Ljava/lang/Iterable;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    new-instance v1, Linn;

    nop

    const/16 v2, 0xf

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Linn;-><init>(I)V

    sget-object v2, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1, v2}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    invoke-virtual {p1, v0}, Lsuu;->f(Lsui;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
