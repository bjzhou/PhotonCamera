.class public abstract Luln;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private a:I

.field private b:Lumn;

.field public d:[Lulp;

.field public e:I


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
.end method


# virtual methods
.method public final eQ()Lulf;
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Luln;->b:Lumn;

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    new-instance v0, Lumn;

    nop

    nop

    nop

    nop

    nop

    iget v1, p0, Luln;->e:I

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lumn;-><init>(I)V

    iput-object v0, p0, Luln;->b:Lumn;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_8
    throw v0

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x8

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xb

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method protected abstract g()Lulp;
.end method

.method protected abstract j()[Lulp;
.end method

.method protected final k()Lulp;
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x11

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    return-object v2

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

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_8
    monitor-exit p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Luln;->d:[Lulp;

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Luln;->j()[Lulp;

    move-result-object v0

    nop

    iput-object v0, p0, Luln;->d:[Lulp;

    nop

    nop

    goto :goto_a

    nop

    :cond_2
    iget v1, p0, Luln;->e:I

    nop

    nop

    nop

    array-length v2, v0

    nop

    if-lt v1, v2, :cond_3

    nop

    nop

    nop

    nop

    add-int/2addr v2, v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, [Lulp;

    nop

    nop

    iput-object v0, p0, Luln;->d:[Lulp;

    nop

    nop

    nop

    :cond_3
    :goto_a
    iget v1, p0, Luln;->a:I

    nop

    nop

    nop

    :cond_4
    aget-object v2, v0, v1

    nop

    if-nez v2, :cond_5

    nop

    nop

    nop

    invoke-virtual {p0}, Luln;->g()Lulp;

    move-result-object v2

    nop

    aput-object v2, v0, v1

    nop

    nop

    nop

    :cond_5
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    array-length v3, v0

    nop

    nop

    nop

    nop

    if-lt v1, v3, :cond_6

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :cond_6
    invoke-virtual {v2, p0}, Lulp;->a(Ljava/lang/Object;)Z

    move-result v3

    nop

    if-eqz v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    iput v1, p0, Luln;->a:I

    nop

    nop

    nop

    nop

    nop

    iget v0, p0, Luln;->e:I

    nop

    nop

    const/4 v1, 0x1

    nop

    add-int/2addr v0, v1

    nop

    nop

    iput v0, p0, Luln;->e:I

    nop

    nop

    nop

    iget-object v0, p0, Luln;->b:Lumn;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Lumn;->m(I)V

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    throw v0

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method protected final l(Lulp;)V
    .locals 5

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v3, v3, 0x1

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

    :goto_1
    sget-object v4, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_a
    invoke-interface {v0, v4}, Ltzy;->t(Ljava/lang/Object;)V

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    if-lt v3, p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    aget-object v0, p1, v3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget v0, p0, Luln;->e:I

    nop

    nop

    nop

    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v0, v1

    nop

    iput v0, p0, Luln;->e:I

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Luln;->b:Lumn;

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    iput v3, p0, Luln;->a:I

    nop

    nop

    nop

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0}, Lulp;->b(Ljava/lang/Object;)[Ltzy;

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    array-length p0, p1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    monitor-exit p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v2, :cond_3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

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

    :goto_18
    invoke-virtual {v2, v1}, Lumn;->m(I)V

    :goto_19
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    :goto_1b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
