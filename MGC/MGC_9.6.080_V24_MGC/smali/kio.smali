.class final Lkio;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkgn;


# instance fields
.field final synthetic a:Lkip;

.field private final b:Lkgn;

.field private c:Z


# direct methods
.method public constructor <init>(Lkip;Lkgn;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lkio;->a:Lkip;

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

    :goto_3
    iput-boolean p1, p0, Lkio;->c:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

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

    :goto_5
    iput-object p2, p0, Lkio;->b:Lkgn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lprw;)Z
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_b

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

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
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lkio;->c:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lkio;->b:Lkgn;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Lkgn;->a(Lprw;)Z

    move-result v0

    nop

    nop

    goto/16 :goto_b

    nop

    nop

    :cond_1
    sget-object v1, Lkip;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    const/16 v2, 0xba4

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    const-string v2, "Attempting to enqueue image on closed sink!"

    nop

    invoke-interface {v1, v2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x10

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    const v1, 0x9

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    :try_start_1
    sget-object v2, Lkip;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    invoke-interface {v2, v1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v1

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0xba5

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    const-string v2, "Could not encode out image"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_b
    :try_start_2
    invoke-interface {p1}, Lprw;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    :goto_d
    return v0

    nop

    nop

    nop

    nop

    :goto_e
    :try_start_3
    invoke-interface {p1}, Lprw;->close()V

    throw v0

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized close()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

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

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lkio;->c:Z

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lkio;->b:Lkgn;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lkgn;->close()V

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lkio;->c:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lkio;->a:Lkip;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lkip;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method
