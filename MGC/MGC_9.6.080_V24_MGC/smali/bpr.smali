.class public final Lbpr;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lbpv;

.field final synthetic d:Lubp;

.field final synthetic e:Lbns;

.field private synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lbpv;Lubp;Lbns;Ltzy;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lbpr;->d:Lubp;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lbpr;->c:Lbpv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lbpr;->e:Lbns;

    nop

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

    :goto_3
    invoke-direct {p0, p1, p4}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_3

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
    check-cast p0, Lbpr;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    sget-object p1, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    check-cast p1, Lufs;

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

    :goto_4
    check-cast p2, Ltzy;

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

    nop

    :goto_5
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lbpr;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object p1, v6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lbpr;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v2, Lbpq;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Lbxp;->a()V

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    :goto_a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    :cond_0
    :try_start_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    const-string p1, "Recomposer already running"

    nop

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    nop

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    const-string p1, "Recomposer shut down"

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    :cond_2
    throw v3

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Lbpr;->c:Lbpv;

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

    :goto_d
    iget-object v0, p0, Lbpr;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lbpv;->m:Lbph;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v2, v0, Lbpv;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v4, v3}, Lbtq;->b(Ljava/lang/Object;)Lbtq;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0}, Lbpf;->a(Lbph;)V

    goto/32 :goto_5

    nop

    nop

    :goto_12
    iget-object p0, p0, Lbpr;->c:Lbpv;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v5, v4, v3}, Lulh;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v2}, Lbxs;->f(Lubo;)Lbxp;

    move-result-object p1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_15
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_16
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

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

    :goto_17
    monitor-exit v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v2, p1, Lbpv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_1a
    return-object v0

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit v3

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :catchall_3
    move-exception v0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1b
    sget-object v5, Lbpv;->n:Lulh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    if-ne v2, v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    :cond_4
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1d
    return-object p0

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Lbpr;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object v0, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_20
    invoke-interface {p1}, Lufs;->b()Luad;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p1, Lufs;

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

    :goto_23
    invoke-virtual {v4}, Lulh;->b()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v3, v2, Lbpv;->m:Lbph;

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

    :goto_25
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v4, Lbpv;->n:Lulh;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_27
    iget-object v2, p0, Lbpr;->c:Lbpv;

    nop

    :goto_28
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2a
    invoke-static {p0}, Lbpf;->a(Lbph;)V

    goto/32 :goto_31

    nop

    nop

    :goto_2b
    monitor-exit v2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_5
    :goto_2f
    :try_start_2
    iget-object v2, p0, Lbpr;->c:Lbpv;

    nop

    iget-object v3, v2, Lbpv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v3

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v2}, Lbpv;->g()Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v3

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    nop

    const/4 v4, 0x0

    nop

    nop

    :goto_30
    if-ge v4, v3, :cond_6

    nop

    nop

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lbmn;

    nop

    nop

    nop

    invoke-interface {v5}, Lbmn;->l()V

    add-int/lit8 v4, v4, 0x1

    nop

    goto :goto_30

    nop

    nop

    :cond_6
    new-instance v2, Lbpp;

    nop

    nop

    iget-object v3, p0, Lbpr;->d:Lubp;

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lbpr;->e:Lbns;

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    invoke-direct {v2, v3, v4, v5}, Lbpp;-><init>(Lubp;Lbns;Ltzy;)V

    iput-object v1, p0, Lbpr;->f:Ljava/lang/Object;

    nop

    nop

    nop

    iput-object p1, p0, Lbpr;->a:Ljava/lang/Object;

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    iput v3, p0, Lbpr;->b:I

    nop

    nop

    invoke-static {v2, p0}, Lufv;->h(Lubo;Ltzy;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_31
    throw p1

    nop

    nop

    :catchall_5
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_32
    iget-object p0, p0, Lbpr;->c:Lbpv;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_34
    monitor-exit v2

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

    :goto_35
    monitor-enter v0

    nop

    nop

    :try_start_5
    iget-object v2, p1, Lbpv;->d:Lugy;

    nop

    nop

    nop

    nop

    nop

    if-ne v2, v1, :cond_7

    nop

    invoke-static {p1}, Lbpv;->B(Lbpv;)V

    :cond_7
    invoke-virtual {p1}, Lbpv;->t()Luez;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-lez v0, :cond_8

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3

    nop

    :goto_37
    invoke-static {p1}, Lucu;->p(Luad;)Lugy;

    move-result-object v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p1, p0, Lbpr;->c:Lbpv;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_39
    invoke-direct {v2, p1}, Lbpq;-><init>(Lbpv;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    monitor-exit v2

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_3b
    sget-object v0, Luag;->a:Luag;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_3c
    move-object v6, v0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast v4, Lbtq;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p1, p0, Lbpr;->c:Lbpv;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {v0}, Lbxp;->a()V

    goto/32 :goto_4a

    nop

    nop

    :goto_41
    iget v1, p0, Lbpr;->b:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p0, p0, Lbpv;->m:Lbph;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v0, p1, Lbpv;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_44
    throw p0

    nop

    nop

    :goto_45
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_46
    monitor-enter v2

    nop

    nop

    :try_start_6
    iget-object v3, p1, Lbpv;->e:Ljava/lang/Throwable;

    nop

    nop

    if-nez v3, :cond_2

    nop

    iget-object v3, p1, Lbpv;->o:Lulh;

    nop

    invoke-virtual {v3}, Lulh;->b()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lbpi;

    nop

    nop

    nop

    sget-object v4, Lbpi;->b:Lbpi;

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Lbpi;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-lez v3, :cond_1

    nop

    nop

    nop

    nop

    iget-object v3, p1, Lbpv;->d:Lugy;

    nop

    nop

    nop

    if-nez v3, :cond_0

    nop

    nop

    iput-object v1, p1, Lbpv;->d:Lugy;

    nop

    nop

    nop

    invoke-virtual {p1}, Lbpv;->t()Luez;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-ne v4, v3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_9
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast v1, Lugy;

    nop

    nop

    nop

    nop

    :try_start_7
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_49
    monitor-enter v2

    nop

    nop

    nop

    nop

    :try_start_8
    iget-object v3, v0, Lbpv;->d:Lugy;

    nop

    nop

    if-ne v3, v1, :cond_a

    nop

    nop

    invoke-static {v0}, Lbpv;->B(Lbpv;)V

    :cond_a
    invoke-virtual {v0}, Lbpv;->t()Luez;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v0, p0, Lbpr;->c:Lbpv;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4b
    move-object v0, p1

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    monitor-exit v2

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, v0, Lbpr;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-direct {v0, v1, v2, p0, p2}, Lbpr;-><init>(Lbpv;Lubp;Lbns;Ltzy;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const v0, 0x19

    nop

    nop

    goto/32 :goto_d

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
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_7
    iget-object v2, p0, Lbpr;->d:Lubp;

    nop

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

    :goto_8
    iget-object p0, p0, Lbpr;->e:Lbns;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lbpr;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lbpr;->c:Lbpv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    const v1, 0x14

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
    return-object v0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
