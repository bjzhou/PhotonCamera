.class public final Loqr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loqz;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field private final c:Ljava/util/concurrent/Executor;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Loqr;->d:I

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

    :goto_1
    new-instance p3, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Loqr;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Loqr;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    iput-object p2, p0, Loqr;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Loqo;Lorb;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p4, p0, Loqr;->d:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object p2, p0, Loqr;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iput-object p1, p0, Loqr;->c:Ljava/util/concurrent/Executor;

    nop

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

    nop

    :goto_5
    iput-object p3, p0, Loqr;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final c(Loqy;)V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v3, 0xf

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_1
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1, p0, p1, v3, v2}, Locn;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[C)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Loqy;->f()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_4
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v0, p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_2c

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter v0

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_a
    check-cast p1, Lorb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_b
    new-instance v0, Lodu;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p1, :cond_2

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Loqy;->f()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    const v0, 0x18

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    const/4 v2, 0x0

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

    nop

    :goto_13
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v0, Lorb;

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

    nop

    :goto_15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v1, Locn;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1a
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    throw p0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p0, Loqr;->c:Ljava/util/concurrent/Executor;

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

    nop

    :goto_1e
    monitor-enter v0

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
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_20

    nop

    nop

    :goto_1f
    invoke-direct {v1, p0, p1, v3, v2}, Locn;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[C)V

    goto/32 :goto_50

    nop

    nop

    :goto_20
    iget-object v0, p0, Loqr;->c:Ljava/util/concurrent/Executor;

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

    nop

    :goto_21
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/16 v1, 0xc

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Loqr;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/16 v3, 0x10

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    monitor-exit v0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_2a

    nop

    nop

    :goto_28
    iget-object v0, p0, Loqr;->c:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Loqr;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    throw p0

    nop

    :goto_2b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    :try_start_4
    monitor-exit p1

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v0, p0, v1}, Lodu;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2e
    throw p0

    nop

    :goto_2f
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p1, p0, Loqr;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_3a

    nop

    nop

    :goto_32
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_33
    if-eqz v0, :cond_6

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

    :cond_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Loqr;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v1, 0x7

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_5
    monitor-exit v0

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/32 :goto_3c

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_6
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/32 :goto_1b

    nop

    nop

    :goto_38
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-void

    nop

    nop

    :goto_3a
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance v1, Locn;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v0, p0, Loqr;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v0, Locn;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_7
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_3f
    monitor-enter p1

    nop

    nop

    nop

    nop

    :try_start_7
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-lez v0, :cond_8

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_31

    nop

    :goto_41
    iget-boolean p1, p1, Lorb;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_43
    iget-boolean v0, v0, Lorb;->c:Z

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_44
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_48

    nop

    nop

    :goto_47
    iget v0, p0, Loqr;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_48
    return-void

    nop

    :goto_49
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/16 v3, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    new-instance v1, Locn;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {v0, p0, p1, v1, v2}, Locn;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[C)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object p0, p0, Loqr;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-direct {v1, p0, p1, v3, v2}, Locn;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[C)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_f

    nop

    nop

    nop
.end method
