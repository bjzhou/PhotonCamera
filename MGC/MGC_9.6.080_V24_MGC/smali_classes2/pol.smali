.class public final Lpol;
.super Lprt;
.source "PG"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Lprw;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0}, Lpol;-><init>(Lprw;I)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public constructor <init>(Lprw;I)V
    .locals 1

    goto/32 :goto_7

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

    nop

    :goto_1
    iput p2, p0, Lpol;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_6

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    :goto_5
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    :goto_7
    invoke-direct {p0, p1}, Lprt;-><init>(Lprw;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "Initial reference count must be greater than zero!"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    if-gtz p2, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, v0}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lpol;->l()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public final k()Lprw;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget v0, p0, Lpol;->a:I

    nop

    nop

    nop

    if-lez v0, :cond_0

    nop

    nop

    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v0, p0, Lpol;->a:I

    nop

    nop

    nop

    new-instance v0, Lpom;

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0}, Lpom;-><init>(Lprw;)V

    monitor-exit p0

    nop

    nop

    nop

    nop

    return-object v0

    nop

    nop

    nop

    nop

    nop

    :cond_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    const/4 p0, 0x0

    nop

    return-object p0

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

    monitor-exit p0

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

    nop

    :goto_1
    throw v0

    nop

    nop

    nop
.end method

.method public final l()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    :goto_1
    invoke-super {p0}, Lprt;->close()V

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

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

    :try_start_0
    monitor-exit p0

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

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget v0, p0, Lpol;->a:I

    nop

    nop

    nop

    nop

    nop

    if-gtz v0, :cond_1

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_1
    add-int/lit8 v0, v0, -0x1

    nop

    iput v0, p0, Lpol;->a:I

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    :try_start_0
    invoke-static {p0}, Lrrf;->c(Ljava/lang/Object;)Lrsr;

    move-result-object v0

    nop

    nop

    nop

    const-string v1, "refCount"

    nop

    nop

    nop

    iget v2, p0, Lpol;->a:I

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Lrsr;->e(Ljava/lang/String;I)V

    invoke-super {p0}, Lprt;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    invoke-virtual {v0, v1}, Lrsr;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lrsr;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

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

    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method
