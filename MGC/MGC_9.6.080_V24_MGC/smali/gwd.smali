.class public final Lgwd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgvz;


# instance fields
.field private final a:Lgvz;

.field private b:Z

.field private final c:Ljava/lang/Object;

.field private d:I


# direct methods
.method public constructor <init>(Lgvz;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lgwd;->b:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lgwd;->d:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-object p1, p0, Lgwd;->a:Lgvz;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

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

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lgwd;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x2

    nop

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

    :goto_9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Llxn;)Lsui;
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lgwd;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    const v0, 0xc

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lgwd;->d:I

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_1

    nop

    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    const-string p1, "has been closed."

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-object p0

    nop

    nop

    nop

    nop

    nop

    :cond_1
    const/4 v3, 0x3

    nop

    nop

    nop

    if-ne v1, v3, :cond_2

    nop

    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    const-string p1, "there is already a snapshot request in flight."

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-object p0

    nop

    nop

    nop

    :cond_2
    const/4 v4, 0x2

    nop

    nop

    nop

    if-ne v1, v4, :cond_3

    nop

    nop

    move v1, v2

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    :cond_3
    const/4 v1, 0x0

    nop

    nop

    :goto_b
    invoke-static {v1}, Lrrf;->x(Z)V

    iput v3, p0, Lgwd;->d:I

    nop

    nop

    nop

    iget-object v1, p0, Lgwd;->a:Lgvz;

    nop

    nop

    invoke-interface {v1, p1}, Lgvz;->a(Llxn;)Lsui;

    move-result-object p1

    nop

    nop

    nop

    nop

    new-instance v1, Lgzi;

    nop

    nop

    invoke-direct {v1, p0, v2}, Lgzi;-><init>(Ljava/lang/Object;I)V

    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    invoke-interface {p1, v1, p0}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    monitor-exit v0

    nop

    return-object p1

    nop

    nop

    nop

    nop

    :catchall_0
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lpog;Lpcg;)Lsui;
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xe

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lgwd;->d:I

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    if-ne v1, v2, :cond_1

    nop

    nop

    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    const-string p1, "has been closed."

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-object p0

    nop

    nop

    nop

    nop

    nop

    :cond_1
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    if-ne v1, v3, :cond_2

    nop

    nop

    nop

    nop

    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    const-string p1, "there is already a snapshot request in flight."

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    return-object p0

    nop

    :cond_2
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    if-ne v1, v4, :cond_3

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    :cond_3
    const/4 v2, 0x0

    nop

    nop

    :goto_b
    invoke-static {v2}, Lrrf;->x(Z)V

    iput v3, p0, Lgwd;->d:I

    nop

    iget-object v1, p0, Lgwd;->a:Lgvz;

    nop

    nop

    invoke-interface {v1, p1, p2}, Lgvz;->b(Lpog;Lpcg;)Lsui;

    move-result-object p1

    nop

    nop

    nop

    nop

    new-instance p2, Lgpt;

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x14

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p2, p0, v1}, Lgpt;-><init>(Ljava/lang/Object;I)V

    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    invoke-interface {p1, p2, p0}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-object p1

    nop

    :catchall_0
    move-exception p0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lgwd;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgwd;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lgwd;->d:I

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    if-ne v1, v2, :cond_0

    nop

    monitor-exit v0

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_0
    iput v2, p0, Lgwd;->d:I

    nop

    nop

    nop

    nop

    nop

    iget-boolean v1, p0, Lgwd;->b:Z

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    invoke-virtual {p0}, Lgwd;->close()V

    :cond_1
    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x8

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop
.end method

.method public final close()V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    monitor-enter v0

    nop

    :try_start_0
    iget v1, p0, Lgwd;->d:I

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

    if-ne v1, v2, :cond_1

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_1
    const/4 v3, 0x3

    nop

    nop

    if-ne v1, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    iput-boolean v2, p0, Lgwd;->b:Z

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_2
    iget-object v1, p0, Lgwd;->a:Lgvz;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lgvz;->close()V

    iput v2, p0, Lgwd;->d:I

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lgwd;->b:Z

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

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x13

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    iget-object v0, p0, Lgwd;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
