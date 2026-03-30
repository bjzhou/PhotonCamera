.class public final Lfwh;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private volatile a:I

.field private volatile b:I

.field private volatile c:I

.field private volatile d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lfwh;->a()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

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

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    :try_start_1
    iput v0, p0, Lfwh;->d:I

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    iput v0, p0, Lfwh;->c:I

    nop

    nop

    nop

    nop

    nop

    iput v0, p0, Lfwh;->a:I

    nop

    nop

    nop

    iput v0, p0, Lfwh;->b:I

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(Llse;)Z
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

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

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget v0, p0, Lfwh;->a:I

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    iput v0, p0, Lfwh;->a:I

    nop

    invoke-virtual {p1}, Llse;->b()Z

    move-result p1

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    if-eqz p1, :cond_0

    nop

    iget p1, p0, Lfwh;->c:I

    nop

    nop

    nop

    nop

    add-int/2addr p1, v1

    nop

    nop

    nop

    nop

    iput p1, p0, Lfwh;->c:I

    nop

    nop

    nop

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iput v0, p0, Lfwh;->c:I

    nop

    nop

    nop

    nop

    :goto_2
    iget p1, p0, Lfwh;->a:I

    nop

    nop

    nop

    nop

    nop

    iget v2, p0, Lfwh;->b:I

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lt p1, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    const/16 v2, 0x1e

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    :try_start_1
    iget p1, p0, Lfwh;->c:I

    nop

    nop

    nop

    nop

    nop

    if-le p1, v2, :cond_3

    nop

    nop

    nop

    nop

    iget p1, p0, Lfwh;->d:I

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    if-eq p1, v2, :cond_4

    nop

    nop

    nop

    iput v2, p0, Lfwh;->d:I

    nop

    nop

    move v0, v1

    nop

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    :cond_3
    iget p1, p0, Lfwh;->d:I

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    if-eq p1, v2, :cond_4

    nop

    nop

    nop

    nop

    iput v2, p0, Lfwh;->d:I

    nop

    :cond_4
    :goto_e
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    iget p1, p0, Lfwh;->a:I

    nop

    nop

    nop

    nop

    iput p1, p0, Lfwh;->b:I

    nop

    iput v1, p0, Lfwh;->d:I

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    goto/32 :goto_4

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    sub-int/2addr p1, v2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    return v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop
.end method
