.class public Ltld;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field protected volatile a:Ltlq;

.field public volatile b:Ltjj;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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

    nop

    nop
.end method


# virtual methods
.method public final a()Ltjj;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ltld;->b:Ltjj;

    nop

    nop

    nop

    goto/32 :goto_5

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

    :try_start_0
    iget-object v0, p0, Ltld;->b:Ltjj;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ltld;->b:Ltjj;

    nop

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

    return-object v0

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v0, p0, Ltld;->a:Ltlq;

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    sget-object v0, Ltjj;->b:Ltjj;

    nop

    iput-object v0, p0, Ltld;->b:Ltjj;

    nop

    nop

    nop

    nop

    goto :goto_2

    nop

    nop

    :cond_1
    iget-object v0, p0, Ltld;->a:Ltlq;

    nop

    nop

    nop

    invoke-interface {v0}, Ltlq;->f()Ltjj;

    move-result-object v0

    nop

    nop

    nop

    iput-object v0, p0, Ltld;->b:Ltjj;

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Ltld;->b:Ltjj;

    nop

    monitor-exit p0

    nop

    return-object v0

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Ltld;->b:Ltjj;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Ltlq;)Ltlq;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

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

    :goto_1
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    iput-object p1, p0, Ltld;->a:Ltlq;

    nop

    sget-object v0, Ltjj;->b:Ltjj;

    nop

    nop

    iput-object v0, p0, Ltld;->b:Ltjj;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ltky; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Ltld;->a:Ltlq;

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    goto :goto_a

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

    nop

    :goto_5
    throw p1

    nop

    :goto_6
    return-object p0

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

    :try_start_2
    monitor-exit p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Ltld;->a:Ltlq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_9

    nop

    nop

    nop

    nop

    :catch_0
    :try_start_3
    iput-object p1, p0, Ltld;->a:Ltlq;

    nop

    nop

    sget-object p1, Ltjj;->b:Ltjj;

    nop

    nop

    iput-object p1, p0, Ltld;->b:Ltjj;

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Ltld;->a:Ltlq;

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

    nop
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_2e

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    :goto_a
    invoke-virtual {p1, p0}, Ltld;->b(Ltlq;)Ltlq;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p1, Ltld;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v1}, Ltlq;->n()Ltlq;

    move-result-object p1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_25

    nop

    nop

    :goto_11
    invoke-interface {v0}, Ltlq;->n()Ltlq;

    move-result-object p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Ltld;->a()Ltjj;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    instance-of v0, p1, Ltld;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    :goto_17
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1e

    nop

    nop

    :goto_19
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1a
    return p0

    nop

    nop

    :goto_1b
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, p1}, Ltjj;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1d
    iget-object v0, p0, Ltld;->a:Ltlq;

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1e
    if-nez v0, :cond_4

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

    :cond_4
    goto/32 :goto_11

    nop

    nop

    :goto_1f
    invoke-virtual {p0, p1}, Ltld;->b(Ltlq;)Ltlq;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_20
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_21
    const v1, 0x1a

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_22
    if-nez v1, :cond_6

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eq p0, p1, :cond_7

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

    :cond_7
    goto/32 :goto_19

    nop

    nop

    :goto_24
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_28
    return p0

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v1, p1, Ltld;->a:Ltlq;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Ltld;->a()Ltjj;

    move-result-object p1

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

    :goto_2d
    return p0

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method public hashCode()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
