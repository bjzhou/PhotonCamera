.class public final Lqkv;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lrsk;

.field public c:Landroid/os/Handler;

.field public d:Z

.field public e:Landroid/view/Surface;

.field public f:Z

.field private final g:Landroid/media/MediaFormat;

.field private final h:Lqle;

.field private i:Lscn;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lqkv;->a:Ljava/lang/Object;

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

    :goto_2
    sget-object v0, Lrsn;->a:Lrsn;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iput-object v0, p0, Lqkv;->b:Lrsk;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_6
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/media/MediaFormat;Lqle;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Lqkz;->c:Lqkz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2
    iput-object p1, p0, Lqkv;->e:Landroid/view/Surface;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    iput-object p2, p0, Lqkv;->h:Lqle;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p2, p0, Lqkv;->i:Lscn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_d
    iput-boolean v0, p0, Lqkv;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v0, Lrsn;->a:Lrsn;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    iput-object v0, p0, Lqkv;->b:Lrsk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p2, Lscn;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Lqkv;->g:Landroid/media/MediaFormat;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lqkv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    invoke-direct {p2, v1}, Lscn;-><init>(Lqkz;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    iput-boolean v0, p0, Lqkv;->d:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p1, p0, Lqkv;->c:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_13

    nop

    nop

    :goto_1a
    const/4 p1, 0x0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1b
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lqkz;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lscn;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {v0, p1}, Lscn;-><init>(Lqkz;)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object v0, p0, Lqkv;->i:Lscn;

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
.end method

.method public final bridge synthetic b()Lqau;
    .locals 12

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "Could not build instance."

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x7

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_0
    const-string v1, "Could not build track encoder"

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    invoke-direct {v2, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    throw p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :catchall_2
    move-exception p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    :try_start_2
    iget-object v0, p0, Lqkv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v1, p0, Lqkv;->b:Lrsk;

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, p0, Lqkv;->i:Lscn;

    nop

    nop

    nop

    nop

    iget-object v5, p0, Lqkv;->h:Lqle;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lqkw;

    nop

    nop

    iget-object v4, v2, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    invoke-direct {v3, v4, v5}, Lqkw;-><init>(Lqkz;Ljava/lang/AutoCloseable;)V

    iput-object v3, v2, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    new-instance v11, Lqau;

    nop

    nop

    iget-object v4, p0, Lqkv;->g:Landroid/media/MediaFormat;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v2, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    iget-object v7, p0, Lqkv;->c:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    iget-boolean v8, p0, Lqkv;->d:Z

    nop

    nop

    nop

    nop

    iget-object v9, p0, Lqkv;->e:Landroid/view/Surface;

    nop

    iget-boolean v10, p0, Lqkv;->f:Z

    nop

    nop

    nop

    nop

    move-object v3, v11

    nop

    invoke-direct/range {v3 .. v10}, Lqau;-><init>(Landroid/media/MediaFormat;Lqle;Lqkz;Landroid/os/Handler;ZLandroid/view/Surface;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {v1, v11}, Lrsk;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p0, Lqau;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method
