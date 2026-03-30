.class public Lgbi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final F:Lryy;

.field private static final G:Lryy;

.field public static final a:Lsdb;

.field public static final b:Lryy;


# instance fields
.field public final A:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final B:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final C:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final D:Llvw;

.field public final E:Liof;

.field private final H:Loyd;

.field private final I:Ljava/util/concurrent/Executor;

.field private final J:Lj$/time/Duration;

.field private volatile K:Lsxp;

.field private final L:Lfdo;

.field private final M:Lhwy;

.field public final c:I

.field public final d:Ljava/util/List;

.field public final e:Lsuk;

.field public final f:Lszn;

.field public final g:Lpci;

.field public final h:Lryh;

.field public final i:Ltbs;

.field public final j:Lpdf;

.field public final k:Lgei;

.field public final l:Loxv;

.field public final m:Lgca;

.field public final n:Llxg;

.field public volatile o:Z

.field public volatile p:Lcom/google/ar/core/Pose;

.field public q:I

.field public r:I

.field public s:Lgeq;

.field public t:Lgeq;

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Lj$/util/Optional;

.field public y:Lj$/util/Optional;

.field public z:Lsld;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    goto/32 :goto_17

    nop

    nop

    :goto_0
    invoke-static/range {v1 .. v7}, Lryy;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lryy;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Lryy;->G(Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_4
    sget-object v5, Lsld;->i:Lsld;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_6
    sput-object v0, Lgbi;->b:Lryy;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lsld;->k:Lsld;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Lryw;->g()Lryy;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Lgbi;->a:Lsdb;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_d
    sget-object v6, Lsld;->l:Lsld;

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
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_f
    invoke-virtual {v1, v0}, Lryw;->j(Ljava/lang/Iterable;)V

    goto/32 :goto_14

    nop

    nop

    :goto_10
    sget-object v0, Lsld;->g:Lsld;

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

    :goto_11
    const-string v0, "gbi"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    invoke-virtual {v1, v0}, Lryw;->h(Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    :goto_13
    invoke-direct {v1}, Lryw;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v0, Lsld;->j:Lsld;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_15
    sget-object v0, Lsld;->n:Lsld;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    sput-object v0, Lgbi;->G:Lryy;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    const v0, 0x1a

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

    :goto_18
    sget-object v1, Lsld;->m:Lsld;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1a
    sget-object v1, Lsld;->e:Lsld;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_23

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v0}, Lryw;->h(Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-array v7, v0, [Lsld;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1f
    sget-object v2, Lsld;->h:Lsld;

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

    nop

    :goto_20
    new-instance v1, Lryw;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget-object v3, Lsld;->f:Lsld;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_22
    sget-object v4, Lsld;->g:Lsld;

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

    nop

    :goto_23
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sput-object v0, Lgbi;->F:Lryy;

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

    :goto_25
    invoke-virtual {v1, v0}, Lryw;->h(Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_27
    sget-object v8, Lsld;->m:Lsld;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_28
    aput-object v8, v7, v0

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
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lsuk;Lszn;Lfdo;Lryh;Ltbs;Lpdf;Lhwy;Ltxm;Ltxm;Llvw;Loyd;Ljava/util/concurrent/Executor;Lhoh;ILpci;Lfdn;Lgca;Llxg;)V
    .locals 7

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_1
    int-to-long v5, v3

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x1

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

    :goto_3
    invoke-virtual {v3}, Lgej;->b()Lgei;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v3, Lgej;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iput-object v3, v0, Lgbi;->g:Lpci;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v3, v0, Lgbi;->I:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    move/from16 v1, p15

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object/from16 v3, p13

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v3, v0, Lgbi;->m:Lgca;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_29

    nop

    nop

    :goto_d
    iput-object v3, v0, Lgbi;->j:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_e
    move-object/from16 v3, p12

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    iput-object v3, v0, Lgbi;->H:Loyd;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_10
    move-object v0, p0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_11
    move-object v3, p7

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

    :goto_12
    iput-object v2, v0, Lgbi;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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

    :goto_14
    check-cast v3, Ljava/lang/Integer;

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

    :goto_15
    iput-object v3, v0, Lgbi;->n:Llxg;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v1, v0, Lgbi;->y:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct/range {p4 .. p10}, Lgbd;-><init>(Lgbi;Lszn;ILj$/time/Instant;Lfdn;Lhoh;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v1, v0, Lgbi;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1a
    iput-boolean v2, v0, Lgbi;->v:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1b
    move-object p4, v5

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v1, v0, Lgbi;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v3, p9

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    :goto_20
    move-object v3, p8

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput v2, v0, Lgbi;->q:I

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_25
    new-instance v2, Ljava/util/ArrayList;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_26
    move-object v3, p6

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v3, v5}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

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

    :goto_28
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_10

    nop

    nop

    :goto_2a
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_2c
    invoke-virtual {v3}, Lgch;->b()Liof;

    move-result-object v3

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_2e
    move-object/from16 v3, p10

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move-object v3, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v3, v0, Lgbi;->L:Lfdo;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_31
    new-instance v5, Lgbd;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_32
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput-object v1, v0, Lgbi;->t:Lgeq;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_34
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_35
    iput-object v1, v0, Lgbi;->s:Lgeq;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_36
    iput-object v3, v0, Lgbi;->J:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move-object/from16 v3, p16

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_38
    iput-object v3, v0, Lgbi;->i:Ltbs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {v5, v6}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3b
    move/from16 p7, p15

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_3c
    iput-object v3, v0, Lgbi;->h:Lryh;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v1, v2}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3f

    nop

    nop

    :goto_3e
    move-object/from16 v3, p11

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_3f
    iput-object v1, v0, Lgbi;->l:Loxv;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_40
    invoke-interface {p1, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_41
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_1c

    nop

    nop

    :goto_42
    iput-object v3, v0, Lgbi;->M:Lhwy;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_43
    iput-boolean v2, v0, Lgbi;->u:Z

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move-object/from16 v3, p18

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

    :goto_45
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_46
    iput-object v2, v0, Lgbi;->e:Lsuk;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput v2, v0, Lgbi;->r:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v4, v3}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v3

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_49
    move-object v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_4a
    sget-object v3, Lhlw;->g:Lhmo;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move-object p6, p3

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_4c
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_50

    nop

    nop

    :goto_4e
    iput-object v1, v0, Lgbi;->x:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_4f
    iput-object v1, v0, Lgbi;->p:Lcom/google/ar/core/Pose;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_50
    new-instance v1, Loxv;

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

    :goto_51
    move-object v2, p2

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_52
    iput-object v1, v0, Lgbi;->z:Lsld;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_53
    iput-object v3, v0, Lgbi;->D:Llvw;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_54
    const/16 v5, 0x4e20

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_55
    iput-object v3, v0, Lgbi;->k:Lgei;

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

    :goto_56
    move-object/from16 p9, p17

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_57
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    move-object v3, p4

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_59
    move-object v2, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_5a
    sget-object v1, Lsld;->a:Lsld;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_5b
    move-object p8, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_5c
    iput-object v3, v0, Lgbi;->E:Liof;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    check-cast v3, Lgch;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_5e
    move-object/from16 v3, p19

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5f
    iput v1, v0, Lgbi;->c:I

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    move-object p5, p0

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_61
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_62
    iput-object v2, v0, Lgbi;->f:Lszn;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_63
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_64
    move-object/from16 v4, p14

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_65
    iput-object v1, v0, Lgbi;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_66
    move-object/from16 p10, p14

    nop

    goto/32 :goto_17

    nop

    nop

    nop
.end method

.method private final ccb4c19b7dbd16be9d2a43125797659dm()V
    .locals 3

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

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

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

    :goto_1
    invoke-direct {v1, p0, v2}, Lfxf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v2, 0xa

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

    :goto_8
    throw v0

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lgbi;->s:Lgeq;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lgeq;->close()V

    :cond_0
    iget-object v0, p0, Lgbi;->t:Lgeq;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    invoke-virtual {v0}, Lgeq;->close()V

    :cond_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lgbi;->e:Lsuk;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    invoke-interface {v0, v1}, Lsuk;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_0

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

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    :goto_f
    new-instance v1, Lfxf;

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

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()Lryb;
    .locals 1

    goto/32 :goto_0

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

    :try_start_0
    iget-object v0, p0, Lgbi;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_1
    throw v0

    nop

    :goto_2
    monitor-exit p0

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
    return-object v0

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

    nop

    :try_start_1
    monitor-exit p0

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

.method public final b(Lpnx;)Lsxp;
    .locals 3

    goto/32 :goto_e

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_14

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4
    iget-object v1, p0, Lgbi;->K:Lsxp;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    const v1, 0x10

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v1, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p0, :cond_1

    nop

    goto/32 :goto_2

    nop

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

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_6

    nop

    :goto_c
    iget-object p0, p0, Lgbi;->K:Lsxp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    return-object p1

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p0}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, p1}, Lhwy;->w(Lpnx;)Lsxp;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lgbi;->u:Z

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    return-object p1

    nop

    nop

    :cond_3
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_16

    nop

    nop

    :goto_16
    iget-object v0, p0, Lgbi;->l:Loxv;

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

    nop

    :goto_17
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lgbi;->M:Lhwy;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public final declared-synchronized c(Llxm;)V
    .locals 8

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_5

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x8

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lgbi;->v:Z

    nop

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Lgbi;->w:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    iget v0, p0, Lgbi;->r:I

    nop

    nop

    nop

    nop

    iget v1, p0, Lgbi;->q:I

    nop

    if-lt v0, v1, :cond_1

    nop

    nop

    nop

    goto/16 :goto_e

    nop

    nop

    :cond_1
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v0, p0, Lgbi;->r:I

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lgbi;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lgbi;->D:Llvw;

    nop

    invoke-virtual {v0, p1}, Llvw;->a(Llxm;)Llxa;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgbi;->k:Lgei;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Lgei;->a(Llxa;)V

    iget v0, p0, Lgbi;->c:I

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    sget v1, Lcom/a;->aa:I

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    const-string v1, "Shot belongs to groupId: %s"

    nop

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-interface {p1, v0}, Llxa;->H(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x13

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

    :goto_9
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    :goto_b
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :cond_3
    :goto_e
    :try_start_2
    sget-object v0, Lgbi;->a:Lsdb;

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v1, 0x9d

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    nop

    iget v0, p0, Lgbi;->c:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Lgbi;->u:Z

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Lgbi;->v:Z

    nop

    nop

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Lgbi;->w:Z

    nop

    nop

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    nop

    iget p1, p1, Llxm;->a:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    const-string v2, "GroupId:%s has completed capture=%s, processing=%s, sessionClosed=%s ignoring shotId:%s"

    nop

    nop

    invoke-interface/range {v1 .. v7}, Lscz;->I(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    monitor-exit p0

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
.end method

.method public final declared-synchronized d(Llxm;J)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    return-void

    nop

    :cond_0
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lgfm;->a(J)Lj$/util/Optional;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    check-cast p2, Lgeq;

    nop

    nop

    nop

    nop

    if-nez p2, :cond_1

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    invoke-virtual {p0, p1}, Lgbi;->k(Llxm;)Z

    move-result p1

    nop

    nop

    if-eqz p1, :cond_5

    nop

    nop

    nop

    iget-object p1, p0, Lgbi;->s:Lgeq;

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    nop

    goto/16 :goto_13

    nop

    nop

    nop

    :cond_2
    iput-object p2, p0, Lgbi;->s:Lgeq;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_2

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

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_3
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p1

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_4

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    :goto_11
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Lgbi;->H:Loyd;

    nop

    nop

    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lj$/util/Optional;

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lgfm;

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    sget-object p1, Lgbi;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    const/16 p2, 0x9e

    nop

    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    const-string p2, "Missing active anchor buffer, skipping."

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :cond_5
    :goto_13
    :try_start_3
    iget-object p1, p0, Lgbi;->t:Lgeq;

    nop

    nop

    nop

    if-nez p1, :cond_3

    nop

    nop

    iput-object p2, p0, Lgbi;->t:Lgeq;

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final declared-synchronized e(Lgcc;)V
    .locals 2

    goto/32 :goto_12

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

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_c

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v0, Lgcc;->c:Lgcc;

    nop

    nop

    nop

    nop

    if-ne p1, v0, :cond_1

    nop

    nop

    iget v1, p0, Lgbi;->q:I

    nop

    nop

    nop

    add-int/lit8 v1, v1, -0x1

    nop

    nop

    iput v1, p0, Lgbi;->q:I

    nop

    :cond_1
    if-eq p1, v0, :cond_5

    nop

    nop

    sget-object v0, Lgcc;->a:Lgcc;

    nop

    nop

    nop

    nop

    if-ne p1, v0, :cond_2

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Lgbi;->u:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    :cond_2
    sget-object v0, Lgcc;->b:Lgcc;

    nop

    if-ne p1, v0, :cond_3

    nop

    iget-boolean v0, p0, Lgbi;->u:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    :cond_3
    sget-object v0, Lgcc;->d:Lgcc;

    nop

    nop

    nop

    nop

    if-ne p1, v0, :cond_4

    nop

    nop

    nop

    iget-boolean v0, p0, Lgbi;->u:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const v1, 0x1f

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

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

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

    :goto_a
    throw p1

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :cond_5
    :goto_f
    :try_start_2
    invoke-virtual {p1}, Lgcc;->ordinal()I

    move-result p1

    nop

    nop

    nop

    if-eqz p1, :cond_9

    nop

    const/4 v0, 0x1

    nop

    if-eq p1, v0, :cond_8

    nop

    nop

    nop

    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    if-eq p1, v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x3

    nop

    nop

    if-eq p1, v0, :cond_6

    nop

    nop

    nop

    sget-object p1, Lsld;->a:Lsld;

    nop

    nop

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_6
    sget-object p1, Lsld;->n:Lsld;

    nop

    nop

    nop

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_7
    sget-object p1, Lsld;->e:Lsld;

    nop

    goto :goto_10

    nop

    nop

    nop

    :cond_8
    sget-object p1, Lsld;->k:Lsld;

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    :cond_9
    sget-object p1, Lsld;->j:Lsld;

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1}, Lgbi;->g(Lsld;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x4

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

    nop

    :goto_13
    if-lez v0, :cond_a

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

    :cond_a
    goto/32 :goto_7

    nop
.end method

.method public final f()V
    .locals 7

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3
    invoke-virtual/range {v1 .. v6}, Lgbi;->n(Lj$/util/Optional;Lj$/util/Optional;Ljava/util/List;Lj$/util/Optional;Lj$/util/Optional;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    :goto_6
    sget-object v4, Lsbh;->a:Lryb;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    sget v0, Lryb;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v0, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v3, 0x1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    :goto_10
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    const v1, 0x4

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

    :goto_13
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_15
    move-object v1, p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lgbi;->w:Z

    nop

    if-eqz v0, :cond_3

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_3
    iget v0, p0, Lgbi;->q:I

    nop

    nop

    nop

    iget-object v2, p0, Lgbi;->x:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    iget-object v6, p0, Lgbi;->y:Lj$/util/Optional;

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v6}, Lj$/util/Optional;->isPresent()Z

    move-result v1

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

    :goto_18
    move v4, v3

    nop

    :goto_19
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1b
    if-nez v4, :cond_4

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    :goto_1d
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop
.end method

.method public final g(Lsld;)V
    .locals 3

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_0
    sget-object p1, Lgco;->c:Lgco;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    sget-object p1, Lgco;->b:Lgco;

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1b

    nop

    nop

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

    :goto_6
    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lgbv;->d:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_8
    new-instance v0, Lfzj;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, v0, Lgbp;->b:Lgbq;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    iget p0, p0, Lgbi;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

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

    :goto_e
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_f
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, p0}, Lgbq;->l(I)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_14
    goto/16 :goto_4

    nop

    :pswitch_0
    goto/32 :goto_3

    nop

    nop

    :goto_15
    sget-object p1, Lgco;->a:Lgco;

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

    :goto_16
    iget-object v0, p0, Lgbi;->m:Lgca;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p1, Lgco;->d:Lgco;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_1a
    invoke-virtual {p1}, Lsld;->ordinal()I

    move-result p1

    nop

    nop

    nop

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Lgbp;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p0, Lgbv;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1d
    goto/16 :goto_4

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_0

    nop

    nop

    :goto_1e
    if-nez p1, :cond_2

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

    :cond_2
    :try_start_1
    iput-object p1, p0, Lgbi;->z:Lsld;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lgbi;->k:Lgei;

    nop

    invoke-virtual {v2, p1}, Lgei;->l(Lsld;)V

    sget-object v2, Lsld;->b:Lsld;

    nop

    nop

    nop

    if-eq p1, v2, :cond_6

    nop

    nop

    nop

    iget-boolean v2, p0, Lgbi;->u:Z

    nop

    nop

    nop

    nop

    if-nez v2, :cond_3

    nop

    nop

    sget-object v2, Lgbi;->F:Lryy;

    nop

    nop

    invoke-virtual {v2, p1}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_4

    nop

    nop

    :cond_3
    sget-object v2, Lgbi;->G:Lryy;

    nop

    nop

    nop

    invoke-virtual {v2, p1}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_5

    nop

    nop

    nop

    :cond_4
    move v0, v1

    nop

    nop

    nop

    nop

    :cond_5
    invoke-virtual {p0}, Lgbi;->f()V

    goto :goto_1f

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    :cond_6
    :goto_1f
    iput-boolean v1, p0, Lgbi;->u:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lgbi;->l:Loxv;

    nop

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Loxv;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lgbi;->j()V

    monitor-exit p0

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

    :goto_20
    if-nez p0, :cond_7

    nop

    goto/32 :goto_23

    nop

    :cond_7
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v0}, Lowu;->execute(Ljava/lang/Runnable;)V

    :goto_23
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0, p0, p1, v1}, Lfzj;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_4

    nop

    nop

    :pswitch_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, v0, Lgbp;->a:Lgca;

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

    :goto_27
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic h(Lsui;Lrtk;Lcom/google/ar/core/Frame;)V
    .locals 3

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_15

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    instance-of p1, p1, Ltag;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    check-cast p2, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p2, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p2, p3}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_f
    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw p1

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    const-string p3, "Guidance failed for groupId:%s, isTimeout %s"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    sget-object p2, Lgbi;->a:Lsdb;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p2, p3, v0, v1}, Lscz;->z(Ljava/lang/String;IZ)V

    goto/32 :goto_4

    nop

    nop

    :goto_13
    invoke-virtual {p2}, Lscs;->b()Lsdo;

    move-result-object p2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_14
    sget-object p1, Lsld;->f:Lsld;

    nop

    :goto_15
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_16
    iget v0, p0, Lgbi;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_17
    const/16 p3, 0xa4

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

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    :goto_19
    invoke-interface {p2, p1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object p1, Lsld;->l:Lsld;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, p1}, Lgbi;->g(Lsld;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1c
    instance-of v1, p1, Ljava/util/concurrent/TimeoutException;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1d
    const v0, 0x5

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

    :goto_1e
    goto/32 :goto_d

    nop

    nop

    :goto_1f
    :try_start_2
    iget-object v0, p0, Lgbi;->J:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0, v1, v2}, Lsui;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    monitor-enter p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-boolean p1, p0, Lgbi;->u:Z

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_1

    nop

    iget-boolean p1, p0, Lgbi;->w:Z

    nop

    nop

    nop

    if-eqz p1, :cond_3

    nop

    nop

    goto/16 :goto_f

    nop

    nop

    nop

    :cond_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object p1, p0, Lgbi;->k:Lgei;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lrtk;->c()Lj$/time/Duration;

    move-result-object p2

    nop

    invoke-virtual {p3}, Lcom/google/ar/core/Frame;->getCamera()Lcom/google/ar/core/Camera;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lcom/google/ar/core/Camera;->getPose()Lcom/google/ar/core/Pose;

    move-result-object v0

    nop

    nop

    invoke-virtual {p3}, Lcom/google/ar/core/Frame;->getCamera()Lcom/google/ar/core/Camera;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p3}, Lcom/google/ar/core/Camera;->getTrackingState()Lcom/google/ar/core/TrackingState;

    move-result-object p3

    nop

    nop

    sget-object v1, Lcom/google/ar/core/TrackingState;->TRACKING:Lcom/google/ar/core/TrackingState;

    nop

    nop

    nop

    nop

    nop

    if-ne p3, v1, :cond_4

    nop

    nop

    nop

    const/4 p3, 0x1

    nop

    nop

    nop

    goto :goto_20

    nop

    :cond_4
    const/4 p3, 0x0

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1, p2, v0, p3}, Lgei;->c(Lj$/time/Duration;Lcom/google/ar/core/Pose;Z)V

    iget-object p1, p0, Lgbi;->m:Lgca;

    nop

    iget p2, p0, Lgbi;->c:I

    nop

    nop

    move-object p3, p1

    nop

    check-cast p3, Lgbp;

    nop

    nop

    nop

    nop

    nop

    iget-object p3, p3, Lgbp;->b:Lgbq;

    nop

    nop

    invoke-virtual {p3, p2}, Lgbq;->l(I)Z

    move-result p2

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_5

    nop

    nop

    check-cast p1, Lgbp;

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lgbp;->a:Lgca;

    nop

    nop

    nop

    nop

    move-object p2, p1

    nop

    nop

    nop

    check-cast p2, Lgbv;

    nop

    nop

    iget-object p2, p2, Lgbv;->b:Lgds;

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lfxf;

    nop

    nop

    nop

    const/16 v0, 0x10

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p3, p2, v0}, Lfxf;-><init>(Ljava/lang/Object;I)V

    check-cast p1, Lgbv;

    nop

    nop

    iget-object p1, p1, Lgbv;->d:Lowu;

    nop

    nop

    invoke-virtual {p1, p3}, Lowu;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x10

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

    :goto_1
    goto/32 :goto_e

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    const v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lgbi;->d:Ljava/util/List;

    nop

    iget-boolean v1, p0, Lgbi;->w:Z

    nop

    if-eqz v1, :cond_0

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

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_5
    return-void

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

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lgbi;->D:Llvw;

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

    :goto_7
    rem-int v0, v0, v1

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
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_1

    nop

    :goto_9
    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x2

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

    :goto_b
    new-instance v1, Lgbf;

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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    throw v0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

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
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v1, p0, v2}, Lgbf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final j()V
    .locals 5

    goto/32 :goto_8

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

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Llxg;->d()Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    check-cast v0, Lgbp;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Lgbp;->a:Lgca;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lgbi;->m:Lgca;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lgbi;->u:Z

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    iget v0, p0, Lgbi;->q:I

    nop

    if-nez v0, :cond_1

    nop

    iget-boolean v0, p0, Lgbi;->v:Z

    nop

    nop

    xor-int/2addr v0, v1

    nop

    nop

    iput-boolean v1, p0, Lgbi;->v:Z

    nop

    nop

    iget-boolean v3, p0, Lgbi;->w:Z

    nop

    nop

    if-nez v3, :cond_0

    nop

    nop

    invoke-virtual {p0}, Lgbi;->f()V

    :cond_0
    iget-object v3, p0, Lgbi;->d:Ljava/util/List;

    nop

    nop

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    goto :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    move v0, v2

    nop

    nop

    nop

    :goto_a
    iget-object v3, p0, Lgbi;->z:Lsld;

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lsld;->b:Lsld;

    nop

    nop

    nop

    if-ne v3, v4, :cond_2

    nop

    nop

    nop

    nop

    iget-boolean v3, p0, Lgbi;->v:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    :cond_2
    move v1, v2

    nop

    nop

    :goto_b
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v3, v0, p0, v2}, Lgbt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xd

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

    :goto_11
    invoke-virtual {v1, v3}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_3
    goto/32 :goto_4

    nop

    :goto_14
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v3, Lgbt;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lgbi;->n:Llxg;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method public final declared-synchronized k(Llxm;)Z
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_9
    return p1

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x6

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

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lgbi;->d:Ljava/util/List;

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized l()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

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

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lgbi;->v:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final m(ZLcom/google/ar/core/Frame;Lprw;Lpnx;)V
    .locals 18

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v4, "AllIn#wrapYuvWriteView"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object/from16 v2, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_e

    nop

    nop

    :catch_0
    move-exception v0

    nop

    :try_start_0
    sget-object v1, Lgbi;->a:Lsdb;

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v1

    nop

    check-cast v1, Lscz;

    nop

    const/16 v2, 0xb1

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Process capture frame failed for groupId:%s, isFirstCapture:%s"

    nop

    nop

    iget v3, v7, Lgbi;->c:I

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2, v3, v8}, Lscz;->z(Ljava/lang/String;IZ)V

    instance-of v0, v0, Ltag;

    nop

    if-eqz v0, :cond_1

    nop

    if-eqz v8, :cond_0

    nop

    nop

    sget-object v0, Lsld;->l:Lsld;

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    :cond_0
    sget-object v0, Lsld;->m:Lsld;

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    if-eqz v8, :cond_2

    nop

    nop

    nop

    nop

    sget-object v0, Lsld;->f:Lsld;

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_2
    sget-object v0, Lsld;->g:Lsld;

    nop

    nop

    :goto_6
    invoke-virtual {v7, v0}, Lgbi;->g(Lsld;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :goto_7
    goto/32 :goto_1e

    nop

    nop

    :goto_8
    move-object/from16 v7, p0

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

    :goto_9
    iget-object v4, v7, Lgbi;->i:Ltbs;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_a
    move-object v11, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v3, v7, Lgbi;->j:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    move-object v14, v3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object v1, v14

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    move-object v2, v15

    nop

    nop

    nop

    :try_start_1
    sget-object v0, Lszn;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    const/16 v4, 0x1586

    nop

    nop

    nop

    invoke-interface {v0, v4}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const-string v4, "First capture failed due to tracking: arCoreTrackingState=%s, allInTrackingStatus=%s."

    nop

    invoke-virtual {v9}, Lcom/google/ar/core/Camera;->getTrackingState()Lcom/google/ar/core/TrackingState;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lszn;->f:Loyd;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {v0, v4, v5, v2}, Lscz;->E(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ltaf;

    nop

    invoke-direct {v0, v3}, Ltaf;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_11
    move-object v10, v15

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

    :goto_12
    move-object/from16 v16, v5

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-direct/range {v9 .. v16}, Lszk;-><init>(Lszn;Lszh;ILcom/google/ar/core/Frame;Lszf;Lcom/google/googlex/gcam/YuvWriteView;Landroid/util/Size;)V

    iget-object v4, v3, Lszn;->e:Lsuk;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v4}, Lsgj;->S(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v2

    nop

    nop

    nop

    move-object/from16 v17, v3

    nop

    nop

    nop

    move-object v3, v2

    nop

    nop

    nop

    nop

    move-object/from16 v2, v17

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    :cond_3
    move-object v3, v13

    nop

    nop

    nop

    nop

    nop

    move-object v2, v15

    nop

    move-object v15, v14

    nop

    nop

    nop

    nop

    move-object v9, v2

    nop

    nop

    nop

    nop

    move-object v10, v1

    nop

    nop

    nop

    move v11, v12

    nop

    nop

    nop

    nop

    move-object/from16 v12, p2

    nop

    nop

    nop

    nop

    move-object v14, v4

    nop

    nop

    nop

    nop

    move-object v1, v15

    nop

    nop

    move-object v15, v5

    nop

    nop

    nop

    invoke-virtual/range {v9 .. v15}, Lszn;->d(Lszh;ILcom/google/ar/core/Frame;Lszf;Lcom/google/googlex/gcam/YuvWriteView;Landroid/util/Size;)V

    sget-object v3, Lsue;->a:Lsui;

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_13
    :try_start_3
    iget-object v2, v2, Lszn;->e:Lsuk;

    nop

    invoke-interface {v3, v1, v2}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v9, v7, Lgbi;->I:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    new-instance v10, Leqn;

    nop

    const/4 v11, 0x3

    nop

    nop

    nop

    nop

    move-object v1, v10

    nop

    move-object/from16 v2, p0

    nop

    move-object v4, v6

    nop

    nop

    move-object/from16 v5, p2

    nop

    nop

    nop

    nop

    nop

    move v6, v11

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v1 .. v6}, Leqn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lfdo;->k()V
    :try_end_3
    .catch Ltad; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ltaf; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ltag; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_1a

    nop

    nop

    :goto_14
    const/4 v6, 0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_16

    nop

    :goto_16
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move/from16 v8, p1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move-object/from16 v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_7

    nop

    nop

    :cond_5
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_26

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1d
    iget-object v3, v7, Lgbi;->j:Lpdf;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, v7, Lgbi;->j:Lpdf;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v8, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_6
    :try_start_4
    iget-object v9, v7, Lgbi;->M:Lhwy;

    nop

    invoke-virtual {v9, v2, v6}, Lhwy;->x(Lpnx;Z)Lsxp;

    move-result-object v2

    nop

    nop

    nop

    nop

    iput-object v2, v7, Lgbi;->K:Lsxp;

    nop

    nop

    nop

    nop

    invoke-virtual/range {p2 .. p2}, Lcom/google/ar/core/Frame;->getCamera()Lcom/google/ar/core/Camera;

    move-result-object v6

    nop

    invoke-virtual {v6}, Lcom/google/ar/core/Camera;->getPose()Lcom/google/ar/core/Pose;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    iput-object v6, v7, Lgbi;->p:Lcom/google/ar/core/Pose;

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Lhhg;->M()Lrtk;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lrtk;->e()V

    iget-object v15, v7, Lgbi;->f:Lszn;

    nop

    nop

    nop

    nop

    iget v12, v7, Lgbi;->c:I

    nop

    nop

    nop

    nop

    nop

    new-instance v14, Lfxf;

    nop

    nop

    invoke-direct {v14, v1, v5}, Lfxf;-><init>(Ljava/lang/Object;I)V
    :try_end_4
    .catch Ltad; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ltaf; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ltag; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v15, v12}, Lszn;->b(I)Lszh;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lszh;->f(Lsxp;)V

    invoke-virtual {v15, v12}, Lszn;->b(I)Lszh;

    move-result-object v1

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lszh;->d:Lsxp;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lsxp;->g:Lsxp;

    nop

    nop

    nop

    if-eq v2, v5, :cond_8

    nop

    nop

    nop

    sget-object v5, Lsxp;->i:Lsxp;

    nop

    nop

    nop

    nop

    nop

    if-ne v2, v5, :cond_7

    nop

    nop

    nop

    nop

    goto :goto_20

    nop

    nop

    nop

    nop

    :cond_7
    new-instance v5, Landroid/util/Size;

    nop

    nop

    nop

    invoke-virtual {v4}, Lcom/google/googlex/gcam/YuvWriteView;->b()I

    move-result v9

    nop

    invoke-virtual {v4}, Lcom/google/googlex/gcam/YuvWriteView;->a()I

    move-result v10

    nop

    nop

    nop

    nop

    invoke-direct {v5, v9, v10}, Landroid/util/Size;-><init>(II)V

    goto :goto_21

    nop

    nop

    nop

    nop

    :cond_8
    :goto_20
    new-instance v5, Landroid/util/Size;

    nop

    nop

    nop

    invoke-virtual {v4}, Lcom/google/googlex/gcam/YuvWriteView;->a()I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lcom/google/googlex/gcam/YuvWriteView;->b()I

    move-result v10

    nop

    nop

    invoke-direct {v5, v9, v10}, Landroid/util/Size;-><init>(II)V

    :goto_21
    invoke-virtual/range {p2 .. p2}, Lcom/google/ar/core/Frame;->getCamera()Lcom/google/ar/core/Camera;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v9}, Lcom/google/ar/core/Camera;->getTrackingState()Lcom/google/ar/core/TrackingState;

    move-result-object v10

    nop

    nop

    nop

    nop

    sget-object v11, Lcom/google/ar/core/TrackingState;->TRACKING:Lcom/google/ar/core/TrackingState;

    nop

    nop

    nop

    nop

    nop

    if-ne v10, v11, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v1, Lszh;->b:Lszo;

    nop

    nop

    check-cast v10, Lszc;

    nop

    nop

    iget-boolean v10, v10, Lszc;->d:Z

    nop

    if-eqz v10, :cond_9

    nop

    nop

    nop

    nop

    iget-object v10, v15, Lszn;->f:Loyd;

    nop

    nop

    invoke-interface {v10}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    sget-object v11, Lgfo;->h:Lgfo;

    nop

    nop

    if-ne v10, v11, :cond_5

    nop

    nop

    nop

    nop

    :cond_9
    iget-object v3, v15, Lszn;->g:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    new-instance v10, Lipo;

    nop

    const/16 v11, 0x11

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v10, v11}, Lipo;-><init>(I)V

    invoke-virtual {v3, v10}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lcom/google/ar/core/Session;

    nop

    nop

    invoke-virtual {v9}, Lcom/google/ar/core/Camera;->getDisplayOrientedPose()Lcom/google/ar/core/Pose;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v10}, Lcom/google/ar/core/Session;->createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;

    move-result-object v10

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lcom/google/ar/core/Camera;->getPose()Lcom/google/ar/core/Pose;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v9}, Lcom/google/ar/core/Session;->createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;

    move-result-object v9

    nop

    nop

    nop

    new-instance v13, Lszf;

    nop

    nop

    iget-object v11, v15, Lszn;->i:Lcom/google/googlex/gcam/creativecamera/allin/jni/ImageConversionJniImpl;

    nop

    invoke-static {v2}, Lsgj;->x(Lsxp;)I

    move-result v2

    nop

    nop

    nop

    nop

    iget-object v11, v15, Lszn;->f:Loyd;

    nop

    nop

    nop

    invoke-interface {v11}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    check-cast v11, Lgfo;

    nop

    nop

    invoke-direct {v13, v0, v9, v10, v2}, Lszf;-><init>(Lcom/google/ar/core/Frame;Lcom/google/ar/core/Anchor;Lcom/google/ar/core/Anchor;I)V

    iget-object v2, v15, Lszn;->c:Lszz;

    nop

    nop

    nop

    nop

    nop

    sget v2, Lryb;->d:I

    nop

    nop

    sget-object v2, Lsbh;->a:Lryb;

    nop

    invoke-static {v3, v5, v13, v2}, Lszz;->a(Lcom/google/ar/core/Session;Landroid/util/Size;Lszf;Lryb;)Lj$/util/Optional;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v13, v2}, Lszh;->h(Lszf;Lj$/util/Optional;)V

    iget-object v2, v1, Lszh;->b:Lszo;

    nop

    nop

    check-cast v2, Lszc;

    nop

    iget-boolean v2, v2, Lszc;->c:Z

    nop

    nop

    nop

    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lszk;

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_22
    move-object v3, v15

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v3}, Lpdf;->g()V

    :try_start_6
    iget-object v3, v7, Lgbi;->j:Lpdf;

    nop

    nop

    const-string v5, "AllInProcessor#captureImage"

    nop

    invoke-interface {v3, v5}, Lpdf;->f(Ljava/lang/String;)V
    :try_end_6
    .catch Ltad; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ltaf; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ltag; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object v9, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_25
    move-object v1, v14

    nop

    nop

    nop

    nop

    nop

    :goto_26
    :try_start_7
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    throw v0

    nop

    :goto_27
    invoke-static {}, Lhhg;->M()Lrtk;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v4}, Lrtk;->e()V

    iget-object v9, v7, Lgbi;->f:Lszn;

    nop

    nop

    nop

    iget v10, v7, Lgbi;->c:I

    nop

    nop

    nop

    iget-object v11, v7, Lgbi;->M:Lhwy;

    nop

    nop

    nop

    invoke-virtual {v11, v2, v6}, Lhwy;->x(Lpnx;Z)Lsxp;

    move-result-object v2

    nop

    new-instance v11, Lfxf;

    nop

    nop

    invoke-direct {v11, v1, v5}, Lfxf;-><init>(Ljava/lang/Object;I)V
    :try_end_7
    .catch Ltad; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ltaf; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ltag; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-virtual {v9, v10}, Lszn;->b(I)Lszh;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lszh;->f(Lsxp;)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/ar/core/Frame;->getCamera()Lcom/google/ar/core/Camera;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v5}, Lcom/google/ar/core/Camera;->getTrackingState()Lcom/google/ar/core/TrackingState;

    move-result-object v10

    nop

    nop

    nop

    nop

    sget-object v12, Lcom/google/ar/core/TrackingState;->TRACKING:Lcom/google/ar/core/TrackingState;

    nop

    nop

    nop

    nop

    nop

    if-ne v10, v12, :cond_b

    nop

    nop

    nop

    iget-object v3, v9, Lszn;->g:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    new-instance v10, Lipo;

    nop

    const/16 v12, 0x10

    nop

    nop

    nop

    invoke-direct {v10, v12}, Lipo;-><init>(I)V

    invoke-virtual {v3, v10}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lcom/google/ar/core/Camera;->getDisplayOrientedPose()Lcom/google/ar/core/Pose;

    move-result-object v10

    nop

    invoke-virtual {v3, v10}, Lcom/google/ar/core/Session;->createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;

    move-result-object v10

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lcom/google/ar/core/Camera;->getPose()Lcom/google/ar/core/Pose;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v5}, Lcom/google/ar/core/Session;->createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    new-instance v5, Lszf;

    nop

    nop

    nop

    nop

    iget-object v12, v9, Lszn;->i:Lcom/google/googlex/gcam/creativecamera/allin/jni/ImageConversionJniImpl;

    nop

    nop

    invoke-static {v2}, Lsgj;->x(Lsxp;)I

    move-result v2

    nop

    iget-object v9, v9, Lszn;->f:Loyd;

    nop

    invoke-interface {v9}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    check-cast v9, Lgfo;

    nop

    nop

    nop

    invoke-direct {v5, v0, v3, v10, v2}, Lszf;-><init>(Lcom/google/ar/core/Frame;Lcom/google/ar/core/Anchor;Lcom/google/ar/core/Anchor;I)V

    invoke-virtual {v1, v5}, Lszh;->i(Lszf;)V

    invoke-virtual {v1}, Lszh;->e()V

    iget-object v1, v1, Lszh;->b:Lszo;

    nop

    nop

    invoke-virtual {v1}, Lszo;->f()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    iget-object v1, v7, Lgbi;->k:Lgei;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lrtk;->c()Lj$/time/Duration;

    move-result-object v2

    nop

    nop

    invoke-virtual/range {p2 .. p2}, Lcom/google/ar/core/Frame;->getCamera()Lcom/google/ar/core/Camera;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lcom/google/ar/core/Camera;->getPose()Lcom/google/ar/core/Pose;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual/range {p2 .. p2}, Lcom/google/ar/core/Frame;->getCamera()Lcom/google/ar/core/Camera;

    move-result-object v0

    nop

    invoke-virtual {v0}, Lcom/google/ar/core/Camera;->getTrackingState()Lcom/google/ar/core/TrackingState;

    move-result-object v0

    nop

    nop

    sget-object v4, Lcom/google/ar/core/TrackingState;->TRACKING:Lcom/google/ar/core/TrackingState;

    nop

    nop

    nop

    nop

    if-ne v0, v4, :cond_a

    nop

    nop

    nop

    goto :goto_28

    nop

    nop

    :cond_a
    const/4 v6, 0x0

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v1, v2, v3, v6}, Lgei;->g(Lj$/time/Duration;Lcom/google/ar/core/Pose;Z)V

    invoke-static {}, Lfdo;->k()V
    :try_end_9
    .catch Ltad; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ltaf; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ltag; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_7

    nop

    nop

    :cond_b
    :try_start_a
    new-instance v0, Ltaf;

    nop

    nop

    nop

    invoke-direct {v0, v3}, Ltaf;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    nop

    nop

    :try_start_b
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    throw v0

    nop

    nop

    nop

    nop
    :try_end_b
    .catch Ltad; {:try_start_b .. :try_end_b} :catch_0
    .catch Ltaf; {:try_start_b .. :try_end_b} :catch_0
    .catch Ltag; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2a
    move-object v1, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2b
    move-object v3, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v1, v7, Lgbi;->j:Lpdf;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_2d
    move-object v15, v4

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2e
    move-object/from16 v1, p3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2f
    move-object/from16 v13, p2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_30
    const-string v3, "Camera isn\'t tracking."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_31
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/16 v5, 0xb

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v4, v1}, Ltbs;->c(Lprw;)Lcom/google/googlex/gcam/YuvWriteView;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_35
    const v1, 0x1c

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_17

    nop

    :goto_37
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_31

    nop

    nop

    :goto_38
    add-int v0, v0, v1

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
.end method

