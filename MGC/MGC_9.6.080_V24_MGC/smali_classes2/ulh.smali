.class public final Lulh;
.super Luln;
.source "PG"

# interfaces
.implements Lujp;
.implements Lume;
.implements Lulf;
.implements Luko;


# instance fields
.field private final a:Lueq;

.field private b:I


# direct methods
.method private final 7ecc92917e9c4556cc19f457ddc41af8m(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    aget-object v3, p2, v2

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p2, [Lulj;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_0
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_a
    if-ne v4, v5, :cond_1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_b
    if-nez v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    :cond_2
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_c
    move p1, v7

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

    nop

    :goto_d
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v6, v4, v5}, La;->aS(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v4, v3, Lulj;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_40

    nop

    nop

    :goto_12
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x10

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return v1

    nop

    nop

    :cond_5
    :goto_16
    :try_start_0
    invoke-static {v0, p2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_19
    add-int/lit8 p1, p1, 0x2

    nop

    :try_start_1
    iput p1, p0, Lulh;->b:I

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v4, v3}, Ltzy;->t(Ljava/lang/Object;)V

    :goto_1b
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1c
    move v7, p2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1e
    if-nez p2, :cond_6

    nop

    goto/32 :goto_3

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1f
    monitor-exit p0

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_20
    return v0

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move-object p2, p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return v0

    nop

    :cond_7
    :try_start_2
    iget-object p1, p0, Luln;->d:[Lulp;

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v5, v4, v6}, La;->aS(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v6, v3, Lulj;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_26
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    throw p1

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return v0

    nop

    :goto_29
    :try_start_3
    iget-object p1, p0, Lulh;->a:Lueq;

    nop

    nop

    invoke-virtual {p1, p2}, Lueq;->c(Ljava/lang/Object;)V

    iget p1, p0, Lulh;->b:I

    nop

    and-int/lit8 p2, p1, 0x1

    nop

    nop

    nop

    nop

    if-nez p2, :cond_8

    nop

    nop

    nop

    add-int/2addr p1, v0

    nop

    nop

    nop

    iput p1, p0, Lulh;->b:I

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p0, Luln;->d:[Lulp;

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_2e

    nop

    nop

    :goto_2a
    if-eqz v4, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2c
    iget-object v5, v3, Lulj;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2d
    sget-object v6, Luli;->a:Lunv;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    monitor-exit p0

    nop

    nop

    :goto_2f
    goto/32 :goto_5

    nop

    nop

    :goto_30
    throw p1

    nop

    :goto_31
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_32
    array-length v3, p2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_a
    goto/32 :goto_8

    nop

    :goto_34
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    iget p2, p0, Lulh;->b:I

    nop

    if-ne p2, p1, :cond_7

    nop

    nop

    nop

    nop

    add-int/2addr p1, v0

    nop

    nop

    nop

    nop

    iput p1, p0, Lulh;->b:I

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_1b

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_37
    check-cast v4, Lufa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-eq v4, v6, :cond_b

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_39
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3a
    if-lt v2, v3, :cond_c

    nop

    goto/32 :goto_3

    nop

    :cond_c
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3b
    sget-object v3, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3c
    const/4 v0, 0x1

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

    :goto_3d
    goto/16 :goto_16

    nop

    nop

    :goto_3e
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3f
    sget-object v5, Luli;->b:Lunv;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_1b

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_42
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_43
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_44
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_5
    iget-object v0, p0, Lulh;->a:Lueq;

    nop

    nop

    nop

    iget-object v0, v0, Lueq;->a:Ljava/lang/Object;

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    if-eqz p1, :cond_5

    nop

    nop

    nop

    nop

    invoke-static {v0, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_45
    if-nez v3, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_d
    :goto_46
    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Luln;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    :goto_5
    sget-object v0, Luer;->a:Luer;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    const v1, 0x18

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x10

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

    nop

    :goto_8
    invoke-direct {v1, p1, v0}, Lueq;-><init>(Ljava/lang/Object;Lucu;)V

    goto/32 :goto_d

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

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v1, p0, Lulh;->a:Lueq;

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

    :goto_e
    new-instance v1, Lueq;

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

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    sget-object p0, Ltyg;->a:Ltyg;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lulh;->d(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lumh;->a:Lunv;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    if-eq p0, v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    iget-object p0, p0, Lulh;->a:Lueq;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lueq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

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
    sget-object p1, Lumh;->a:Lunv;

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0, p1}, Lulh;->7ecc92917e9c4556cc19f457ddc41af8m(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2}, Lulh;->7ecc92917e9c4556cc19f457ddc41af8m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    sget-object p1, Lumh;->a:Lunv;

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final eO(Luad;II)Lujp;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Luli;->b(Lulf;Luad;II)Lujp;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final eP(Lujq;Ltzy;)Ljava/lang/Object;
    .locals 11

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v8, v0, Lulg;->g:Lulh;

    nop

    nop

    :try_start_0
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1
    and-int v3, v1, v2

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_3
    if-ne v2, v6, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_4
    if-eq v2, v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne v2, v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_30

    nop

    nop

    :goto_8
    iget-object p1, v0, Lulg;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9
    move-object p1, p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_49

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_b
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/high16 v2, -0x80000000

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    const/4 v4, 0x2

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_e
    iget-object p0, v0, Lulg;->g:Lulh;

    nop

    nop

    :try_start_1
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v2, :cond_4

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    :goto_10
    iget-object v2, v0, Lulg;->h:Lulj;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1e

    nop

    nop

    :goto_12
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_14
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_16
    iget-object p2, v0, Lulg;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_17
    iget-object p1, v0, Lulg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    iget-object v2, v0, Lulg;->h:Lulj;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move-object p0, v8

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1a
    iget-object v8, v0, Lulg;->g:Lulh;

    nop

    nop

    :try_start_2
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, v0, Lulg;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    throw p1

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_31

    nop

    nop

    :goto_20
    iget-object p0, v0, Lulg;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_21
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_22
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v3, 0x3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_24
    iget-object v7, v0, Lulg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_27
    sget-object p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/uK/JLjgPsjc;->kZDMXcZBQJJG:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_28
    iput v1, v0, Lulg;->f:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_29
    goto/16 :goto_4a

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_3e

    nop

    nop

    :goto_2b
    goto/16 :goto_4a

    nop

    :goto_2c
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2d
    iget-object p1, v0, Lulg;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Luln;->k()Lulp;

    move-result-object p2

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v7, v0, Lulg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_30
    new-instance v0, Lulg;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_33
    move-object p0, v8

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object v1, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_36
    move-object p1, p0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0, v2}, Luln;->l(Lulp;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_38
    iget v1, v0, Lulg;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_39
    if-nez v3, :cond_6

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3a
    move-object p0, v8

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3b
    move-object p2, p1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3c
    move-object p1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sub-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v2, v0, Lulg;->h:Lulj;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3f
    iget v2, v0, Lulg;->f:I

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_40
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_41
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_42
    goto :goto_46

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_43
    const/4 v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_44
    move-object p2, p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_45
    check-cast v2, Lulj;

    nop

    nop

    :try_start_3
    instance-of p2, p1, Lulk;

    nop

    nop

    if-nez p2, :cond_f

    nop

    nop

    nop

    :goto_46
    invoke-interface {v0}, Ltzy;->r()Luad;

    move-result-object p2

    nop

    nop

    nop

    nop

    sget-object v7, Lugy;->c:Ltzz;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, v7}, Luad;->get(Luac;)Luab;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    check-cast p2, Lugy;

    nop

    nop

    nop

    move-object v7, p1

    nop

    nop

    nop

    move-object p1, v5

    nop

    :cond_7
    :goto_47
    iget-object v8, p0, Lulh;->a:Lueq;

    nop

    iget-object v8, v8, Lueq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_8

    nop

    nop

    nop

    nop

    nop

    invoke-static {p2}, Lucu;->s(Lugy;)V

    :cond_8
    if-eqz p1, :cond_9

    nop

    nop

    nop

    invoke-static {p1, v8}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-nez v9, :cond_b

    nop

    nop

    nop

    :cond_9
    sget-object p1, Lumh;->a:Lunv;

    nop

    nop

    nop

    if-ne v8, p1, :cond_a

    nop

    nop

    nop

    nop

    move-object p1, v5

    nop

    nop

    nop

    goto :goto_48

    nop

    nop

    nop

    nop

    :cond_a
    move-object p1, v8

    nop

    nop

    :goto_48
    iput-object p0, v0, Lulg;->g:Lulh;

    nop

    nop

    nop

    nop

    iput-object v7, v0, Lulg;->a:Ljava/lang/Object;

    nop

    nop

    iput-object v2, v0, Lulg;->h:Lulj;

    nop

    iput-object p2, v0, Lulg;->b:Ljava/lang/Object;

    nop

    iput-object v8, v0, Lulg;->c:Ljava/lang/Object;

    nop

    nop

    iput v4, v0, Lulg;->f:I

    nop

    invoke-interface {v7, p1, v0}, Lujq;->a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    if-eq p1, v1, :cond_e

    nop

    move-object p1, v8

    nop

    :cond_b
    :goto_49
    iget-object v8, v2, Lulj;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    sget-object v9, Luli;->a:Lunv;

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v9, Lufu;->a:Z

    nop

    nop

    nop

    nop

    sget-object v9, Luli;->b:Lunv;

    nop

    nop

    nop

    nop

    nop

    if-eq v8, v9, :cond_7

    nop

    nop

    nop

    nop

    nop

    iput-object p0, v0, Lulg;->g:Lulh;

    nop

    nop

    nop

    iput-object v7, v0, Lulg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iput-object v2, v0, Lulg;->h:Lulj;

    nop

    nop

    nop

    iput-object p2, v0, Lulg;->b:Ljava/lang/Object;

    nop

    nop

    iput-object p1, v0, Lulg;->c:Ljava/lang/Object;

    nop

    nop

    nop

    iput v3, v0, Lulg;->f:I

    nop

    nop

    nop

    nop

    nop

    new-instance v8, Lufa;

    nop

    nop

    invoke-static {v0}, Lrkm;->x(Ltzy;)Ltzy;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8, v9, v6}, Lufa;-><init>(Ltzy;I)V

    invoke-virtual {v8}, Lufa;->y()V

    iget-object v9, v2, Lulj;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    sget-object v10, Luli;->a:Lunv;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v9, v10, v8}, La;->aS(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    nop

    nop

    if-nez v9, :cond_c

    nop

    nop

    nop

    nop

    sget-object v9, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8, v9}, Ltzy;->t(Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {v8}, Lufa;->i()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    sget-object v9, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    nop

    if-eq v8, v9, :cond_d

    nop

    nop

    nop

    sget-object v8, Ltyg;->a:Ltyg;

    nop

    nop

    :cond_d
    if-eq v8, v1, :cond_e

    nop

    nop

    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :cond_e
    return-object v1

    nop

    nop

    nop

    nop

    :cond_f
    move-object p2, p1

    nop

    check-cast p2, Lulk;

    nop

    nop

    nop

    nop

    iput-object p0, v0, Lulg;->g:Lulh;

    nop

    nop

    nop

    nop

    iput-object p1, v0, Lulg;->a:Ljava/lang/Object;

    nop

    nop

    iput-object v2, v0, Lulg;->h:Lulj;

    nop

    nop

    nop

    iput v6, v0, Lulg;->f:I

    nop

    throw v5

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4a
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_4b
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4c
    instance-of v0, p2, Lulg;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-direct {v0, p0, p2}, Lulg;-><init>(Lulh;Ltzy;)V

    :goto_4e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast v0, Lulg;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_50
    move-object v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic g()Lulp;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Lulj;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lulj;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic j()[Lulp;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    new-array p0, p0, [Lulj;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x2

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
.end method
