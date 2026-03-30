.class public final Ldui;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lnmn;


# direct methods
.method public constructor <init>()V
    .locals 0

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

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_8

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

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Ldui;->a:Z

    nop

    if-eqz v0, :cond_0

    nop

    monitor-exit p0

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

    :cond_0
    const/4 v0, 0x1

    nop

    nop

    nop

    iput-boolean v0, p0, Ldui;->a:Z

    nop

    nop

    iput-boolean v0, p0, Ldui;->b:Z

    nop

    nop

    nop

    iget-object v0, p0, Ldui;->c:Lnmn;

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_a

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iput-boolean v1, p0, Ldui;->b:Z

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    nop

    nop

    nop

    return-void

    nop

    :catchall_1
    move-exception v0

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lnmn;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_8
    const v0, 0x15

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    throw v0

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    :try_start_3
    monitor-exit p0

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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
    throw v0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    monitor-enter p0

    nop

    nop

    nop

    :try_start_4
    iput-boolean v1, p0, Ldui;->b:Z

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_13
    throw v0

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    :try_start_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method
