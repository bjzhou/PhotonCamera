.class public final Lpik;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final a:Lpia;

.field public final b:Lpcu;

.field public final c:Lpjd;

.field public final d:Lpih;

.field public final e:Lpig;

.field public final f:Landroidx/wear/ambient/AmbientDelegate;

.field public final g:Lhdn;

.field private final h:Lpjf;

.field private final i:Lpiy;

.field private final j:Lows;

.field private final k:J

.field private final l:Lphs;

.field private final m:Lsuk;

.field private n:Ljava/util/concurrent/Future;

.field private final o:Lpic;

.field private final p:Lpqm;

.field private final q:Lrnb;

.field private final r:Lrbh;

.field private final s:Lnar;


# direct methods
.method public constructor <init>(Lpih;Lpqm;Lpia;Lrnb;Lrbh;Landroidx/wear/ambient/AmbientDelegate;Lpiy;Lpjf;Lows;Lpet;Lpjd;Lhdn;Lnar;Lpic;Lpcu;Lpig;)V
    .locals 12

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x14

    nop

    goto/32 :goto_19

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
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_3
    move-object v1, p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v0}, Lpet;->b(Ljava/lang/String;)Lpci;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v10, Lphs;

    nop

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

    :goto_6
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iput-wide v10, v0, Lpik;->k:J

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_8
    move-object/from16 v10, p6

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_9
    invoke-static {v8}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v10, v0, Lpik;->o:Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_b
    iput-object v3, v0, Lpik;->j:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_c
    invoke-direct {v10, v7, v8, v6}, Lphs;-><init>(Lpig;Ljava/util/concurrent/Executor;Lpcu;)V

    goto/32 :goto_17

    nop

    nop

    :goto_d
    move-object v2, p2

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_e
    iput-object v10, v0, Lpik;->h:Lpjf;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_11
    iput-object v1, v0, Lpik;->d:Lpih;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v3, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v3, v7}, Lows;->d(Lpci;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v2, v0, Lpik;->p:Lpqm;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_16
    move-object/from16 v10, p8

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v10, v0, Lpik;->l:Lphs;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, v0, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_19
    const v1, 0xa

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1a
    iput-object v10, v0, Lpik;->g:Lhdn;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v0}, Ltlk;->f([Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1c
    check-cast v1, Lpka;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v10, p5

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1e
    move-object/from16 v5, p13

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_1f
    move-object/from16 v10, p4

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v10, v0, Lpik;->r:Lrbh;

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

    :goto_21
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3a

    nop

    :goto_22
    iget-object v1, v1, Lpka;->a:Ltlk;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_23
    invoke-virtual {p2, p1}, Lpqm;->e(Lpih;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v8, v0, Lpik;->m:Lsuk;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_25
    move-object/from16 v10, p14

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Lpih;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-object/from16 v10, p7

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move-object/from16 v1, p10

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2a
    const-string v8, "FrameServer"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object v10, v0, Lpik;->q:Lrnb;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v8, "FSEx"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2d
    move-object/from16 v10, p12

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p3}, Lpia;->d()Lpnx;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2f
    move-object/from16 v7, p16

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v8}, Lsgj;->H(Ljava/util/concurrent/ExecutorService;)Lsuk;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_32
    iput-object v10, v0, Lpik;->f:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_33
    move-object/from16 v4, p11

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_34
    iput-object v4, v0, Lpik;->c:Lpjd;

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

    nop

    :goto_35
    iget-object v1, v5, Lnar;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_36
    move-object v9, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_37
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

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

    nop

    :goto_38
    iput-object v7, v0, Lpik;->e:Lpig;

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_39
    iput-object v5, v0, Lpik;->s:Lnar;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_2

    nop

    nop

    :goto_3b
    goto/32 :goto_6

    nop

    nop

    :goto_3c
    iput-object v9, v0, Lpik;->a:Lpia;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3d
    iput-object v10, v0, Lpik;->i:Lpiy;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v3, v4}, Lows;->d(Lpci;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3f
    iput-object v6, v0, Lpik;->b:Lpcu;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {v6, v8}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object v6

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move-object/from16 v6, p15

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_42
    move-object/from16 v3, p9

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final v()Lpgc;
    .locals 10

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_1
    new-instance v9, Lphr;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    move-object v0, v9

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    return-object v9

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    move-object v6, v8

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v3, v5

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

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v4, v5

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    move-object v2, v5

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

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

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    move-object v1, v5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v8, Lphr;->b:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    sget-object v5, Lphr;->a:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    move-object v7, v8

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1d

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct/range {v0 .. v8}, Lphr;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x1b

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

    :goto_14
    goto/32 :goto_c

    nop

    nop
.end method


# virtual methods
.method public final a(Lpgo;)Lpci;
    .locals 1

    goto/32 :goto_4

    nop

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

    nop

    :goto_1
    iget-object p0, p0, Lpik;->r:Lrbh;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, v0}, Lrbh;->d(Lpgo;I)Lphw;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lpik;->t(Ljava/lang/String;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "attach(frameStream)"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final b(Lpgo;)Lpge;
    .locals 1

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
    invoke-virtual {p0, p1}, Lpiy;->a(Lpgo;)Lpge;

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

    :goto_2
    iget-object p0, p0, Lpik;->i:Lpiy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const-string v0, "submit(frameStream)"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lpik;->t(Ljava/lang/String;)Z

    goto/32 :goto_2

    nop

    nop
.end method

.method public final c(Lpgo;I)Lpgh;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpik;->r:Lrbh;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lpik;->t(Ljava/lang/String;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2}, Lrbh;->d(Lpgo;I)Lphw;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "attach(frameStream, capacity)"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop
.end method

.method public final close()V
    .locals 4

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lpik;->b:Lpcu;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lpik;->j:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lpik;->p:Lpqm;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Lpik;->d:Lpih;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    iget-object v3, v3, Lpka;->b:Ltlk;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

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

    :goto_9
    iget-object v2, v2, Lpnx;->a:Ljava/lang/String;

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Lpqm;->f(Lpih;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Lsuk;->shutdownNow()Ljava/util/List;

    goto/32 :goto_4

    nop

    nop

    :goto_11
    const v1, 0xe

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    const-string v0, "Closing "

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0, v0}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v3, Lpka;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    const-string v0, "Closed "

    nop

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

    :goto_16
    iget-object v0, p0, Lpik;->m:Lsuk;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    iget-object v3, v3, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v2}, Lpia;->d()Lpnx;

    move-result-object v2

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

    :goto_19
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x1c

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_c

    nop

    :goto_1c
    long-to-double v0, v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lpik;->b:Lpcu;

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

    :goto_1e
    invoke-virtual {v0}, Lows;->close()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v3, v0, v1, v2}, Ltlk;->g(D[Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_21
    sub-long/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_23
    iget-wide v2, p0, Lpik;->k:J

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v2, p0, Lpik;->a:Lpia;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v3, p0, Lpik;->s:Lnar;

    nop

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

    :goto_27
    invoke-interface {v1, v0}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lphh;)Lpgo;
    .locals 4

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    const-string v0, "create(stream)"

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

    :goto_2
    iget-object p0, p0, Lpik;->q:Lrnb;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    const/4 v3, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    invoke-virtual {p0, p1, v0}, Lrnb;->d(Lphh;Ljava/util/Set;)Lpgo;

    move-result-object p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lpia;->d()Lpnx;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lpik;->s:Lnar;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    :goto_b
    sget-object v0, Lsbn;->a:Lsbn;

    nop

    nop

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

    :goto_c
    iget-object v0, v0, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v0, v2, v3}, Lnar;->z(Ljava/lang/String;II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0}, Lpik;->t(Ljava/lang/String;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lpik;->a:Lpia;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_13
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Ljava/util/Set;)Lpgo;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_4
    const/4 v2, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Lpik;->t(Ljava/lang/String;)Z

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lpik;->q:Lrnb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1, v0}, Lrnb;->e(Ljava/util/Set;Ljava/util/Set;)Lpgo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lpia;->d()Lpnx;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xa

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    sget-object v0, Lsbn;->a:Lsbn;

    nop

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
    const/4 v3, 0x0

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

    :goto_f
    iget-object v0, v0, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lpik;->s:Lnar;

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

    :goto_13
    invoke-virtual {v1, v0, v2, v3}, Lnar;->z(Ljava/lang/String;II)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v0, "create(streams)"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lpik;->a:Lpia;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Lphh;Ljava/util/Set;)Lpgo;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xe

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
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    const v1, 0x20

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    iget-object v0, v0, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_5
    invoke-virtual {v1, v0, v2, v3}, Lnar;->z(Ljava/lang/String;II)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lpia;->d()Lpnx;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    :goto_e
    iget-object v1, p0, Lpik;->s:Lnar;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v0, "create(stream, parameters)"

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lpik;->a:Lpia;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lpik;->q:Lrnb;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1, p2}, Lrnb;->d(Lphh;Ljava/util/Set;)Lpgo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p2}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Lpik;->t(Ljava/lang/String;)Z

    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method public final g(Ljava/util/Set;Ljava/util/Set;)Lpgo;
    .locals 4

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_6

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

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, p2}, Lrnb;->e(Ljava/util/Set;Ljava/util/Set;)Lpgo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_1a

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lpik;->a:Lpia;

    nop

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

    :goto_c
    invoke-static {p2}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object p2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    :goto_11
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v0, "create(streams, parameters)"

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lpik;->q:Lrnb;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v0, v2, v3}, Lnar;->z(Ljava/lang/String;II)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_17
    invoke-virtual {v0}, Lpia;->d()Lpnx;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, v0, Lpnx;->a:Ljava/lang/String;

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

    nop

    :goto_19
    const/4 v3, 0x0

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lpik;->s:Lnar;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v0}, Lpik;->t(Ljava/lang/String;)Z

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x19

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

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

    :goto_1f
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(Lphh;)V
    .locals 1

    goto/32 :goto_2

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
    invoke-virtual {p0, p1, v0}, Lpik;->i(Lphh;Z)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final i(Lphh;Z)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p2, p0, Lpik;->o:Lpic;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lpmk;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

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

    :goto_6
    const v0, 0x20

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    :goto_9
    check-cast p1, Lpmg;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p1

    nop

    nop

    nop

    :try_start_0
    iget-boolean p2, p1, Lpmg;->i:Z

    nop

    nop

    nop

    nop

    if-nez p2, :cond_1

    nop

    nop

    iget-object p2, p1, Lpmg;->e:Lpcu;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p1, Lpmg;->a:Lpsb;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Draining free buffers for "

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {p2, v0}, Lpcu;->f(Ljava/lang/String;)V

    iget-object p2, p1, Lpmg;->a:Lpsb;

    nop

    invoke-interface {p2}, Lpsb;->h()V

    :cond_1
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_19

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

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

    :goto_b
    iget-object p0, p0, Lpik;->b:Lpcu;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p1, Lpma;->a:Lpmk;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    :goto_f
    check-cast p1, Lpma;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2, p1}, Lpic;->e(Lphh;)V

    :goto_11
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_12
    if-nez p2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "Draining "

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

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_15
    throw p0

    nop

    nop

    :goto_16
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    nop

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

    :goto_18
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p0, p2}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    instance-of p2, p1, Lpma;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j(Landroid/util/Printer;)V
    .locals 18

    goto/32 :goto_b0

    nop

    nop

    :goto_0
    const-string v6, " (Logical)"

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v2, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v7}, Lpmm;->i()Lphm;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v2, v3}, Lrze;-><init>(Ljava/util/Comparator;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v2, v0, Lpik;->r:Lrbh;

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e3

    nop

    nop

    :goto_7
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_8
    long-to-double v3, v3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_9
    invoke-interface {v5}, Lphh;->d()Lpnx;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_b
    const-string v10, "SURFACE_DEFERRED"

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_c
    if-nez v10, :cond_0

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    :cond_0
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v3, v5}, Lvl;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v4}, Lpia;->c()Lpnu;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    :goto_f
    goto/16 :goto_120

    nop

    :goto_10
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_63

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_13
    const-string v6, ")"

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_14
    const-string v10, "SURFACE_VIEW"

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_15
    check-cast v7, Lpmm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v4}, Lphw;->s()Lpip;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Lrze;->l()Lrzg;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1b
    const-string v5, " (MiB)"

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_1c
    if-eq v5, v6, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    :cond_1
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v10, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move-object v13, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v6, v9}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

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

    :goto_21
    invoke-virtual {v4}, Lpia;->c()Lpnu;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v2, "Attached camera ids: "

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_24
    goto :goto_2b

    nop

    :goto_25
    goto/32 :goto_fd

    nop

    nop

    :goto_26
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-wide v9, v9, Lppt;->b:J

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v6, :cond_2

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_41

    nop

    nop

    :goto_2a
    const-string v10, "IMAGE_READER"

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v5, "-"

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-wide/high16 v16, 0x4130000000000000L    # 1048576.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_2f
    iget-object v4, v0, Lpik;->a:Lpia;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_30
    if-ne v10, v3, :cond_3

    nop

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

    :cond_3
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v3}, Lryy;->em()Lscp;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-ne v10, v11, :cond_4

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v2, v6, v5}, Lpia;->e(Landroid/util/Printer;Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_35
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-ne v10, v11, :cond_5

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v10}, Lphm;->ordinal()I

    move-result v10

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v6, v6, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v2, v7, v5}, Lpia;->e(Landroid/util/Printer;Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_86

    nop

    nop

    :goto_3e
    invoke-direct {v4, v5}, Lvl;-><init>(I)V

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v7, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_7
    goto/32 :goto_60

    nop

    nop

    :goto_40
    filled-new-array/range {v7 .. v14}, [Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v4}, Lpia;->c()Lpnu;

    move-result-object v6

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v6, v4, Lpia;->b:Lpgn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const-string v8, "s %s"

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-nez v6, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3c

    nop

    nop

    :goto_46
    new-instance v4, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_47
    invoke-interface {v1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/32 :goto_d9

    nop

    nop

    :goto_48
    const-string v5, ")"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_49
    move v6, v5

    nop

    :goto_4a
    goto/32 :goto_a3

    nop

    nop

    :goto_4b
    sget-object v8, Landroidx/wear/widget/xrA/fuyPMnCeXU;->Yamj:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_4c
    iget-object v6, v6, Lpgn;->a:Lpnx;

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_4d
    invoke-virtual {v7}, Lpmm;->b()Lpck;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    :goto_4e
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v5, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    :cond_9
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move-object v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const-string v8, ")"

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v5, v5, Lhdn;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    :goto_53
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_54
    goto/16 :goto_2b

    nop

    :goto_55
    goto/32 :goto_2a

    nop

    nop

    :goto_56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_58
    check-cast v6, Lpma;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_59
    goto/16 :goto_90

    nop

    nop

    :goto_5a
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    new-instance v3, Lrze;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const-string v6, "inf"

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v6, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_61
    move-object/from16 v1, p1

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const-string v6, ""

    nop

    :goto_63
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    new-instance v8, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v3}, Lryy;->size()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_67
    invoke-static {v2, v6, v5}, Lpia;->e(Landroid/util/Printer;Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_68
    invoke-static {v6, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    new-instance v3, Lvl;

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

    :goto_6b
    invoke-interface {v1, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    move-object v4, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_6e
    const-string v2, "Attached streams: "

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_70
    monitor-enter v2

    nop

    :try_start_0
    iget-object v0, v2, Lrbh;->c:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-static {v0}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object v0

    nop

    monitor-exit v2

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_101

    nop

    nop

    :goto_71
    iget v9, v9, Lpck;->b:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_92

    nop

    nop

    :goto_73
    goto/16 :goto_57

    nop

    nop

    :goto_74
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_75
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_76
    const-string v9, " (Camera-"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v3, v3, Lpia;->b:Lpgn;

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    if-ne v10, v11, :cond_b

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_105

    nop

    nop

    :goto_79
    const-wide/16 v10, -0x1

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    move-object v7, v6

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    if-nez v6, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_7c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_7d
    iget-object v5, v4, Lpia;->a:Lpih;

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_7e
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v5}, Lppv;->f()Loyd;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_80
    if-lez v6, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_2c

    nop

    nop

    :goto_81
    const-string v10, "UNKNOWN"

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_82
    goto/16 :goto_5e

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_5d

    nop

    nop

    :goto_84
    div-double v3, v3, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_85
    int-to-long v8, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_86
    iget-object v5, v4, Lpia;->b:Lpgn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_88
    new-instance v2, Lpib;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_89
    const-string v6, "Memory"

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v7}, Lpmm;->l()J

    move-result-wide v8

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v2, v6}, Lrze;->m(Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iget-wide v6, v5, Lppt;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_8f
    const-string v6, ""

    nop

    :goto_90
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const/4 v3, 0x1

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_93
    cmp-long v6, v6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    sget-object v7, Landroidx/wear/widget/xrA/fuyPMnCeXU;->ccuQ:Ljava/lang/String;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_95
    if-lez v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    :cond_e
    goto/32 :goto_9c

    nop

    :goto_96
    throw v0

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-interface {v1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_9b
    check-cast v7, Lpha;

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_97

    nop

    nop

    :goto_9d
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-static {v6, v7, v8}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_a1
    const-string v5, " (Camera "

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v3}, Lryy;->isEmpty()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_a4
    check-cast v5, Lphh;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_a5
    iget-object v5, v5, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_a6
    invoke-interface {v2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_a7
    iget-object v6, v7, Lpmm;->f:Lpnx;

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_a8
    invoke-interface {v5}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    :goto_a9
    new-instance v6, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_102

    nop

    nop

    :goto_ab
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_ac
    iget-object v9, v4, Lpia;->c:Lppv;

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

    :goto_ad
    invoke-interface {v6}, Lpnu;->N()Z

    move-result v6

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_ae
    const-wide/32 v7, 0x100000

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_af
    const-string v4, "Session Parameters: "

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    const v0, 0xa

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_b1
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_b2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_b4
    move-object v15, v4

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_b5
    move-object v3, v4

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    move-object/from16 v0, p0

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v3}, Lryh;->t()Lryy;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_b9
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    const/4 v11, 0x3

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    goto/16 :goto_10b

    nop

    nop

    nop

    nop

    :goto_bc
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_bd
    goto/16 :goto_2b

    nop

    nop

    nop

    :goto_be
    goto/32 :goto_110

    nop

    nop

    :goto_bf
    goto/16 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    goto/32 :goto_da

    nop

    nop

    nop

    :goto_c1
    sget-object v6, Lpgz;->a:Lpgz;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_c2
    const-string v5, "Streams: "

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :goto_c3
    invoke-static {v9}, Lpuq;->ba(I)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c4
    if-eqz v4, :cond_f

    nop

    nop

    goto/32 :goto_bc

    nop

    :cond_f
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {v7}, Lpmm;->a()I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_c6
    goto/16 :goto_114

    nop

    nop

    nop

    :goto_c7
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    check-cast v4, Lphw;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-virtual {v7}, Lpmm;->b()Lpck;

    move-result-object v9

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    iget-object v3, v3, Lpgn;->h:Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d0

    nop

    nop

    :goto_ce
    div-long/2addr v5, v7

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_cf
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    new-instance v4, Lvl;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v7}, Lpmm;->g()J

    move-result-wide v3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6f

    nop

    nop

    :goto_d6
    iget-object v6, v6, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    iget-object v7, v7, Lpha;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v3}, Lrze;->l()Lrzg;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    const-string v6, " (Physical)"

    nop

    :goto_db
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_dc
    goto/32 :goto_9d

    nop

    :goto_dd
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    :goto_de
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    iget-object v5, v4, Lpia;->c:Lppv;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_e0
    move-object v12, v6

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_e2
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_e3
    invoke-virtual {v4}, Lryd;->b()Lryh;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_e4
    iget v6, v6, Lpma;->d:I

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    const-string v5, "Normal"

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_e6
    invoke-static {v4}, Lryh;->j(I)Lryd;

    move-result-object v4

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

    :goto_e7
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_e8
    if-lt v8, v7, :cond_10

    nop

    goto/32 :goto_bc

    nop

    :cond_10
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_e9
    const-string v6, "Mode"

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_ea
    move-object v14, v6

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_eb
    iget-object v4, v4, Lpip;->c:Lryy;

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    :goto_ec
    goto/16 :goto_2b

    nop

    nop

    nop

    :goto_ed
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    const-wide/16 v8, 0x0

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_ef
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-interface {v1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-interface {v6}, Lpnu;->E()Z

    move-result v6

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_f2
    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    invoke-virtual {v7}, Lpha;->a()Ljava/lang/String;

    move-result-object v8

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    cmp-long v6, v8, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_f5
    invoke-direct {v3, v4}, Lrze;-><init>(Ljava/util/Comparator;)V

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    invoke-virtual {v7}, Lpmm;->l()J

    move-result-wide v8

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_f8
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-interface {v5}, Lpnu;->l()Lpog;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_fb
    const v1, 0x8

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    const-string v10, "SURFACE_TEXTURE"

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    invoke-virtual {v3, v5}, Lrze;->m(Ljava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_100
    if-nez v6, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_101
    new-instance v2, Lrze;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_102
    const-string v5, " / "

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_103
    const/4 v11, 0x2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_104
    const-string v10, " (Usecase "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_105
    const/4 v11, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_106
    invoke-virtual {v0}, Lryy;->em()Lscp;

    move-result-object v0

    nop

    nop

    :goto_107
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_108
    invoke-virtual {v4, v8, v7}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_109
    check-cast v5, Ljava/lang/Long;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    const/4 v8, 0x0

    nop

    nop

    nop

    :goto_10b
    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_10c
    invoke-direct {v2, v1, v3}, Lpib;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_10d
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_10e
    iget-object v5, v4, Lpia;->d:Lhdn;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_10f
    instance-of v6, v7, Lpma;

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    :goto_110
    const-string v10, "SURFACE"

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_111
    const/16 v5, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_112
    const-string v7, "Facing"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_113
    invoke-virtual {v5}, Lryy;->em()Lscp;

    move-result-object v5

    nop

    nop

    nop

    nop

    :goto_114
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_115
    invoke-interface {v1, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_116
    check-cast v5, Lryy;

    nop

    goto/32 :goto_113

    nop

    nop

    :goto_117
    const-string v5, "HighSpeed"

    nop

    nop

    nop

    :goto_118
    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_119
    if-nez v6, :cond_12

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    iget-boolean v6, v7, Lpmm;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_11b
    iget-object v5, v5, Lpgn;->b:Lpgz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_11c
    check-cast v9, Ljava/lang/String;

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

    :goto_11d
    div-long/2addr v9, v7

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    const-string v4, "%-10s %10s %-15s %-15s %6.2f MiB/image %4s images/stream%s%s"

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    invoke-virtual {v4}, Lryy;->em()Lscp;

    move-result-object v4

    nop

    nop

    nop

    :goto_120
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_121
    iget v8, v8, Lpck;->a:I

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_122
    goto :goto_118

    nop

    nop

    nop

    :goto_123
    goto/32 :goto_117

    nop

    nop

    nop
.end method

.method public final k()V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lpik;->b:Lpcu;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x17

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

    :goto_3
    invoke-virtual {p0, v0}, Lpik;->t(Ljava/lang/String;)Z

    move-result v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_6
    invoke-virtual {p0}, Lpjf;->a()V

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0, v1}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v2, "Resuming "

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    iget-object p0, p0, Lpik;->h:Lpjf;

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    iget-object v0, p0, Lpik;->p:Lpqm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lpik;->d:Lpih;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Lpqm;->d(Lpih;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v0, "resume"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l(Lpha;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/wear/ambient/AmbientDelegate;->N(Lpha;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpik;->f:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lpha;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

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

    :goto_2
    invoke-virtual {v0, p1}, Lrnb;->c(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

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

    nop

    nop

    :goto_4
    invoke-direct {v0, p1, p2}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Landroidx/wear/ambient/AmbientDelegate;->N(Lpha;)V

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    check-cast v0, Lrnb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    iget-object p0, p0, Lpik;->f:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final n(Ljava/util/Set;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/wear/ambient/AmbientDelegate;->O(Ljava/util/Set;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpik;->f:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final o(Lphf;)V
    .locals 4

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    :goto_4
    const-string v0, "trigger3A"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

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

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_7
    iget-object p0, p0, Lpik;->b:Lpcu;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    iget-object v0, p0, Lpik;->n:Ljava/util/concurrent/Future;

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

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_b
    const-string v0, "Failed to submit trigger3A task. "

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    iget-object v0, p0, Lpik;->m:Lsuk;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lpho;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    invoke-direct {v1, p0, p1, v2, v3}, Lpho;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    invoke-interface {v0, v1}, Lsuk;->a(Ljava/lang/Runnable;)Lsui;

    move-result-object p1

    nop

    nop

    iput-object p1, p0, Lpik;->n:Ljava/util/concurrent/Future;

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_12

    nop

    nop

    :goto_10
    invoke-interface {p0, p1}, Lpcu;->h(Ljava/lang/String;)V

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :catch_0
    move-exception p1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_15
    if-nez v0, :cond_2

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

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

    :goto_17
    invoke-virtual {p0, v0}, Lpik;->t(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_18
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop
.end method

.method public final p(Lpgd;Lphf;)V
    .locals 8

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lpik;->t(Ljava/lang/String;)Z

    move-result v0

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

    :goto_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x7

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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    invoke-interface {p0, p1}, Lpcu;->h(Ljava/lang/String;)V

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    :try_start_0
    iget-object v0, p0, Lpik;->m:Lsuk;

    nop

    nop

    new-instance v7, Lmcf;

    nop

    const/16 v5, 0xf

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    move-object v1, v7

    nop

    nop

    move-object v2, p0

    nop

    nop

    nop

    move-object v3, p1

    nop

    nop

    nop

    nop

    nop

    move-object v4, p2

    nop

    invoke-direct/range {v1 .. v6}, Lmcf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[C)V

    invoke-interface {v0, v7}, Lsuk;->a(Ljava/lang/Runnable;)Lsui;

    move-result-object p1

    nop

    nop

    iput-object p1, p0, Lpik;->n:Ljava/util/concurrent/Future;

    nop
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    const v1, 0x20

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

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string p2, "Failed to submit trigger3A task. "

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v0, "trigger3A"

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

    :goto_12
    iget-object p0, p0, Lpik;->b:Lpcu;

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

    :goto_13
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_16
    iget-object v0, p0, Lpik;->n:Ljava/util/concurrent/Future;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method public final q(ZZZ)V
    .locals 8

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_15

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lpik;->t(Ljava/lang/String;)Z

    move-result v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    :try_start_0
    iget-object v0, p0, Lpik;->m:Lsuk;

    nop

    new-instance v7, Lmod;

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x3

    nop

    nop

    nop

    nop

    nop

    move-object v1, v7

    nop

    move-object v2, p0

    nop

    nop

    nop

    move v3, p1

    nop

    nop

    nop

    move v4, p2

    nop

    nop

    move v5, p3

    nop

    nop

    invoke-direct/range {v1 .. v6}, Lmod;-><init>(Ljava/lang/Object;ZZZI)V

    invoke-interface {v0, v7}, Lsuk;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_c
    iget-object p0, p0, Lpik;->b:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :catch_0
    move-exception p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0, p1}, Lpcu;->h(Ljava/lang/String;)V

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    const-string v0, "unlock3A"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lpik;->n:Ljava/util/concurrent/Future;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    const-string p2, "Failed to submit unlock3A task. "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

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

    :goto_19
    const v1, 0x19

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final r(Lpgd;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lpik;->t(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, v0}, Lphs;->a(Lpgd;Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "update3A"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

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

    :goto_7
    iget-object p0, p0, Lpik;->l:Lphs;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop
.end method

.method public final s(Lpgd;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpik;->l:Lphs;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lpik;->t(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const-string v0, "update3A"

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1, v0}, Lphs;->a(Lpgd;Z)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    return-void

    nop
.end method

.method public final t(Ljava/lang/String;)Z
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    :goto_3
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

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

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    const-string v2, "Attempted to invoke "

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_9
    const/4 p0, 0x0

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

    :goto_a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string p0, " after close()"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    invoke-interface {v0, p0}, Lpcu;->h(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lpik;->b:Lpcu;

    nop

    goto/32 :goto_0

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
    const/4 p0, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    return p0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string p1, " on "

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xb

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lpik;->j:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x1f

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Lows;->b()Z

    move-result v0

    nop

    goto/32 :goto_1c

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpik;->d:Lpih;

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
    invoke-virtual {p0}, Lpih;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final u()Lpin;
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lpik;->c:Lpjd;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v2, " is closed"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lpjd;->a()Lpjb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Lpfi;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Lhdn;->N(Lpjb;)Lpin;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw v0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0}, Lpik;->t(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    const-string v0, "acquireExclusiveSession"

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

    :goto_d
    invoke-static {p0, v1, v2}, La;->bk(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lpik;->g:Lhdn;

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

    nop

    :goto_11
    const-string v1, "Unable to acquire session. "

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_13
    new-instance v0, Lpfi;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_15

    nop
.end method

.method public final w()V
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    if-eqz v0, :cond_1

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

    :cond_1
    :try_start_0
    iget-object v0, p0, Lpik;->m:Lsuk;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lpam;

    nop

    nop

    const/16 v2, 0x12

    nop

    invoke-direct {v1, p0, v2}, Lpam;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Lsuk;->a(Ljava/lang/Runnable;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lpik;->n:Ljava/util/concurrent/Future;

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const-string v0, "trigger3A"

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

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

    :goto_7
    goto/32 :goto_16

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Lpik;->t(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0, v0}, Lpcu;->h(Ljava/lang/String;)V

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

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

    :goto_10
    return-void

    nop

    :catch_0
    move-exception v0

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

    :goto_11
    iget-object p0, p0, Lpik;->b:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_13
    goto/32 :goto_4

    nop

    nop

    :goto_14
    const-string v1, "Failed to submit trigger3A task. "

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x6

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0xc

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_18
    iget-object v0, p0, Lpik;->n:Ljava/util/concurrent/Future;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
