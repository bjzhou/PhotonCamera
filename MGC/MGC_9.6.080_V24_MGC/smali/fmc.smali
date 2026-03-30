.class final Lfmc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfla;
.implements Lfkz;


# instance fields
.field public final a:Lflb;

.field public final b:Lfkz;

.field public volatile c:Ljava/lang/Object;

.field public volatile d:Lfky;

.field private volatile e:I

.field private volatile f:Lfkx;

.field private volatile g:Lhdu;


# direct methods
.method public constructor <init>(Lflb;Lfkz;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfmc;->a:Lflb;

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
    iput-object p2, p0, Lfmc;->b:Lfkz;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 0

    goto/32 :goto_5

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
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lhdu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Lfjy;->cG()V

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lfmc;->g:Lhdu;

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

.method public final b(Lfjl;Ljava/lang/Exception;Lfjy;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iget-object p4, p4, Lhdu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfmc;->b:Lfkz;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-interface {p4}, Lfjy;->g()I

    move-result p4

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
    iget-object p4, p0, Lfmc;->g:Lhdu;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, p1, p2, p3, p4}, Lfkz;->b(Lfjl;Ljava/lang/Exception;Lfjy;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()Z
    .locals 10

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2}, Lflb;->e()Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_2
    iget-object v0, p0, Lfmc;->f:Lfkx;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v2, p0, Lfmc;->g:Lhdu;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v2, p0, Lfmc;->a:Lflb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    return v3

    nop

    nop

    :catchall_0
    move-exception v0

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
    return v1

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v2, p0, Lfmc;->f:Lfkx;

    nop

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

    :goto_9
    const v0, 0xd

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v2, p0, Lfmc;->g:Lhdu;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lfmc;->f:Lfkx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lfmc;->g:Lhdu;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, v2, Lhdu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_f
    iput-object v2, p0, Lfmc;->c:Ljava/lang/Object;

    nop

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lfmc;->a:Lflb;

    nop

    iget-object v4, v4, Lflb;->c:Lfid;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lfid;->b()Lhcs;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v0}, Lhcs;->a(Ljava/lang/Object;)Lfka;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lfka;->a()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    iget-object v5, p0, Lfmc;->a:Lflb;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lflb;->c:Lfid;

    nop

    nop

    nop

    invoke-virtual {v5}, Lfid;->b()Lhcs;

    move-result-object v5

    nop

    nop

    iget-object v5, v5, Lhcs;->a:Ljava/lang/Object;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v5, Lfdo;

    nop

    nop

    invoke-virtual {v5, v6}, Lfdo;->d(Ljava/lang/Class;)Lfjd;

    move-result-object v5

    nop

    nop

    nop

    if-eqz v5, :cond_a

    nop

    nop

    nop

    nop

    new-instance v6, Lhdu;

    nop

    nop

    iget-object v7, p0, Lfmc;->a:Lflb;

    nop

    nop

    nop

    iget-object v7, v7, Lflb;->h:Lfjp;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6, v5, v4, v7}, Lhdu;-><init>(Lfjd;Ljava/lang/Object;Lfjp;)V

    new-instance v4, Lfky;

    nop

    iget-object v5, p0, Lfmc;->g:Lhdu;

    nop

    nop

    nop

    iget-object v5, v5, Lhdu;->c:Ljava/lang/Object;

    nop

    nop

    iget-object v7, p0, Lfmc;->a:Lflb;

    nop

    nop

    nop

    nop

    iget-object v8, v7, Lflb;->m:Lfjl;

    nop

    invoke-direct {v4, v5, v8}, Lfky;-><init>(Lfjl;Lfjl;)V

    invoke-virtual {v7}, Lflb;->c()Lfmu;

    move-result-object v5

    nop

    invoke-interface {v5, v4, v6}, Lfmu;->b(Lfjl;Lhdu;)V

    invoke-interface {v5, v4}, Lfmu;->a(Lfjl;)Ljava/io/File;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_4

    nop

    nop

    nop

    nop

    iput-object v4, p0, Lfmc;->d:Lfky;

    nop

    nop

    new-instance v0, Lfkx;

    nop

    nop

    iget-object v4, p0, Lfmc;->g:Lhdu;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lhdu;->c:Ljava/lang/Object;

    nop

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    nop

    nop

    nop

    iget-object v5, p0, Lfmc;->a:Lflb;

    nop

    nop

    invoke-direct {v0, v4, v5, p0}, Lfkx;-><init>(Ljava/util/List;Lflb;Lfkz;)V

    iput-object v0, p0, Lfmc;->f:Lfkx;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lfmc;->g:Lhdu;

    nop

    iget-object v0, v0, Lhdu;->b:Ljava/lang/Object;

    nop

    invoke-interface {v0}, Lfjy;->d()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lt v0, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, v0, Lflb;->o:Lfli;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v1, v2, v4}, Lfjy;->f(Lfie;Lfjx;)V

    goto/32 :goto_17

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_14
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return v3

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move v1, v3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lfmc;->a:Lflb;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_2
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lfmc;->g:Lhdu;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v0, p0, Lfmc;->g:Lhdu;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    :goto_1f
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_3
    :goto_20
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_21
    move v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_22
    iget-object v0, p0, Lfmc;->a:Lflb;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v2, p0, Lfmc;->g:Lhdu;

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_25
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

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

    :goto_26
    iget v2, p0, Lfmc;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_27
    iget-object v1, v1, Lhdu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_3
    iget-object v4, p0, Lfmc;->b:Lfkz;

    nop

    nop

    nop

    iget-object v5, p0, Lfmc;->g:Lhdu;

    nop

    iget-object v5, v5, Lhdu;->c:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v0}, Lfka;->a()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lfmc;->g:Lhdu;

    nop

    nop

    nop

    nop

    iget-object v7, v0, Lhdu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v0, p0, Lfmc;->g:Lhdu;

    nop

    nop

    nop

    iget-object v0, v0, Lhdu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lfjy;->g()I

    move-result v8

    nop

    nop

    iget-object v0, p0, Lfmc;->g:Lhdu;

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v0, Lhdu;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface/range {v4 .. v9}, Lfkz;->d(Lfjl;Ljava/lang/Object;Lfjy;ILfjl;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Lfmc;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2a
    check-cast v0, Lhdu;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput v4, p0, Lfmc;->e:I

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eqz v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_5
    :try_start_4
    iget-object v4, p0, Lfmc;->g:Lhdu;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lhdu;->b:Ljava/lang/Object;

    nop

    invoke-interface {v4}, Lfjy;->d()V

    :goto_2d
    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_2e
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_15

    nop

    nop

    :goto_31
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_36

    nop

    :goto_32
    invoke-virtual {v0, v2}, Lfli;->c(I)Z

    move-result v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Lfkx;->c()Z

    move-result v0

    nop

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

    :goto_34
    const v1, 0x1b

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

    :goto_35
    if-nez v0, :cond_7

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_29

    nop

    nop

    :goto_36
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, v2}, Lflb;->g(Ljava/lang/Class;)Z

    move-result v0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Lfmc;->g:Lhdu;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_3a
    invoke-interface {v2}, Lfjy;->a()Ljava/lang/Class;

    move-result-object v2

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3b
    new-instance v4, Lfmb;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int/lit8 v4, v2, 0x1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3d
    move v4, v1

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_2c

    nop

    nop

    :goto_3f
    const/4 v3, 0x1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_40
    iget v0, p0, Lfmc;->e:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_41
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v0, p0, Lfmc;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_44
    iget-object v2, p0, Lfmc;->a:Lflb;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_45
    if-eqz v1, :cond_9

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_9
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_46
    invoke-interface {v2}, Lfjy;->g()I

    move-result v2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0}, Lflb;->e()Ljava/util/List;

    move-result-object v0

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

    :goto_48
    goto :goto_3e

    nop

    :cond_a
    :try_start_5
    new-instance v0, Lfij;

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    nop

    nop

    nop

    invoke-direct {v0, v4}, Lfij;-><init>(Ljava/lang/Class;)V

    throw v0

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_49
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_b

    nop

    nop

    :goto_4a
    invoke-direct {v4, p0, v0}, Lfmb;-><init>(Lfmc;Lhdu;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4b
    iget-object v2, v2, Lhdu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_4c
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v2, v2, Lflb;->n:Lfie;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_4e
    iget-object v0, p0, Lfmc;->a:Lflb;

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

    nop
.end method

.method public final d(Lfjl;Ljava/lang/Object;Lfjy;ILfjl;)V
    .locals 6

    goto/32 :goto_10

    nop

    nop

    :goto_0
    iget-object v0, p0, Lfmc;->b:Lfkz;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    move-object v3, p3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    invoke-interface {p4}, Lfjy;->g()I

    move-result v4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface/range {v0 .. v5}, Lfkz;->d(Lfjl;Ljava/lang/Object;Lfjy;ILfjl;)V

    goto/32 :goto_6

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    :goto_c
    iget-object p4, p4, Lhdu;->b:Ljava/lang/Object;

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

    :goto_d
    const v1, 0x1c

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

    nop

    :goto_e
    move-object v2, p2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    move-object v5, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p4, p0, Lfmc;->g:Lhdu;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method final e(Lhdu;)Z
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lfmc;->g:Lhdu;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    if-eq p0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

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
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
