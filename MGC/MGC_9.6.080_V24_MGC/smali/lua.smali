.class public final Llua;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Loxv;

.field public c:Z

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Lhrb;

.field public h:I

.field private final i:Loxv;


# direct methods
.method public constructor <init>(Lhoh;Lggp;Lhrb;Ljava/util/concurrent/Executor;Lpdf;)V
    .locals 7

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-virtual {p1, v4}, Lhoh;->p(Lhmn;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v3, p0, Llua;->i:Loxv;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4
    aput-object p3, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_5
    new-instance p3, Lltz;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    const v1, 0xf

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_7
    iput-object v1, p0, Llua;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_8
    int-to-float v4, p1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_0
    goto/32 :goto_31

    nop

    :goto_a
    iget-object p1, p2, Lggp;->b:Lows;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_b
    iput-object p3, p0, Llua;->g:Lhrb;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_c
    if-ne v0, v4, :cond_1

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

    :cond_1
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-boolean v2, p0, Llua;->c:Z

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move v4, v5

    nop

    nop

    :goto_f
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v3, v4}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    invoke-direct {p3, v1, p1}, Lltz;-><init>(Loyd;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    invoke-direct {p2, p0, p3}, Lkxx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sub-int/2addr p1, v4

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, p2}, Lows;->d(Lpci;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, p3}, Lows;->d(Lpci;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_17
    float-to-int v6, v6

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_18
    const/16 p3, 0x14

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_19
    invoke-static {v1}, Loyi;->a([Loyd;)Loyd;

    move-result-object p3

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p2, Lggp;->b:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_1c
    const v6, 0x3ecccccd    # 0.4f

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Lliy;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_20
    invoke-direct {v1, v3}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_22
    float-to-int v6, v6

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_24
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_25
    iput v0, p0, Llua;->h:I

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_26
    new-array v1, v5, [Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_27
    invoke-direct {v0, p0, p5, v1}, Lliy;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_28
    mul-float/2addr v6, v4

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_29
    mul-float/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v6, 0x3e4ccccd    # 0.2f

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p3, v0, p4}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    float-to-int v4, v4

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object v1, p0, Llua;->b:Loxv;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v4, Lhmu;->ao:Lhmn;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v2, 0x0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    new-instance v1, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_35
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput v4, p0, Llua;->f:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const v6, 0x3f4ccccd    # 0.8f

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const v0, 0x11

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3a
    invoke-virtual {p1, v6}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3c
    new-instance v3, Loxv;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3d
    new-instance p2, Lkxx;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3e
    mul-float/2addr v6, v4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    new-instance v1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_41
    aput-object v3, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_44
    const/4 v5, 0x2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iput v6, p0, Llua;->e:I

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v1, 0x6

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    sget-object v6, Lhne;->b:Lhmo;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_48
    move v4, v0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_49
    iput v6, p0, Llua;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Z)V
    .locals 1

    goto/32 :goto_0

    nop

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    :try_start_0
    iput-boolean v0, p0, Llua;->c:Z

    nop

    iget-object v0, p0, Llua;->i:Loxv;

    nop

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    invoke-virtual {v0, p1}, Loxv;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

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

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

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

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iput-boolean v0, p0, Llua;->c:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Llua;->b:Loxv;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Loxv;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

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

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

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

    goto/32 :goto_3

    nop

    nop
.end method

.method public final declared-synchronized c()I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    :try_start_1
    iget v0, p0, Llua;->h:I

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d(II)V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    const v1, 0x19

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    const v0, 0x18

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Llua;->a:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_1

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Llud;

    nop

    nop

    nop

    nop

    iget-object v2, p0, Llua;->g:Lhrb;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lhrb;->a()I

    move-result v2

    nop

    invoke-interface {v1, p1, v2, p2}, Llud;->e(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
