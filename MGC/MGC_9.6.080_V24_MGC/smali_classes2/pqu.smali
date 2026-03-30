.class final Lpqu;
.super Landroid/view/OrientationEventListener;
.source "PG"


# instance fields
.field final synthetic a:Lpqv;


# direct methods
.method public constructor <init>(Lpqv;Landroid/content/Context;)V
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
    iput-object p1, p0, Lpqu;->a:Lpqv;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 7

    goto/32 :goto_b

    nop

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
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ltz p1, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_d
    iget-object p0, p0, Lpqu;->a:Lpqv;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lpqv;->b:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Lpqt;

    nop

    nop

    nop

    invoke-interface {v2, p1}, Lpqt;->a(I)V

    goto :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    const/16 v1, 0x168

    nop

    nop

    nop

    nop

    nop

    if-ge p1, v1, :cond_3

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_3
    const/4 v2, 0x0

    nop

    nop

    :goto_10
    invoke-static {v2}, La;->au(Z)V

    iget-object v2, p0, Lpqv;->g:Lpcg;

    nop

    nop

    nop

    nop

    iget v2, v2, Lpcg;->e:I

    nop

    sub-int v2, p1, v2

    nop

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    nop

    nop

    nop

    rsub-int v3, v2, 0x168

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    nop

    const/16 v3, 0x32

    nop

    nop

    nop

    if-lt v2, v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 p1, p1, 0x2d

    nop

    nop

    nop

    nop

    nop

    div-int/lit8 p1, p1, 0x5a

    nop

    mul-int/lit8 p1, p1, 0x5a

    nop

    nop

    nop

    nop

    nop

    rem-int/2addr p1, v1

    nop

    nop

    invoke-static {p1}, Lpcg;->b(I)Lpcg;

    move-result-object p1

    nop

    nop

    goto :goto_11

    nop

    nop

    nop

    :cond_4
    iget-object p1, p0, Lpqv;->g:Lpcg;

    nop

    :goto_11
    iget-object v1, p0, Lpqv;->g:Lpcg;

    nop

    if-ne p1, v1, :cond_5

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_5
    iput-object p1, p0, Lpqv;->g:Lpcg;

    nop

    nop

    nop

    iget-object v1, p0, Lpqv;->a:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_6

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lpqs;

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lpqv;->e:Ljava/util/concurrent/Executor;

    nop

    new-instance v4, Lpho;

    nop

    nop

    nop

    nop

    const/4 v5, 0x7

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v4, v2, p1, v5, v6}, Lpho;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_12

    nop

    :cond_6
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

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lpqv;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method
