.class final Lpmp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field final synthetic a:Lpmq;

.field private b:Z

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lpmq;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lpmp;->c:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Lpmp;->b:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/4 p1, 0x0

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

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iput-object p1, p0, Lpmp;->a:Lpmq;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 7

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_1
    monitor-enter p0

    nop

    :try_start_0
    iget v0, p0, Lpmq;->a:I

    nop

    nop

    nop

    nop

    nop

    if-lez v0, :cond_1

    nop

    nop

    nop

    move v0, v2

    nop

    nop

    nop

    nop

    nop

    goto :goto_2

    nop

    :cond_1
    move v0, v1

    nop

    nop

    nop

    :goto_2
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    aput-object v4, v3, v6

    nop

    nop

    const/16 v5, 0x221

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    invoke-static {v5, v6, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lpmq;->a:I

    nop

    nop

    nop

    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    iput v0, p0, Lpmq;->a:I

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget v0, p0, Lpmq;->b:I

    nop

    if-nez v0, :cond_2

    nop

    nop

    iput-boolean v2, p0, Lpmq;->c:Z

    nop

    move v1, v2

    nop

    nop

    nop

    nop

    :cond_2
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_3

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x1

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

    nop

    :goto_5
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    invoke-static {v5, v0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_16

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v5, 0x222

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    :goto_f
    iget v0, p0, Lpmp;->c:I

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v3, 0x0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_11
    monitor-enter p0

    nop

    nop

    :try_start_3
    iget v0, p0, Lpmq;->b:I

    nop

    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    move v0, v2

    nop

    nop

    goto :goto_12

    nop

    :cond_6
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    new-array v3, v3, [Ljava/lang/Object;

    nop

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    aput-object v4, v3, v6

    nop

    const/16 v5, 0x224

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    invoke-static {v5, v6, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lpmq;->b:I

    nop

    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    iput v0, p0, Lpmq;->b:I

    nop

    nop

    nop

    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    iget v0, p0, Lpmq;->a:I

    nop

    nop

    nop

    nop

    if-nez v0, :cond_7

    nop

    nop

    iput-boolean v2, p0, Lpmq;->c:Z

    nop

    nop

    move v1, v2

    nop

    nop

    nop

    nop

    :cond_7
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_8
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_14
    throw v0

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    :goto_16
    throw v0

    nop

    nop

    :goto_17
    goto/32 :goto_31

    nop

    nop

    :goto_18
    const/16 v5, 0x226

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lpmq;->d:Lows;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lpmp;->a:Lpmq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1b
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_29

    nop

    :goto_1d
    goto/32 :goto_f

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_4
    monitor-exit p0

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lpmq;->d:Lows;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

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

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_21
    const/16 v5, 0x225

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v5, p0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v0, :cond_9

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_25
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    iget-boolean v0, p0, Lpmp;->b:Z

    nop

    nop

    if-nez v0, :cond_a

    nop

    nop

    iput-boolean v2, p0, Lpmp;->b:Z

    nop

    move v0, v2

    nop

    nop

    nop

    nop

    goto :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_a
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_26
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x12

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

    :goto_28
    throw v0

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2b
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v5, v0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2d
    goto/32 :goto_2b

    nop

    nop

    :goto_2e
    invoke-static {v5, p0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_20

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lpmp;->a:Lpmq;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_30
    const/16 v5, 0x223

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_31
    monitor-enter p0

    nop

    nop

    nop

    :try_start_7
    iget-boolean v0, p0, Lpmp;->b:Z

    nop

    nop

    if-nez v0, :cond_b

    nop

    iput-boolean v2, p0, Lpmp;->b:Z

    nop

    nop

    nop

    nop

    nop

    move v0, v2

    nop

    nop

    nop

    nop

    nop

    goto :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_b
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_32
    monitor-exit p0

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_34
    throw v0

    nop

    nop

    :goto_35
    goto/32 :goto_d

    nop

    nop
.end method
