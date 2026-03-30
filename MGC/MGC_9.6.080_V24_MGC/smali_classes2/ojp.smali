.class public abstract Lojp;
.super Lojl;
.source "PG"


# instance fields
.field private b:Z

.field private c:Ljava/util/ArrayList;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lojl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/32 :goto_3

    nop

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

    :goto_2
    iput-boolean p1, p0, Lojp;->b:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm()V
    .locals 7

    goto/32 :goto_9

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
    iget-boolean v0, p0, Lojp;->b:Z

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    iget-object v0, p0, Lojp;->a:Lcom/google/android/gms/common/data/DataHolder;

    nop

    nop

    nop

    invoke-static {v0}, Lolx;->ag(Ljava/lang/Object;)V

    iget v0, v0, Lcom/google/android/gms/common/data/DataHolder;->h:I

    nop

    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lojp;->c:Ljava/util/ArrayList;

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lojp;->f()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    iget-object v4, p0, Lojp;->a:Lcom/google/android/gms/common/data/DataHolder;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v3}, Lcom/google/android/gms/common/data/DataHolder;->a(I)I

    move-result v4

    nop

    nop

    iget-object v5, p0, Lojp;->a:Lcom/google/android/gms/common/data/DataHolder;

    nop

    nop

    nop

    invoke-virtual {v5, v1, v3, v4}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    move v4, v2

    nop

    nop

    nop

    nop

    :goto_1
    if-ge v4, v0, :cond_2

    nop

    iget-object v5, p0, Lojp;->a:Lcom/google/android/gms/common/data/DataHolder;

    nop

    invoke-virtual {v5, v4}, Lcom/google/android/gms/common/data/DataHolder;->a(I)I

    move-result v5

    nop

    iget-object v6, p0, Lojp;->a:Lcom/google/android/gms/common/data/DataHolder;

    nop

    nop

    nop

    invoke-virtual {v6, v1, v4, v5}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    if-eqz v6, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    if-nez v5, :cond_0

    nop

    nop

    iget-object v3, p0, Lojp;->c:Ljava/util/ArrayList;

    nop

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v6

    nop

    nop

    nop

    nop

    :cond_0
    add-int/lit8 v4, v4, 0x1

    nop

    goto :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing value for markerColumn: "

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", at row: "

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", for window: "

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    :cond_2
    iput-boolean v2, p0, Lojp;->b:Z

    nop

    nop

    :cond_3
    monitor-exit p0

    nop

    return-void

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

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_2
    const v1, 0xf

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x15

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop
.end method


# virtual methods
.method public final b()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lojp;->d5484163cd8d335e6b17663474ff5f2bm()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

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
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lojp;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/data/DataHolder;->a(I)I

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eq v1, v2, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Lojp;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lojp;->a:Lcom/google/android/gms/common/data/DataHolder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x4

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_d
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

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

    :goto_e
    if-eq p1, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    :goto_f
    move v1, v2

    nop

    :goto_10
    goto/32 :goto_20

    nop

    nop

    :goto_11
    iget-object v2, p0, Lojp;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_12
    if-eq p1, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v1, v1, -0x1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v2, Ljava/lang/Integer;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Lojp;->a:Lcom/google/android/gms/common/data/DataHolder;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v2, p0, Lojp;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1a
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Lojp;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sub-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v0, v1}, Lojp;->e(II)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v1, p0, Lojp;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x20

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

    :goto_25
    invoke-direct {p0}, Lojp;->d5484163cd8d335e6b17663474ff5f2bm()V

    goto/32 :goto_33

    nop

    nop

    :goto_26
    if-gez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v1}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int/lit8 v2, p1, 0x1

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

    :goto_29
    invoke-static {v1}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2a
    iget v1, v1, Lcom/google/android/gms/common/data/DataHolder;->h:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_30

    nop

    :goto_2c
    invoke-virtual {p0, p1}, Lojp;->d(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_10

    nop

    nop

    :goto_2f
    goto/32 :goto_5

    nop

    nop

    :goto_30
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

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

    :goto_33
    invoke-virtual {p0, p1}, Lojp;->d(I)I

    move-result v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop
.end method

.method final d(I)I
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, v0, v1}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_12

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
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    if-gez p1, :cond_1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    const-string v1, " is out of bounds for this buffer"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "Position "

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lojp;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lojp;->c:Ljava/util/ArrayList;

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

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

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

    nop

    nop

    :goto_12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_13
    if-lt p1, v0, :cond_2

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p0, Ljava/lang/Integer;

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

    :goto_15
    const v0, 0x20

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_17
    return p0

    nop

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method protected abstract e(II)Ljava/lang/Object;
.end method

.method protected abstract f()Ljava/lang/String;
.end method
