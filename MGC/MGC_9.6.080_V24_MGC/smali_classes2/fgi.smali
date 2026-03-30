.class final Lfgi;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private a:Landroid/hardware/Camera$Parameters;

.field private final b:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lfgi;->b:Landroid/hardware/Camera;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/hardware/Camera$Parameters;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x14

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lfgi;->a:Landroid/hardware/Camera$Parameters;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    iget-object v0, p0, Lfgi;->b:Landroid/hardware/Camera;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    nop

    iput-object v0, p0, Lfgi;->a:Landroid/hardware/Camera$Parameters;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    sget-object v0, Lfgm;->a:Lfht;

    nop

    nop

    nop

    nop

    const-string v1, "Camera object returned null parameters!"

    nop

    nop

    invoke-static {v0, v1}, Lfhu;->a(Lfht;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    sget-object v1, Lcom/google/android/libraries/phenotype/client/stable/NyRu/FYEOygtxYXoPt;->nHXEcyEtQG:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

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

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    :try_start_1
    iput-object v0, p0, Lfgi;->a:Landroid/hardware/Camera$Parameters;

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    monitor-exit p0

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
    throw v0

    nop

    nop

    nop
.end method
