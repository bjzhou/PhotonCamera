.class public Lltb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Licg;
.implements Lpci;


# static fields
.field public static final synthetic a:I

.field private static final b:Lsdb;

.field private static final c:Ltqm;


# instance fields
.field private final d:Lsui;

.field private final e:Lrss;

.field private final f:Lrss;

.field private final g:Lrss;

.field private final h:Lrss;

.field private final i:Lrss;

.field private final j:Z

.field private final k:Lrss;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:Lrss;

.field private n:Z

.field private final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lltb;->c:Ltqm;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    sput-object v0, Lltb;->b:Lsdb;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "ltb"

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

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    sget-object v0, Ltqm;->a:Ltqm;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return-void

    nop
.end method

.method private constructor <init>(Lsui;ZZZLrss;Lrss;Lrss;Lrss;Lrss;Lrss;)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

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
    goto/32 :goto_17

    nop

    nop

    :goto_3
    iput-object p1, p0, Lltb;->k:Lrss;

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

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_5
    iput-boolean p4, p0, Lltb;->o:Z

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p5, p0, Lltb;->m:Lrss;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean p2, p0, Lltb;->j:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    invoke-virtual {p9}, Lrss;->h()Z

    move-result p1

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

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Loeq;->n()Loeq;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p9, p0, Lltb;->h:Lrss;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_d
    iput-object p1, p0, Lltb;->d:Lsui;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    :goto_10
    iput-object v0, p0, Lltb;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p9}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_12
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Lieg;->d()V

    :goto_14
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    :goto_16
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_16

    nop

    :goto_18
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_15

    nop

    :goto_1a
    iput-object v0, p0, Lltb;->m:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1b
    iput-object v0, p0, Lltb;->k:Lrss;

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object p10, p0, Lltb;->i:Lrss;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object p6, p0, Lltb;->e:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_20
    iput-boolean v1, p0, Lltb;->n:Z

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_23
    iput-object p7, p0, Lltb;->f:Lrss;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p1, Lieg;

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

    :goto_26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-object p8, p0, Lltb;->g:Lrss;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_28
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b(Landroid/content/Context;Lhoh;Lpnu;Ljava/util/concurrent/Executor;Lpdf;ZLrss;Lrss;Lrss;Lrss;Lrss;Lrss;)Lltb;
    .locals 21

    goto/32 :goto_63

    nop

    nop

    :goto_0
    invoke-virtual/range {p6 .. p6}, Lrss;->h()Z

    move-result v2

    nop

    nop

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

    :goto_1
    invoke-virtual {v7, v4}, Lhoh;->p(Lhmn;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eq v2, v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :cond_0
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_3
    move/from16 v11, v16

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    move/from16 v12, v17

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

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    invoke-interface/range {p2 .. p2}, Lpnu;->l()Lpog;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_34

    nop

    nop

    :goto_9
    sget-object v4, Lhna;->g:Lhmn;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move v14, v0

    nop

    nop

    :goto_b
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object/from16 v15, p7

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v2, Lhna;->m:Lhmn;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v2, Lhna;->ai:Lhmn;

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v7, v0}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v7, v0}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move v14, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v7, v4}, Lhoh;->p(Lhmn;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_14
    move/from16 v9, v16

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v7, v2}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v7, v4}, Lhoh;->p(Lhmn;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v7, p1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move/from16 v13, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_40

    nop

    nop

    :goto_1d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v4, Lhna;->h:Lhmn;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_20
    move/from16 v16, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v0, Ljava/lang/Long;

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v7, v2}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_23
    if-ne v0, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    :goto_24
    sget-object v4, Lhna;->k:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v7, v2}, Lhoh;->p(Lhmn;)Z

    move-result v6

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_26
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_2
    goto/32 :goto_41

    nop

    nop

    :goto_27
    move v10, v4

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    sget-object v2, Lhna;->q:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_29
    move-object/from16 v19, p11

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move-object/from16 v2, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2b
    move v12, v4

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2c
    new-instance v15, Llta;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_2e
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance v0, Lltb;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_30
    move/from16 v16, v0

    nop

    nop

    :goto_31
    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_32
    move-object/from16 v17, p9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_33
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_16

    nop

    :goto_35
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {v2, v4, v5, v1}, Llsz;-><init>(JI)V

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v7, v2}, Lhoh;->p(Lhmn;)Z

    move-result v2

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

    :goto_38
    sget-object v2, Lhna;->o:Lhmn;

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

    :goto_39
    new-instance v2, Llsz;

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

    :goto_3a
    invoke-virtual {v0, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3b
    move-object/from16 v7, p1

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_3c
    sget-object v4, Lhna;->Z:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_3d
    if-eqz p5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :cond_3
    :goto_3e
    goto/32 :goto_65

    nop

    nop

    :goto_3f
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_41
    sget-object v2, Lhna;->l:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_18

    nop

    :goto_43
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v7, v4}, Lhoh;->p(Lhmn;)Z

    move-result v4

    nop

    :goto_45
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_46
    move-object/from16 v16, p8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_48
    move v10, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v7, v2}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_4a
    sget-object v2, Lhna;->p:Lhmn;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_4b
    if-nez v4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    :goto_4c
    if-eqz v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_4d
    if-nez v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_4f
    move-object v9, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_50
    const/4 v0, 0x5

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

    :goto_51
    if-nez v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_52
    invoke-direct/range {v9 .. v19}, Lltb;-><init>(Lsui;ZZZLrss;Lrss;Lrss;Lrss;Lrss;Lrss;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_53
    if-eqz v4, :cond_8

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_8
    :goto_54
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_55
    invoke-direct/range {v0 .. v15}, Llta;-><init>(Landroid/content/Context;Lpdf;ZJZLhoh;ZZIZZZILrss;)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_56
    move-object/from16 v0, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_57
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_51

    nop

    nop

    :goto_59
    invoke-static {v1, v0}, Lsgj;->T(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v10

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_b

    nop

    :goto_5b
    goto/32 :goto_50

    nop

    nop

    :goto_5c
    invoke-virtual {v7, v2}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_5d
    sget-object v2, Lhna;->r:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_5e
    if-nez v2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_5f
    goto/16 :goto_6e

    nop

    nop

    :goto_60
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_61
    move-object v0, v15

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_62
    if-lez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_15

    nop

    :goto_63
    const v0, 0x1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_64
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_65
    move v8, v1

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    sget-object v4, Lhna;->j:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v7, v4}, Lhoh;->p(Lhmn;)Z

    move-result v11

    nop

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

    :goto_68
    sget-object v4, Lpog;->a:Lpog;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v7, v4}, Lhoh;->p(Lhmn;)Z

    move-result v17

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_6b
    move v13, v2

    nop

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

    :goto_6c
    move-object/from16 v18, p10

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    move v8, v0

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    move-object/from16 v14, p6

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

    :goto_70
    goto/16 :goto_80

    nop

    nop

    :goto_71
    goto/32 :goto_4a

    nop

    nop

    :goto_72
    move v2, v0

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_73
    const-wide/16 v4, 0xb4

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_74
    move-object/from16 v20, v15

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_75
    sget-object v0, Lhmk;->d:Lhmn;

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

    :goto_76
    move-object/from16 v1, v20

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_77
    if-nez v2, :cond_b

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_78
    goto/16 :goto_58

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_7a
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v7, v2}, Lhoh;->p(Lhmn;)Z

    move-result v18

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    sget-object v4, Lhna;->i:Lhmn;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_7e
    sget-object v0, Lhmk;->a:Lhmo;

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

    :goto_7f
    move v10, v0

    nop

    nop

    :goto_80
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto :goto_80

    nop

    nop

    :goto_82
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_83
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    :goto_84
    goto/32 :goto_24

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lprw;Llsc;Z)Lrss;
    .locals 31

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Lprv;

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    check-cast v8, Lprv;

    nop

    nop

    const/4 v14, 0x2

    nop

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Lprv;

    nop

    nop

    nop

    nop

    iget-boolean v7, v1, Lltb;->o:Z

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_16

    nop

    nop

    nop

    iget-object v7, v1, Lltb;->h:Lrss;

    nop

    nop

    nop

    sget-object v9, Lltb;->c:Ltqm;

    nop

    nop

    nop

    invoke-virtual {v7}, Lrss;->h()Z

    move-result v10

    nop

    nop

    if-eqz v10, :cond_1

    nop

    nop

    nop

    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    check-cast v7, Lieg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lieg;->a()Liem;

    move-result-object v7

    nop

    sget-object v9, Liem;->a:Liem;

    nop

    nop

    nop

    nop

    nop

    if-ne v7, v9, :cond_0

    nop

    nop

    nop

    nop

    nop

    sget-object v9, Lltc;->a:Ltqm;

    nop

    nop

    nop

    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    sget-object v9, Lltc;->b:Ltqm;

    nop

    nop

    goto :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    invoke-interface {v6}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    nop

    nop

    nop

    invoke-interface {v6}, Lprv;->getPixelStride()I

    move-result v11

    nop

    invoke-interface {v6}, Lprv;->getRowStride()I

    move-result v12

    nop

    invoke-interface {v8}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    nop

    invoke-interface {v8}, Lprv;->getPixelStride()I

    move-result v16

    nop

    nop

    nop

    nop

    invoke-interface {v8}, Lprv;->getRowStride()I

    move-result v17

    nop

    nop

    nop

    invoke-interface {v5}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v20

    nop

    nop

    invoke-interface {v5}, Lprv;->getPixelStride()I

    move-result v21

    nop

    invoke-interface {v5}, Lprv;->getRowStride()I

    move-result v24

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->c()I

    move-result v25

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->b()I

    move-result v26

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->a()I

    move-result v27

    nop

    move-object/from16 v8, v23

    nop

    nop

    nop

    iget-boolean v5, v8, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->c:Z

    nop

    nop

    nop

    nop

    const/16 v18, 0x1

    nop

    nop

    nop

    nop

    nop

    xor-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    nop

    const-string v6, "BuRowStridetCurator closed"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v6}, Lrrf;->y(ZLjava/lang/Object;)V

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_15

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_15

    nop

    nop

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_15

    nop

    nop

    nop

    const-string v5, "BurstCurator.toByteArray"

    nop

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v4}, Ltis;->h()[B

    move-result-object v23

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltis;->h()[B

    move-result-object v28

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v5, "BurstCurator.processYUVFrameWithPolicy"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-wide v6, v8, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->b:J

    nop

    nop

    move-object v5, v8

    nop

    nop

    move-object v9, v8

    nop

    nop

    nop

    nop

    nop

    move-object v8, v10

    nop

    nop

    move-object v10, v9

    nop

    nop

    nop

    nop

    move v9, v11

    nop

    nop

    nop

    move-object v11, v10

    nop

    move v10, v12

    nop

    nop

    nop

    nop

    move-object v12, v11

    nop

    nop

    nop

    move-object v11, v13

    nop

    move/from16 v29, v3

    nop

    nop

    move-object v3, v12

    nop

    nop

    nop

    move/from16 v12, v16

    nop

    nop

    nop

    nop

    move/from16 v13, v17

    nop

    nop

    nop

    nop

    move-object/from16 p3, v2

    nop

    nop

    nop

    nop

    nop

    move/from16 v2, v18

    nop

    nop

    move-object/from16 v14, v20

    nop

    move v2, v15

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v30, v19

    nop

    nop

    nop

    move/from16 v15, v21

    nop

    nop

    nop

    nop

    nop

    move/from16 v16, v24

    nop

    nop

    nop

    nop

    nop

    move/from16 v17, v25

    nop

    nop

    nop

    move/from16 v18, v26

    nop

    move-object/from16 v19, v23

    nop

    nop

    nop

    nop

    move/from16 v20, v27

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v21, v28

    nop

    nop

    nop

    invoke-virtual/range {v5 .. v21}, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->nativeProcessYUVWithPolicy(JLjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII[BI[B)[B

    move-result-object v5

    nop

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v6, "BurstCurator.parseFrom"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v3, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->a:Ltjv;

    nop

    nop

    nop

    nop

    sget-object v6, Ltpo;->a:Ltpo;

    nop

    array-length v7, v5

    nop

    nop

    invoke-static {v6, v5, v2, v7, v3}, Ltkg;->q(Ltkg;[BIILtjv;)Ltkg;

    move-result-object v3

    nop

    nop

    nop

    invoke-static {v3}, Ltkg;->E(Ltkg;)V

    check-cast v3, Ltpo;

    nop

    nop
    :try_end_1
    .catch Ltky; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    :try_start_2
    iget-boolean v3, v1, Lltb;->n:Z

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

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v3, v1, Lltb;->d:Lsui;

    nop

    invoke-static {v3}, Lolx;->bl(Lsui;)Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;

    nop

    nop

    :goto_3
    if-eqz v3, :cond_47

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v2, Llsc;->o:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_2e

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v2, Llsc;->q:[Llsf;

    nop

    nop

    nop

    array-length v5, v5

    nop

    if-nez v5, :cond_4

    nop

    nop

    nop

    nop

    iget-boolean v5, v1, Lltb;->j:Z

    nop

    nop

    if-eqz v5, :cond_3

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    :cond_3
    sget-object v2, Lrsa;->a:Lrsa;

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_6
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_7
    :try_start_3
    invoke-interface/range {p1 .. p1}, Lprw;->c()I

    move-result v5

    nop

    nop

    nop

    nop

    int-to-float v5, v5

    nop

    nop

    nop

    nop

    iget-object v6, v2, Llsc;->t:Landroid/graphics/Rect;

    nop

    nop

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    nop

    nop

    int-to-float v6, v6

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->b()I

    move-result v7

    nop

    nop

    nop

    int-to-float v7, v7

    nop

    iget-object v8, v2, Llsc;->t:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    int-to-float v8, v8

    nop

    nop

    nop

    nop

    iget-boolean v9, v2, Llsc;->r:Z

    nop

    nop

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    nop

    if-nez v9, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v1, Lltb;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    :cond_5
    move v9, v15

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v10, Ltpx;->a:Ltpx;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkg;->m()Ltkb;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v11

    nop

    nop

    nop

    nop

    if-nez v11, :cond_6

    nop

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_6
    iget-object v11, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v11, Ltpx;

    nop

    nop

    iget v12, v11, Ltpx;->b:I

    nop

    nop

    nop

    const/4 v14, 0x1

    nop

    or-int/2addr v12, v14

    nop

    iput v12, v11, Ltpx;->b:I

    nop

    nop

    nop

    nop

    iput-boolean v9, v11, Ltpx;->c:Z

    nop

    invoke-virtual {v10}, Ltkb;->i()Ltkg;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    check-cast v9, Ltpx;

    nop

    nop

    nop

    sget-object v10, Ltpi;->a:Ltpi;

    nop

    invoke-virtual {v10}, Ltkg;->m()Ltkb;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v1, Lltb;->g:Lrss;

    nop

    nop

    nop

    invoke-virtual {v11}, Lrss;->h()Z

    move-result v12

    nop

    const/16 v22, 0x4

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v12, :cond_a

    nop

    nop

    invoke-virtual {v11}, Lrss;->c()Ljava/lang/Object;

    move-result-object v11

    nop

    check-cast v11, Lhze;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Lhze;->d()Lhxs;

    move-result-object v11

    nop

    nop

    nop

    nop

    iget-object v11, v11, Lhxs;->a:[F

    nop

    nop

    nop

    nop

    nop

    array-length v12, v11

    nop

    nop

    nop

    nop

    if-nez v12, :cond_7

    nop

    nop

    nop

    nop

    goto/16 :goto_9

    nop

    nop

    :cond_7
    new-instance v12, Ljzb;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v12, v11}, Ljzb;-><init>([F)V

    new-instance v11, Lnpk;

    nop

    nop

    nop

    invoke-direct {v11}, Lnpk;-><init>()V

    iget-object v12, v12, Ljzb;->a:[F

    nop

    nop

    nop

    nop

    const/16 v4, 0x10

    nop

    nop

    nop

    nop

    nop

    new-array v4, v4, [F

    nop

    nop

    invoke-static {v12, v11}, Lnzk;->K([FLnpk;)V

    invoke-virtual {v11, v4}, Lnpk;->b([F)V

    const/4 v11, 0x5

    nop

    nop

    nop

    nop

    aget v11, v4, v11

    nop

    float-to-double v11, v11

    nop

    nop

    nop

    nop

    nop

    invoke-static {v11, v12}, Ljava/lang/Math;->asin(D)D

    move-result-wide v11

    nop

    nop

    nop

    nop

    nop

    double-to-float v11, v11

    nop

    nop

    aget v12, v4, v22

    nop

    nop

    nop

    float-to-double v14, v12

    nop

    nop

    nop

    invoke-static {v14, v15}, Ljava/lang/Math;->asin(D)D

    move-result-wide v14

    nop

    nop

    nop

    nop

    nop

    neg-double v14, v14

    nop

    const/4 v12, 0x6

    nop

    nop

    aget v4, v4, v12

    nop

    cmpl-float v4, v4, v13

    nop

    nop

    nop

    nop

    nop

    double-to-float v12, v14

    nop

    if-lez v4, :cond_8

    nop

    neg-float v11, v11

    nop

    nop

    nop

    neg-float v12, v12

    nop

    nop

    nop

    nop

    nop

    :cond_8
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v4

    nop

    nop

    nop

    nop

    float-to-double v14, v4

    nop

    nop

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    nop

    nop

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    nop

    nop

    cmpg-double v4, v14, v19

    nop

    nop

    nop

    nop

    nop

    if-gez v4, :cond_a

    nop

    nop

    nop

    nop

    nop

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v4

    nop

    nop

    float-to-double v11, v4

    nop

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    nop

    nop

    nop

    cmpg-double v4, v11, v19

    nop

    if-gez v4, :cond_a

    nop

    nop

    iget-object v4, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    if-nez v4, :cond_9

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_9
    iget-object v4, v10, Ltkb;->b:Ltkg;

    nop

    check-cast v4, Ltpi;

    nop

    nop

    iget v11, v4, Ltpi;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v11, v11, 0x4

    nop

    iput v11, v4, Ltpi;->b:I

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    iput v11, v4, Ltpi;->d:I

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    nop

    :cond_a
    :goto_9
    iget v4, v2, Llsc;->s:I

    nop

    nop

    nop

    iget-object v11, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v11

    nop

    nop

    nop

    if-nez v11, :cond_b

    nop

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_b
    rsub-int v4, v4, 0x168

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v10, Ltkb;->b:Ltkg;

    nop

    check-cast v11, Ltpi;

    nop

    nop

    nop

    iget v12, v11, Ltpi;->b:I

    nop

    nop

    nop

    or-int/lit8 v12, v12, 0x4

    nop

    iput v12, v11, Ltpi;->b:I

    nop

    nop

    nop

    nop

    rem-int/lit16 v4, v4, 0x168

    nop

    nop

    nop

    iput v4, v11, Ltpi;->d:I

    nop

    nop

    nop

    nop

    nop

    :goto_a
    div-float/2addr v5, v6

    nop

    nop

    nop

    nop

    nop

    div-float/2addr v7, v8

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->i()Ltkg;

    move-result-object v4

    nop

    nop

    check-cast v4, Ltpi;

    nop

    iget-object v6, v1, Lltb;->m:Lrss;

    nop

    invoke-virtual {v6}, Lrss;->h()Z

    move-result v6

    nop

    nop

    if-eqz v6, :cond_c

    nop

    iget-object v6, v1, Lltb;->m:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    iget-wide v10, v2, Llsc;->c:J

    nop

    nop

    invoke-interface {v6, v10, v11}, Lice;->a(J)Lsvr;

    move-result-object v6

    nop

    nop

    nop

    if-eqz v6, :cond_c

    nop

    invoke-static {v2, v6, v5, v7}, Lhst;->i(Llsc;Lsvr;FF)Lton;

    move-result-object v6

    nop

    nop

    nop

    nop

    move-object/from16 v16, v6

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    :cond_c
    const/16 v16, 0x0

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v16, :cond_d

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v5, v7}, Lhst;->e(Llsc;FF)Lton;

    move-result-object v16

    nop

    nop

    :cond_d
    move-object/from16 v15, v16

    nop

    sget-object v5, Ltpo;->a:Ltpo;

    nop

    nop

    invoke-virtual {v5}, Ltkg;->m()Ltkb;

    move-result-object v5

    nop

    iget-wide v6, v2, Llsc;->c:J

    nop

    nop

    nop

    iget-object v8, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    if-nez v8, :cond_e

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_e
    iget-object v8, v5, Ltkb;->b:Ltkg;

    nop

    nop

    move-object v10, v8

    nop

    nop

    nop

    nop

    check-cast v10, Ltpo;

    nop

    iget v11, v10, Ltpo;->b:I

    nop

    nop

    nop

    nop

    nop

    const/4 v14, 0x2

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v11, v14

    nop

    nop

    nop

    nop

    iput v11, v10, Ltpo;->b:I

    nop

    nop

    iput-wide v6, v10, Ltpo;->d:J

    nop

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    nop

    if-nez v6, :cond_f

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_f
    iget-object v6, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    move-object v7, v6

    nop

    nop

    nop

    nop

    check-cast v7, Ltpo;

    nop

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v15, v7, Ltpo;->g:Lton;

    nop

    nop

    nop

    nop

    iget v8, v7, Ltpo;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v8, v8, 0x40

    nop

    nop

    nop

    iput v8, v7, Ltpo;->b:I

    nop

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    if-nez v6, :cond_10

    nop

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_10
    iget-object v6, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    move-object v7, v6

    nop

    nop

    check-cast v7, Ltpo;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v7, Ltpo;->f:Ltpi;

    nop

    nop

    iget v4, v7, Ltpo;->b:I

    nop

    nop

    nop

    or-int/lit8 v4, v4, 0x20

    nop

    nop

    iput v4, v7, Ltpo;->b:I

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v4

    nop

    if-nez v4, :cond_11

    nop

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_11
    iget-object v4, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    move-object v6, v4

    nop

    nop

    nop

    nop

    check-cast v6, Ltpo;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v9, v6, Ltpo;->m:Ltpx;

    nop

    nop

    iget v7, v6, Ltpo;->b:I

    nop

    nop

    nop

    const/high16 v8, 0x200000

    nop

    nop

    nop

    nop

    or-int/2addr v7, v8

    nop

    nop

    iput v7, v6, Ltpo;->b:I

    nop

    nop

    if-eqz p3, :cond_2f

    nop

    nop

    nop

    iget-boolean v4, v2, Llsc;->r:Z

    nop

    nop

    nop

    nop

    if-nez v4, :cond_12

    nop

    nop

    nop

    iget-object v6, v1, Lltb;->k:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lrss;->h()Z

    move-result v7

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_12

    nop

    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    iget-wide v6, v2, Llsc;->c:J

    nop

    nop

    nop

    nop

    check-cast v4, Loeq;

    nop

    nop

    invoke-virtual {v4, v6, v7}, Loeq;->d(J)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    xor-int/2addr v4, v6

    nop

    nop

    nop

    :cond_12
    iget-object v6, v5, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-nez v6, :cond_13

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_13
    iget-object v6, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v6, Ltpo;

    nop

    nop

    nop

    nop

    nop

    iget v7, v6, Ltpo;->b:I

    nop

    or-int/lit16 v7, v7, 0x200

    nop

    nop

    iput v7, v6, Ltpo;->b:I

    nop

    iput-boolean v4, v6, Ltpo;->h:Z

    nop

    nop

    if-eqz v4, :cond_31

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    check-cast v2, Ltpo;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v4, v3, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->c:Z

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    xor-int/2addr v4, v5

    nop

    nop

    nop

    nop

    const-string v5, "BurstCurator closed"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v5}, Lrrf;->y(ZLjava/lang/Object;)V

    const-string v4, "BurstCurator.toByteArray"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v2}, Ltis;->h()[B

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v5, "BurstCurator.processYUVFrame"

    nop

    nop

    nop

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-wide v5, v3, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->b:J

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v5, v6, v4}, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->nativeProcessMetadata(J[B)[B

    move-result-object v4

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->BoJPFwiUZ:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, v3, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->a:Ltjv;

    nop

    nop

    sget-object v5, Ltpo;->a:Ltpo;

    nop

    nop

    array-length v6, v4

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    invoke-static {v5, v4, v7, v6, v3}, Ltkg;->q(Ltkg;[BIILtjv;)Ltkg;

    move-result-object v3

    nop

    nop

    invoke-static {v3}, Ltkg;->E(Ltkg;)V

    check-cast v3, Ltpo;

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ltky; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_17

    nop

    nop

    :goto_c
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_e
    move-object v4, v3

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object v2

    nop

    nop

    :cond_14
    :try_start_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    nop

    nop

    const-string v3, "Only direct buffers are currently supported"

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lltb;->b:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v3}, Lscs;->b()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    const-string v4, "Couldn\'t get planes for analysis."

    nop

    const/16 v5, 0xf95

    nop

    invoke-static {v4, v5, v3, v2}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    sget-object v2, Lrsa;->a:Lrsa;

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    move-object v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x1f

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

    :goto_13
    goto :goto_14

    nop

    nop

    nop

    nop

    nop

    :catch_1
    :try_start_6
    const-string v3, "BURST_CURATOR"

    nop

    nop

    nop

    nop

    const-string v5, "Proto serialization error."

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_1b

    nop

    nop

    nop

    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "Only direct buffers are currently supported"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    nop

    nop

    nop

    nop

    :cond_16
    move-object/from16 p3, v2

    nop

    nop

    nop

    move/from16 v29, v3

    nop

    nop

    move v2, v15

    nop

    nop

    nop

    nop

    move-object/from16 v30, v19

    nop

    nop

    move-object/from16 v3, v23

    nop

    nop

    invoke-interface {v6}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    nop

    nop

    invoke-interface {v6}, Lprv;->getPixelStride()I

    move-result v10

    nop

    nop

    nop

    invoke-interface {v6}, Lprv;->getRowStride()I

    move-result v11

    nop

    invoke-interface {v8}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    nop

    nop

    nop

    invoke-interface {v8}, Lprv;->getPixelStride()I

    move-result v13

    nop

    nop

    invoke-interface {v8}, Lprv;->getRowStride()I

    move-result v14

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    nop

    nop

    invoke-interface {v5}, Lprv;->getPixelStride()I

    move-result v16

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Lprv;->getRowStride()I

    move-result v17

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->c()I

    move-result v18

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->b()I

    move-result v19

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->a()I

    move-result v20

    nop

    nop

    nop

    nop

    nop

    iget-boolean v5, v3, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->c:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    xor-int/2addr v5, v6

    nop

    const-string v6, "BurstCurator closed"

    nop

    nop

    nop

    nop

    invoke-static {v5, v6}, Lrrf;->y(ZLjava/lang/Object;)V

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_14

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_14

    nop

    nop

    nop

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_14

    nop

    nop

    nop

    nop

    nop

    const-string v5, "BurstCurator.toByteArray"

    nop

    nop

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v4}, Ltis;->h()[B

    move-result-object v21

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    sget-object v5, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->warj:Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->b:J

    nop

    nop

    nop

    move-object v5, v3

    nop

    nop

    move-object v8, v9

    nop

    nop

    move v9, v10

    nop

    move v10, v11

    nop

    nop

    nop

    nop

    nop

    move-object v11, v12

    nop

    nop

    nop

    move v12, v13

    nop

    nop

    nop

    nop

    move v13, v14

    nop

    nop

    move-object v14, v15

    nop

    move/from16 v15, v16

    nop

    nop

    nop

    nop

    nop

    move/from16 v16, v17

    nop

    nop

    nop

    nop

    nop

    move/from16 v17, v18

    nop

    move/from16 v18, v19

    nop

    nop

    nop

    move-object/from16 v19, v21

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v5 .. v20}, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->nativeProcessYUV(JLjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII[BI)[B

    move-result-object v5

    nop

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v6, "BurstCurator.parseFrom"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v3, v3, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->a:Ltjv;

    nop

    sget-object v6, Ltpo;->a:Ltpo;

    nop

    nop

    nop

    nop

    array-length v7, v5

    nop

    nop

    invoke-static {v6, v5, v2, v7, v3}, Ltkg;->q(Ltkg;[BIILtjv;)Ltkg;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ltkg;->E(Ltkg;)V

    check-cast v3, Ltpo;

    nop
    :try_end_7
    .catch Ltky; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    monitor-exit p0

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_17
    move-object v2, v3

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_18
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_1a

    nop

    nop

    :catch_2
    :try_start_8
    const-string v3, "BURST_CURATOR"

    nop

    nop

    const-string v5, "Proto serialization error."

    nop

    nop

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_1b
    new-instance v3, Llsy;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v4}, Llsy;-><init>(Ltpo;)V

    iget-object v5, v1, Lltb;->e:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_2c

    nop

    nop

    nop

    new-instance v5, Landroid/graphics/RectF;

    nop

    nop

    nop

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iget-object v6, v4, Ltpo;->g:Lton;

    nop

    nop

    nop

    nop

    if-nez v6, :cond_17

    nop

    sget-object v6, Lton;->a:Lton;

    nop

    :cond_17
    iget-object v6, v6, Lton;->b:Ltkv;

    nop

    nop

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    nop

    nop

    nop

    if-nez v6, :cond_24

    nop

    nop

    iget-object v6, v4, Ltpo;->n:Ltou;

    nop

    if-nez v6, :cond_18

    nop

    nop

    nop

    sget-object v6, Ltou;->a:Ltou;

    nop

    nop

    :cond_18
    iget-object v6, v6, Ltou;->b:Ltkv;

    nop

    nop

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    nop

    nop

    nop

    nop

    if-nez v6, :cond_24

    nop

    nop

    nop

    nop

    iget-object v5, v4, Ltpo;->n:Ltou;

    nop

    nop

    nop

    if-nez v5, :cond_19

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Ltou;->a:Ltou;

    nop

    nop

    :cond_19
    iget-object v5, v5, Ltou;->b:Ltkv;

    nop

    nop

    nop

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Ltot;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v5, Ltot;->b:Ltos;

    nop

    nop

    nop

    nop

    if-nez v6, :cond_1a

    nop

    nop

    nop

    nop

    sget-object v6, Ltos;->a:Ltos;

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    iget-object v5, v5, Ltot;->c:Ltkv;

    nop

    nop

    nop

    nop

    invoke-interface {v5, v2}, Ltkv;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Ljava/lang/String;

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    nop

    nop

    nop

    nop

    const v8, -0x3133901a

    nop

    if-eq v7, v8, :cond_1d

    nop

    nop

    const v8, 0x360802

    nop

    if-eq v7, v8, :cond_1c

    nop

    const v8, 0x4f5090bd

    nop

    nop

    nop

    if-eq v7, v8, :cond_1b

    nop

    goto :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    const-string v7, "thumbs_up"

    nop

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_1e

    nop

    nop

    nop

    nop

    nop

    move v15, v2

    nop

    nop

    nop

    goto :goto_1d

    nop

    nop

    nop

    :cond_1c
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    sget-object v7, Lcom/google/android/apps/camera/legacy/lightcycle/panorama/RpD/WBNWZfrn;->vryFyLErOv:Ljava/lang/String;

    nop

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_1e

    nop

    nop

    nop

    nop

    const/4 v15, 0x1

    nop

    nop

    goto :goto_1d

    nop

    nop

    nop

    nop

    :cond_1d
    const/4 v7, 0x0

    nop

    sget-object v7, Lcom/google/android/apps/camera/imax/cyclops/metadata/vUwG/ZKDLyMOUoobPIS;->noOqJSUWjGbbq:Ljava/lang/String;

    nop

    nop

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_1e

    nop

    nop

    nop

    nop

    const/4 v15, 0x2

    nop

    nop

    nop

    nop

    goto :goto_1d

    nop

    nop

    nop

    :cond_1e
    :goto_1c
    const/4 v15, -0x1

    nop

    nop

    nop

    :goto_1d
    if-eqz v15, :cond_21

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    if-eq v15, v5, :cond_20

    nop

    nop

    const/4 v7, 0x2

    nop

    nop

    nop

    if-eq v15, v7, :cond_1f

    nop

    nop

    nop

    const/4 v14, 0x1

    nop

    nop

    nop

    goto :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_1f
    move/from16 v14, v29

    nop

    nop

    nop

    nop

    goto :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_20
    const/4 v7, 0x2

    nop

    nop

    move v14, v7

    nop

    nop

    nop

    nop

    goto :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_21
    const/4 v7, 0x2

    nop

    nop

    move/from16 v14, v22

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v5, v6, Ltos;->c:Ltkl;

    nop

    nop

    nop

    invoke-interface {v5}, Ltkl;->size()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-lez v5, :cond_23

    nop

    nop

    nop

    iget-object v5, v6, Ltos;->e:Ltkl;

    nop

    invoke-interface {v5}, Ltkl;->size()I

    move-result v5

    nop

    nop

    if-lez v5, :cond_23

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v6, Ltos;->b:Ltkl;

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ltkl;->size()I

    move-result v5

    nop

    nop

    if-lez v5, :cond_23

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v6, Ltos;->d:Ltkl;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ltkl;->size()I

    move-result v5

    nop

    nop

    if-gtz v5, :cond_22

    nop

    nop

    nop

    nop

    nop

    goto :goto_1f

    nop

    nop

    nop

    :cond_22
    new-instance v5, Landroid/graphics/RectF;

    nop

    nop

    iget-object v8, v6, Ltos;->c:Ltkl;

    nop

    nop

    nop

    nop

    invoke-interface {v8, v2}, Ltkl;->d(I)F

    move-result v8

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v6, Ltos;->b:Ltkl;

    nop

    nop

    nop

    nop

    invoke-interface {v9, v2}, Ltkl;->d(I)F

    move-result v9

    nop

    nop

    nop

    nop

    iget-object v10, v6, Ltos;->e:Ltkl;

    nop

    nop

    invoke-interface {v10, v2}, Ltkl;->d(I)F

    move-result v10

    nop

    nop

    iget-object v6, v6, Ltos;->d:Ltkl;

    nop

    nop

    nop

    nop

    invoke-interface {v6, v2}, Ltkl;->d(I)F

    move-result v6

    nop

    invoke-direct {v5, v8, v9, v10, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_20

    nop

    nop

    nop

    nop

    :cond_23
    :goto_1f
    new-instance v5, Landroid/graphics/RectF;

    nop

    nop

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    goto :goto_20

    nop

    nop

    :cond_24
    const/4 v7, 0x2

    nop

    nop

    const/4 v14, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v6, v1, Lltb;->f:Lrss;

    nop

    nop

    nop

    invoke-virtual {v6}, Lrss;->h()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_25

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    check-cast v6, Lied;

    nop

    nop

    nop

    nop

    invoke-static {v14}, Lhhg;->S(I)Z

    move-result v8

    nop

    nop

    nop

    nop

    iput-boolean v8, v6, Lied;->c:Z

    nop

    nop

    nop

    :cond_25
    move-object/from16 v6, p2

    nop

    iget-object v6, v6, Llsc;->o:Landroid/graphics/Rect;

    nop

    new-instance v8, Lieb;

    nop

    invoke-direct {v8}, Lieb;-><init>()V

    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Lieb;->b(I)V

    invoke-virtual {v8, v2}, Lieb;->c(I)V

    iput v14, v8, Lieb;->g:I

    nop

    nop

    iput-object v5, v8, Lieb;->a:Landroid/graphics/RectF;

    nop

    nop

    invoke-virtual/range {p3 .. p3}, Lrss;->h()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_26

    nop

    nop

    nop

    nop

    invoke-virtual/range {p3 .. p3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Lief;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lief;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    new-instance v5, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    nop

    nop

    const/high16 v10, 0x44870000    # 1080.0f

    nop

    nop

    sub-float v9, v10, v9

    nop

    nop

    invoke-static {v9, v10}, Lhhg;->T(FF)F

    move-result v9

    nop

    nop

    nop

    nop

    iget v11, v2, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    const/high16 v12, 0x44b40000    # 1440.0f

    nop

    nop

    nop

    nop

    invoke-static {v11, v12}, Lhhg;->T(FF)F

    move-result v11

    nop

    iget v13, v2, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    nop

    sub-float v13, v10, v13

    nop

    nop

    nop

    nop

    invoke-static {v13, v10}, Lhhg;->T(FF)F

    move-result v10

    nop

    iget v2, v2, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v12}, Lhhg;->T(FF)F

    move-result v2

    nop

    nop

    nop

    invoke-direct {v5, v9, v11, v10, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_21

    nop

    nop

    nop

    nop

    :cond_26
    new-instance v5, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    :goto_21
    iput-object v5, v8, Lieb;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    iget-wide v9, v4, Ltpo;->e:J

    nop

    nop

    iput-wide v9, v8, Lieb;->c:J

    nop

    nop

    nop

    nop

    iget-byte v2, v8, Lieb;->f:B

    nop

    nop

    or-int/lit8 v5, v2, 0x1

    nop

    nop

    int-to-byte v5, v5

    nop

    iput-byte v5, v8, Lieb;->f:B

    nop

    iget-wide v9, v4, Ltpo;->d:J

    nop

    nop

    nop

    nop

    nop

    iput-wide v9, v8, Lieb;->d:J

    nop

    or-int/lit8 v2, v2, 0x3

    nop

    nop

    nop

    nop

    int-to-byte v2, v2

    nop

    nop

    nop

    nop

    nop

    iput-byte v2, v8, Lieb;->f:B

    nop

    nop

    nop

    if-eqz v6, :cond_27

    nop

    nop

    nop

    goto :goto_22

    nop

    nop

    nop

    :cond_27
    new-instance v6, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    :goto_22
    iput-object v6, v8, Lieb;->e:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v4, Ltpo;->g:Lton;

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_28

    nop

    nop

    nop

    sget-object v2, Lton;->a:Lton;

    nop

    :cond_28
    iget-object v2, v2, Lton;->b:Ltkv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ltkv;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v2}, Lieb;->c(I)V

    invoke-virtual {v8}, Lieb;->a()Liec;

    move-result-object v2

    nop

    nop

    nop

    iget-object v4, v1, Lltb;->e:Lrss;

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lien;

    nop

    nop

    nop

    move-object/from16 v5, v30

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v5, Lton;->b:Ltkv;

    nop

    nop

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    nop

    nop

    if-eqz v6, :cond_29

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_29
    new-instance v6, Ljava/util/ArrayList;

    nop

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v5, Lton;->b:Ltkv;

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    if-eqz v8, :cond_2b

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    check-cast v8, Ltom;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v8, Ltom;->c:Ltok;

    nop

    nop

    nop

    nop

    nop

    if-nez v8, :cond_2a

    nop

    nop

    nop

    sget-object v8, Ltok;->a:Ltok;

    nop

    nop

    :cond_2a
    new-instance v9, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    iget v10, v8, Ltok;->c:F

    nop

    nop

    iget v11, v8, Ltok;->d:F

    nop

    nop

    nop

    nop

    nop

    iget v12, v8, Ltok;->e:F

    nop

    nop

    nop

    nop

    nop

    iget v8, v8, Ltok;->f:F

    nop

    nop

    nop

    invoke-direct {v9, v10, v11, v12, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_2b
    invoke-static {v6}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v4, v2, v5}, Lien;->d(Liec;Lrss;)V

    goto :goto_25

    nop

    nop

    :cond_2c
    const/4 v7, 0x2

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v2, v1, Lltb;->i:Lrss;

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_2d

    nop

    nop

    nop

    iget-object v2, v1, Lltb;->i:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Ljby;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Llsy;->a()Lryb;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    new-instance v5, Llsw;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v7}, Llsw;-><init>(I)V

    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    sget v5, Lryb;->d:I

    nop

    nop

    nop

    nop

    sget-object v5, Lrvj;->a:Lj$/util/stream/Collector;

    nop

    nop

    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Ljby;->b(Ljava/util/List;)V

    :cond_2d
    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-object v2

    nop

    nop

    nop

    :cond_2e
    :try_start_9
    sget-object v2, Lltb;->b:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0xf97

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    const-string v3, "Sensor region cannot be null."

    nop

    invoke-interface {v2, v3}, Lscz;->s(Ljava/lang/String;)V

    sget-object v2, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_27
    move-object/from16 v1, p0

    nop

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

    :goto_28
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :cond_2f
    :try_start_a
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    if-nez v4, :cond_30

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_30
    iget-object v4, v5, Ltkb;->b:Ltkg;

    nop

    check-cast v4, Ltpo;

    nop

    nop

    nop

    nop

    iget v6, v4, Ltpo;->b:I

    nop

    or-int/lit16 v6, v6, 0x200

    nop

    nop

    nop

    nop

    iput v6, v4, Ltpo;->b:I

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-boolean v6, v4, Ltpo;->h:Z

    nop

    nop

    :cond_31
    iget-object v4, v1, Lltb;->f:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->h()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    sget-object v7, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    const/4 v12, 0x3

    nop

    nop

    nop

    if-eqz v6, :cond_46

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lied;

    nop

    nop

    nop

    iget-wide v6, v2, Llsc;->c:J

    nop

    nop

    nop

    nop

    iget-object v8, v15, Lton;->b:Ltkv;

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_32

    nop

    invoke-virtual {v4}, Lied;->a()V

    sget-object v4, Lrsa;->a:Lrsa;

    nop

    nop

    :goto_29
    move-object/from16 v23, v3

    nop

    move-object v7, v4

    nop

    move-object/from16 v20, v5

    nop

    nop

    nop

    nop

    move v3, v12

    nop

    nop

    nop

    nop

    move-object/from16 v19, v15

    nop

    goto/16 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_32
    iget-boolean v8, v4, Lied;->c:Z

    nop

    nop

    if-eqz v8, :cond_33

    nop

    nop

    nop

    iget-object v8, v4, Lied;->d:Lief;

    nop

    nop

    nop

    if-eqz v8, :cond_33

    nop

    iput-wide v6, v4, Lied;->b:J

    nop

    nop

    nop

    nop

    invoke-static {v8}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v4

    nop

    nop

    goto :goto_29

    nop

    :cond_33
    iget-object v8, v4, Lied;->a:Ljava/util/Queue;

    nop

    nop

    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v8

    nop

    nop

    nop

    nop

    if-nez v8, :cond_35

    nop

    nop

    nop

    iget-wide v8, v4, Lied;->b:J

    nop

    nop

    nop

    nop

    nop

    sub-long v8, v6, v8

    nop

    nop

    nop

    nop

    const-wide/32 v10, 0x11e1a300

    nop

    cmp-long v8, v8, v10

    nop

    nop

    nop

    nop

    if-lez v8, :cond_34

    nop

    nop

    nop

    goto :goto_2a

    nop

    nop

    nop

    nop

    :cond_34
    move-object/from16 v23, v3

    nop

    nop

    move-object/from16 v20, v5

    nop

    nop

    nop

    nop

    move v3, v12

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v19, v15

    nop

    nop

    goto/16 :goto_32

    nop

    nop

    nop

    nop

    :cond_35
    :goto_2a
    invoke-virtual {v4}, Lied;->a()V

    iget-object v8, v15, Lton;->b:Ltkv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8}, Ltkv;->size()I

    move-result v8

    nop

    if-gt v8, v12, :cond_37

    nop

    iget-object v8, v15, Lton;->b:Ltkv;

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_36

    nop

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    check-cast v9, Ltom;

    nop

    nop

    nop

    nop

    invoke-static {v9}, Lief;->a(Ltom;)Lief;

    move-result-object v9

    nop

    nop

    iget-object v10, v4, Lied;->a:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v10, v9}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_36
    move-object/from16 v23, v3

    nop

    nop

    nop

    move-object/from16 v20, v5

    nop

    nop

    move v3, v12

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v19, v15

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_37
    new-instance v8, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    invoke-direct {v8, v13, v13, v13, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v9, Ljava/util/PriorityQueue;

    nop

    nop

    nop

    nop

    iget-object v10, v15, Lton;->b:Ltkv;

    nop

    invoke-interface {v10}, Ltkv;->size()I

    move-result v10

    nop

    nop

    nop

    new-instance v11, Ldqy;

    nop

    nop

    nop

    nop

    const/4 v14, 0x7

    nop

    nop

    nop

    invoke-direct {v11, v14}, Ldqy;-><init>(I)V

    invoke-direct {v9, v10, v11}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iget-object v10, v15, Lton;->b:Ltkv;

    nop

    nop

    nop

    nop

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    nop

    nop

    nop

    nop

    nop

    if-eqz v11, :cond_3a

    nop

    nop

    nop

    nop

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    check-cast v11, Ltom;

    nop

    nop

    nop

    nop

    invoke-static {v11}, Lief;->a(Ltom;)Lief;

    move-result-object v11

    nop

    nop

    nop

    invoke-interface {v9, v11}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v14

    nop

    cmpl-float v14, v14, v13

    nop

    if-eqz v14, :cond_39

    nop

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v14

    nop

    nop

    nop

    nop

    nop

    cmpl-float v14, v14, v13

    nop

    if-nez v14, :cond_38

    nop

    nop

    nop

    nop

    goto :goto_2d

    nop

    nop

    nop

    :cond_38
    iget-object v11, v11, Lief;->b:Landroid/graphics/RectF;

    nop

    invoke-virtual {v8, v11}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_39
    :goto_2d
    iget-object v8, v11, Lief;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    new-instance v11, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    invoke-direct {v11, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object v8, v11

    nop

    nop

    nop

    nop

    nop

    goto :goto_2c

    nop

    :cond_3a
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v10

    nop

    cmpl-float v10, v10, v13

    nop

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_36

    nop

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v10

    nop

    nop

    nop

    nop

    cmpl-float v10, v10, v13

    nop

    nop

    if-eqz v10, :cond_36

    nop

    nop

    new-instance v10, Ljava/util/ArrayDeque;

    nop

    nop

    nop

    invoke-direct {v10, v12}, Ljava/util/ArrayDeque;-><init>(I)V

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v11

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v13

    nop

    nop

    nop

    nop

    nop

    cmpg-float v11, v11, v13

    nop

    nop

    nop

    nop

    nop

    const/high16 v13, 0x40400000    # 3.0f

    nop

    if-gtz v11, :cond_3c

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v11

    nop

    nop

    nop

    nop

    nop

    div-float/2addr v11, v13

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    :goto_2e
    if-lt v13, v12, :cond_3b

    nop

    nop

    move-object/from16 v23, v3

    nop

    nop

    nop

    move-object/from16 v20, v5

    nop

    nop

    nop

    nop

    nop

    move v3, v12

    nop

    nop

    nop

    nop

    move-object/from16 v19, v15

    nop

    goto/16 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_3b
    new-instance v14, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    iget v12, v8, Landroid/graphics/RectF;->left:F

    nop

    nop

    move-object/from16 v19, v15

    nop

    nop

    nop

    nop

    iget v15, v8, Landroid/graphics/RectF;->top:F

    nop

    int-to-float v2, v13

    nop

    nop

    nop

    nop

    mul-float/2addr v2, v11

    nop

    nop

    nop

    nop

    nop

    add-float/2addr v15, v2

    nop

    nop

    nop

    nop

    nop

    iget v2, v8, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    nop

    move-object/from16 v23, v3

    nop

    nop

    nop

    nop

    nop

    iget v3, v8, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v13, v13, 0x1

    nop

    nop

    move-object/from16 v20, v5

    nop

    nop

    nop

    nop

    nop

    int-to-float v5, v13

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v5, v11

    nop

    nop

    nop

    nop

    nop

    add-float/2addr v3, v5

    nop

    nop

    nop

    invoke-direct {v14, v12, v15, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v10, v14}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p2

    nop

    nop

    move-object/from16 v15, v19

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v5, v20

    nop

    nop

    nop

    nop

    move-object/from16 v3, v23

    nop

    nop

    nop

    const/4 v12, 0x3

    nop

    nop

    nop

    goto/16 :goto_2e

    nop

    :cond_3c
    move-object/from16 v23, v3

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v20, v5

    nop

    nop

    nop

    nop

    move-object/from16 v19, v15

    nop

    nop

    nop

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v2

    nop

    div-float/2addr v2, v13

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    :goto_2f
    if-ge v11, v3, :cond_3d

    nop

    nop

    new-instance v5, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    iget v12, v8, Landroid/graphics/RectF;->left:F

    nop

    int-to-float v13, v11

    nop

    nop

    mul-float/2addr v13, v2

    nop

    nop

    nop

    add-float/2addr v12, v13

    nop

    nop

    nop

    nop

    nop

    iget v13, v8, Landroid/graphics/RectF;->top:F

    nop

    nop

    iget v14, v8, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    int-to-float v15, v11

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v15, v2

    nop

    nop

    nop

    add-float/2addr v14, v15

    nop

    nop

    iget v15, v8, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    nop

    invoke-direct {v5, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v10, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    nop

    nop

    nop

    :cond_3d
    :goto_30
    invoke-interface {v9}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-nez v2, :cond_3f

    nop

    nop

    nop

    nop

    invoke-interface {v10}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    nop

    if-nez v2, :cond_3f

    nop

    nop

    nop

    nop

    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lief;

    nop

    nop

    nop

    nop

    invoke-interface {v10}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    :cond_3e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_3d

    nop

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    check-cast v8, Landroid/graphics/RectF;

    nop

    nop

    if-eqz v2, :cond_3e

    nop

    nop

    nop

    nop

    iget-object v11, v2, Lief;->a:Landroid/graphics/RectF;

    nop

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v12, v11}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v11

    nop

    nop

    nop

    if-eqz v11, :cond_3e

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v4, Lied;->a:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    invoke-interface {v5, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v8}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_30

    nop

    :cond_3f
    :goto_31
    iput-wide v6, v4, Lied;->b:J

    nop

    :goto_32
    iget-object v2, v4, Lied;->a:Ljava/util/Queue;

    nop

    nop

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Lief;

    nop

    nop

    iput-object v2, v4, Lied;->d:Lief;

    nop

    nop

    iget-object v2, v4, Lied;->d:Lief;

    nop

    nop

    invoke-static {v2}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    nop

    nop

    nop

    move-object v7, v2

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v7}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_45

    nop

    nop

    nop

    sget-object v2, Ltpq;->a:Ltpq;

    nop

    nop

    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Lief;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lief;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    iget v4, v4, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    if-nez v5, :cond_40

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_40
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v5, Ltpq;

    nop

    nop

    nop

    nop

    iget v6, v5, Ltpq;->b:I

    nop

    nop

    const/4 v8, 0x1

    nop

    or-int/2addr v6, v8

    nop

    nop

    iput v6, v5, Ltpq;->b:I

    nop

    nop

    iput v4, v5, Ltpq;->c:F

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lief;

    nop

    iget-object v4, v4, Lief;->b:Landroid/graphics/RectF;

    nop

    iget v4, v4, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    if-nez v5, :cond_41

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_41
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    check-cast v5, Ltpq;

    nop

    nop

    iget v6, v5, Ltpq;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v6, v6, 0x4

    nop

    nop

    nop

    nop

    iput v6, v5, Ltpq;->b:I

    nop

    nop

    iput v4, v5, Ltpq;->e:F

    nop

    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lief;

    nop

    nop

    nop

    iget-object v4, v4, Lief;->b:Landroid/graphics/RectF;

    nop

    nop

    iget v4, v4, Landroid/graphics/RectF;->top:F

    nop

    nop

    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    if-nez v5, :cond_42

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_42
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v5, Ltpq;

    nop

    nop

    nop

    nop

    nop

    iget v6, v5, Ltpq;->b:I

    nop

    const/4 v8, 0x2

    nop

    or-int/2addr v6, v8

    nop

    iput v6, v5, Ltpq;->b:I

    nop

    nop

    nop

    iput v4, v5, Ltpq;->d:F

    nop

    nop

    nop

    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Lief;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lief;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    if-nez v5, :cond_43

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_43
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Ltpq;

    nop

    nop

    nop

    nop

    nop

    iget v6, v5, Ltpq;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v6, v6, 0x8

    nop

    nop

    nop

    nop

    nop

    iput v6, v5, Ltpq;->b:I

    nop

    nop

    iput v4, v5, Ltpq;->f:F

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Ltpq;

    nop

    move-object/from16 v4, v20

    nop

    nop

    iget-object v5, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    if-nez v5, :cond_44

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_44
    iget-object v5, v4, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v5, Ltpo;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v5, Ltpo;->o:Ltpq;

    nop

    iget v2, v5, Ltpo;->b:I

    nop

    nop

    nop

    const/high16 v6, 0x4000000

    nop

    nop

    nop

    nop

    or-int/2addr v2, v6

    nop

    nop

    nop

    iput v2, v5, Ltpo;->b:I

    nop

    nop

    nop

    nop

    goto :goto_34

    nop

    nop

    nop

    :cond_45
    move-object/from16 v4, v20

    nop

    goto :goto_34

    nop

    :cond_46
    move-object/from16 v23, v3

    nop

    nop

    move-object v4, v5

    nop

    move v3, v12

    nop

    nop

    move-object/from16 v19, v15

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move-object v2, v7

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->i()Ltkg;

    move-result-object v4

    nop

    nop

    check-cast v4, Ltpo;

    nop

    nop

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-interface/range {p1 .. p1}, Lprw;->g()Ljava/util/List;

    move-result-object v5

    nop

    nop
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move-object v2, v0

    nop

    nop

    :try_start_c
    monitor-exit p0

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    return-object v2

    nop

    :cond_47
    :try_start_d
    sget-object v2, Lltb;->b:Lsdb;

    nop

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

    const/16 v3, 0xf91

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    nop

    const-string v3, "Input frame and metadata cannot be null."

    nop

    invoke-interface {v2, v3}, Lscz;->s(Ljava/lang/String;)V

    sget-object v2, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_48

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

    nop

    :cond_48
    goto/32 :goto_c

    nop

    :goto_38
    move-object/from16 v2, p2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_39
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

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    monitor-exit p0

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

    nop

    :goto_3b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    throw v2

    nop

    nop

    :goto_3e
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto :goto_41

    nop

    nop

    nop

    nop

    nop

    :catch_3
    :try_start_e
    const-string v3, "BURST_CURATOR"

    nop

    nop

    const-string v4, "Proto serialization error."

    nop

    nop

    nop

    nop

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v3, Llsy;

    nop

    nop

    nop

    invoke-direct {v3, v2}, Llsy;-><init>(Ltpo;)V

    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    nop

    nop

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/32 :goto_18

    nop

    nop
.end method

.method public final c()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lltb;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_3

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

    goto/32 :goto_1

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

    nop
.end method

.method public final declared-synchronized close()V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    :goto_3
    monitor-exit p0

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

    :goto_4
    if-lez v0, :cond_1

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

    :goto_5
    goto/32 :goto_2

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    return-void

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x6

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

    :goto_a
    monitor-exit p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lltb;->n:Z

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lltb;->n:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lltb;->d:Lsui;

    nop

    nop

    new-instance v2, Lmfs;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, v0}, Lmfs;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1, v2}, Lolx;->bm(Lsui;Lpbz;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
