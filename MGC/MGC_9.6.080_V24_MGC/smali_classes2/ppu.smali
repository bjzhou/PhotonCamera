.class public final Lppu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field final synthetic a:Landroidx/wear/ambient/AmbientDelegate;

.field private final b:Lppr;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroidx/wear/ambient/AmbientDelegate;Lppr;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lppu;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lppu;->b:Lppr;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Z)V
    .locals 5

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1d

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

    nop

    nop

    :goto_5
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_7
    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lppu;->d:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    iget-object v0, p0, Lppu;->b:Lppr;

    nop

    nop

    nop

    iget-wide v0, v0, Lppr;->a:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    cmp-long v4, v0, v2

    nop

    if-nez v4, :cond_1

    nop

    nop

    nop

    nop

    goto :goto_7

    nop

    :cond_1
    iget-boolean v4, p0, Lppu;->c:Z

    nop

    if-eqz v4, :cond_2

    nop

    nop

    nop

    nop

    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    neg-long v0, v0

    nop

    nop

    nop

    goto :goto_c

    nop

    :cond_2
    if-nez v4, :cond_3

    nop

    nop

    nop

    if-eqz p1, :cond_3

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    move-wide v0, v2

    nop

    nop

    nop

    :goto_c
    iput-boolean p1, p0, Lppu;->c:Z

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0, v1}, Landroidx/wear/ambient/AmbientDelegate;->ad(J)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    :goto_f
    iget-object p0, p0, Lppu;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

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
.end method

.method public final close()V
    .locals 4

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/wear/ambient/AmbientDelegate;->ad(J)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lppu;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lppu;->d:Z

    nop

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

    monitor-exit p0

    nop

    return-void

    nop

    :cond_0
    const/4 v0, 0x1

    nop

    nop

    nop

    iput-boolean v0, p0, Lppu;->d:Z

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Lppu;->c:Z

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    iget-object v0, p0, Lppu;->b:Lppr;

    nop

    nop

    nop

    nop

    iget-wide v0, v0, Lppr;->a:J

    nop

    neg-long v0, v0

    nop

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    :cond_1
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_9
    invoke-virtual {v2}, Landroidx/wear/ambient/AmbientDelegate;->Z()Lpci;

    move-result-object v2

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

    :goto_a
    invoke-virtual {v3}, Lppr;->close()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Lppu;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_13

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

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v2}, Lpci;->close()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    iget-object v3, p0, Lppu;->b:Lppr;

    nop

    goto/32 :goto_9

    nop

    nop
.end method
