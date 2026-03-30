.class final Lmhj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field final synthetic a:Lmhm;


# direct methods
.method public constructor <init>(Lmhm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmhj;->a:Lmhm;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

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
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 5

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2
    if-eqz p3, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, v3, Lmhl;->c:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p1, Lmhm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lmhj;->a:Lmhm;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_0
    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p0, Ljava/util/NoSuchElementException;

    nop

    nop

    nop

    nop

    nop

    const-string p3, "SoundInfo for sampleId "

    nop

    const-string v0, " not found."

    nop

    nop

    nop

    invoke-static {p2, p3, v0}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_2
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0

    nop

    :cond_3
    monitor-exit p1

    nop

    nop

    return-void

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_14

    nop

    nop

    :goto_11
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    :try_start_4
    iget-object v3, p0, Lmhm;->c:Landroid/util/SparseArray;

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    nop

    nop

    nop

    if-ge v2, v3, :cond_2

    nop

    iget-object v3, p0, Lmhm;->c:Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Lmhl;

    nop

    nop

    nop

    nop

    nop

    iget v4, v3, Lmhl;->b:I

    nop

    nop

    nop

    nop

    nop

    if-ne v4, p2, :cond_1

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget p0, v3, Lmhl;->a:I

    nop

    nop

    nop

    iget p0, v3, Lmhl;->b:I

    nop

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_2

    nop

    nop

    :goto_13
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_14
    throw p0

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_16
    monitor-enter p1

    nop

    nop

    :try_start_6
    iget-object p0, p0, Lmhj;->a:Lmhm;

    nop

    nop

    iget-boolean v0, p0, Lmhm;->d:Z

    nop

    nop

    if-nez v0, :cond_3

    nop

    iget-object v0, p0, Lmhm;->b:Ljava/lang/Object;

    nop

    monitor-enter v0

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_4

    nop

    goto/32 :goto_e

    nop

    :cond_4
    goto/32 :goto_d

    nop

    :goto_18
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