.method public final n(Lj$/util/Optional;Lj$/util/Optional;Ljava/util/List;Lj$/util/Optional;Lj$/util/Optional;)V
    .locals 15

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v1, v7, Lgbi;->w:Z

    nop

    nop

    if-eqz v1, :cond_0

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_0
    const/4 v8, 0x1

    nop

    nop

    iput-boolean v8, v7, Lgbi;->w:Z

    nop

    nop

    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual/range {p4 .. p4}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    move v10, v8

    nop

    nop

    nop

    goto :goto_2

    nop

    nop

    :cond_1
    move v10, v9

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, v7, Lgbi;->k:Lgei;

    nop

    nop

    nop

    invoke-virtual {v1}, Lgei;->j()V

    iget-object v1, v7, Lgbi;->k:Lgei;

    nop

    nop

    nop

    monitor-enter v1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, v1, Lgei;->d:Lows;

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_4

    nop

    nop

    iget-boolean v3, v1, Lgei;->e:Z

    nop

    nop

    nop

    if-nez v3, :cond_4

    nop

    nop

    nop

    iget-object v3, v1, Lgei;->f:Llxa;

    nop

    nop

    nop

    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_7

    nop

    nop

    :cond_2
    iget-object v3, v1, Lgei;->g:Ltkb;

    nop

    nop

    invoke-virtual {v1}, Lgei;->m()Ltkb;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    if-nez v5, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkb;->o()V

    :cond_3
    iget-object v5, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v5, Lsle;

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->i()Ltkg;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lsky;

    nop

    nop

    sget-object v6, Lsle;->a:Lsle;

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lsle;->k:Lsky;

    nop

    nop

    nop

    nop

    nop

    iget v4, v5, Lsle;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit16 v4, v4, 0x100

    nop

    nop

    nop

    nop

    iput v4, v5, Lsle;->b:I

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkb;->i()Ltkg;

    move-result-object v3

    nop

    nop

    check-cast v3, Lsle;

    nop

    iget-object v4, v1, Lgei;->f:Llxa;

    nop

    nop

    nop

    iput-boolean v8, v1, Lgei;->e:Z

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Lows;->close()V

    invoke-interface {v4}, Llxa;->ag()Lmjn;

    move-result-object v1

    nop

    nop

    iput-object v3, v1, Lmjn;->A:Lsle;

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
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

    :goto_6
    goto :goto_8

    nop

    nop

    nop

    :cond_4
    :goto_7
    :try_start_4
    sget-object v2, Lgei;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    const/16 v3, 0x101

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lcom/google/android/apps/camera/jni/microvideotonemap/EeD/yHEIcF;->RElAYlGNh:Ljava/lang/String;

    nop

    invoke-interface {v2, v3}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_8
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lj$/util/Optional;->isEmpty()Z

    move-result v1

    nop

    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p5 .. p5}, Lj$/util/Optional;->isEmpty()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    goto/16 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    invoke-virtual/range {p5 .. p5}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    move-object v1, v11

    nop

    nop

    nop

    nop

    check-cast v1, Lgcb;

    nop

    nop

    iget-object v1, v1, Lgcb;->g:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lgfl;

    nop

    invoke-direct {v2, v8}, Lgfl;-><init>(I)V

    invoke-virtual {v1, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v10, :cond_6

    nop

    nop

    invoke-static/range {p3 .. p3}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    nop

    const-wide/16 v2, 0x1

    nop

    nop

    invoke-interface {v1, v2, v3}, Lj$/util/stream/Stream;->skip(J)Lj$/util/stream/Stream;

    move-result-object v13

    nop

    new-instance v14, Lgdj;

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    move-object v1, v14

    nop

    nop

    nop

    nop

    nop

    move-object v2, p0

    nop

    nop

    move-object v3, v12

    nop

    nop

    nop

    move-object v4, v11

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v5, p4

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v1 .. v6}, Lgdj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v13, v14}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_6
    new-instance v1, Lhpe;

    nop

    nop

    invoke-direct {v1, v10, v8}, Lhpe;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lnew;

    nop

    move-object v3, v11

    nop

    check-cast v3, Lgcb;

    nop

    nop

    invoke-direct {v2, v3}, Lnew;-><init>(Lgcb;)V

    invoke-virtual {v1}, Lj$/util/Optional;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_7

    nop

    nop

    nop

    if-nez v10, :cond_7

    nop

    nop

    nop

    nop

    move v3, v8

    nop

    goto :goto_9

    nop

    nop

    :cond_7
    move v3, v9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2, v3}, Lnew;->m(Z)V

    invoke-virtual {v2}, Lnew;->l()Lgcb;

    move-result-object v2

    nop

    nop

    nop

    nop

    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lirt;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3, v10, v8}, Lirt;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v1, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v1, Lgbf;

    nop

    invoke-direct {v1, v12, v9}, Lgbf;-><init>(Ljava/lang/Object;I)V

    invoke-static {v3, v1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    if-eqz v10, :cond_9

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v1, p3

    nop

    nop

    nop

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lszl;

    nop

    move-object v2, v11

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lgcb;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lgcb;->j:Llko;

    nop

    nop

    iget-object v2, v2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v2, Llwp;

    nop

    nop

    nop

    iget-object v3, v1, Lszl;->b:Lsvk;

    nop

    nop

    nop

    nop

    iget-boolean v3, v3, Lsvk;->b:Z

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_8

    nop

    nop

    nop

    nop

    sget-object v3, Ljty;->b:Ljty;

    nop

    nop

    nop

    nop

    nop

    iput-object v3, v2, Llwp;->e:Ljty;

    nop

    nop

    nop

    nop

    goto :goto_a

    nop

    :cond_8
    sget-object v3, Ljty;->c:Ljty;

    nop

    nop

    nop

    iput-object v3, v2, Llwp;->e:Ljty;

    nop

    nop

    :goto_a
    new-instance v2, Lnew;

    nop

    nop

    nop

    nop

    check-cast v11, Lgcb;

    nop

    invoke-direct {v2, v11}, Lnew;-><init>(Lgcb;)V

    invoke-virtual/range {p4 .. p4}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    iput-object v3, v2, Lnew;->h:Ljava/lang/Object;

    nop

    nop

    iget-object v1, v1, Lszl;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    invoke-virtual {v2, v1}, Lnew;->n(Lcom/google/googlex/gcam/InterleavedImageU8;)V

    invoke-virtual {v2, v8}, Lnew;->m(Z)V

    iget-object v1, v7, Lgbi;->n:Llxg;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "jpg"

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Llxg;->a(Ljava/lang/String;)Llxc;

    move-result-object v1

    nop

    iput-object v1, v2, Lnew;->g:Ljava/lang/Object;

    nop

    invoke-virtual {v2}, Lnew;->l()Lgcb;

    move-result-object v1

    nop

    nop

    nop

    check-cast v12, Lgbc;

    nop

    nop

    invoke-virtual {v12, v1}, Lgbc;->e(Lgcb;)V

    :cond_9
    invoke-static {}, Liof;->G()V

    iget-object v1, v7, Lgbi;->E:Liof;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lgbf;

    nop

    nop

    nop

    invoke-direct {v2, v1, v8}, Lgbf;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_a
    :goto_b
    goto/32 :goto_f

    nop

    nop

    :goto_c
    const v0, 0xb

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_6
    monitor-exit v1

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    if-lez v0, :cond_b

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_b
    goto/32 :goto_3

    nop

    :goto_f
    invoke-direct {p0}, Lgbi;->ccb4c19b7dbd16be9d2a43125797659dm()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    throw v0

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_8
    monitor-exit p0

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/32 :goto_16

    nop

    nop

    :goto_11
    move-object v7, p0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_13
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    move-object/from16 v0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_15
    invoke-direct {p0}, Lgbi;->ccb4c19b7dbd16be9d2a43125797659dm()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    throw v0

    nop

    nop

    :goto_17
    goto/32 :goto_0

    nop

    nop
.end method
