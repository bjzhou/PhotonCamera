.class final Lpsy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpsf;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final b:I

.field private final c:Lptk;

.field private final d:Lpsg;

.field private final e:J

.field private final f:J

.field private final g:J

.field private final h:Lpti;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Lptf;

.field private final m:Lpdf;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Lpth;

.field private final q:Lsuu;

.field private final r:I

.field private final s:Lpsr;

.field private final t:Lqar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    const v1, 0x12

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    const v0, 0x3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sput-object v0, Lpsy;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public constructor <init>(Lptk;Lqar;Lptf;Lpsr;JJJLjava/lang/String;ILpti;Ljava/lang/String;Ljava/lang/String;Lpdf;)V
    .locals 9

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-wide/from16 v3, p9

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    iput-object v5, v0, Lpsy;->k:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    iput-wide v3, v0, Lpsy;->g:J

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v5, v1, v2}, Lpsg;->a(J)V

    goto/32 :goto_3e

    nop

    nop

    :goto_5
    iput-object v7, v0, Lpsy;->c:Lptk;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    move-object v5, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_7
    move-object v7, p4

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

    nop

    :goto_8
    iput-object v5, v0, Lpsy;->i:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_9
    new-instance v5, Lsuu;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_a
    int-to-byte v3, v3

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

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

    :goto_d
    move-object v7, v6

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_10
    new-instance v5, Lpsg;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v6, ""

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v7, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_13
    move-object/from16 v5, p13

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v6, v5, Lpsg;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v6, v0, Lpsy;->o:Ljava/lang/String;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v5}, Lsuu;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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

    :goto_18
    iput-wide v1, v0, Lpsy;->f:J

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v6, v5, Lpsg;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v5, p14

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1b
    or-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    iput-wide v3, v5, Lpsg;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_1d
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_27

    nop

    nop

    :goto_1f
    iput-object v5, v0, Lpsy;->q:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_20
    move/from16 v5, p12

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_22
    iput-object v5, v0, Lpsy;->h:Lpti;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_24
    move-object v7, p1

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

    :goto_25
    move-object/from16 v5, p16

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_26
    move-wide v7, p5

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_27
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_28
    iput-object v5, v0, Lpsy;->l:Lptf;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_29
    move-wide/from16 v1, p7

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v5, v7}, Lpti;->c(Ljava/lang/String;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2b
    iput v5, v0, Lpsy;->r:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2c
    const v1, 0x15

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v7}, La;->au(Z)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static/range {p15 .. p15}, Lpuq;->aQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

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

    :goto_2f
    move-object/from16 v5, p11

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v5, v0, Lpsy;->m:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_31
    move-object/from16 v5, p15

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_32
    invoke-direct {v5}, Lpsg;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput-wide v7, v0, Lpsy;->e:J

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_34
    goto/32 :goto_1e

    nop

    :goto_35
    if-eqz v7, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iput-byte v3, v5, Lpsg;->c:B

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_37
    iput-object v7, v0, Lpsy;->t:Lqar;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_38
    sget-object v1, Lpsy;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_39
    return-void

    nop

    nop

    :goto_3a
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iput v1, v0, Lpsy;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object v6, Lptl;->a:Lptl;

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

    :goto_3d
    iget-byte v3, v5, Lpsg;->c:B

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3e
    iput-object v5, v0, Lpsy;->d:Lpsg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_3f
    iput-object v5, v0, Lpsy;->p:Lpth;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_40
    iput-object v5, v0, Lpsy;->j:Ljava/lang/String;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_42
    iput-object v7, v0, Lpsy;->s:Lpsr;

    nop

    goto/32 :goto_26

    nop

    nop
.end method

.method private final b1051a9d8893542362ad09051775f8f6m()Lpth;
    .locals 14

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Lpsy;->j:Ljava/lang/String;

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

    :goto_2
    iget-wide v3, p0, Lpsy;->e:J

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

    :goto_3
    iget-object v11, p0, Lpsy;->k:Ljava/lang/String;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_6
    const-string v2, ""

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    :goto_9
    invoke-interface {v1, v0, v2}, Lptk;->a(Lptp;Lptf;)Lpth;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    iget-wide v9, p0, Lpsy;->f:J

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_c
    iget-wide v7, p0, Lpsy;->g:J

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct/range {v2 .. v13}, Lpta;-><init>(JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_2f

    nop

    nop

    :goto_e
    iget-object p0, p0, Lpsy;->m:Lpdf;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    move-object v2, v0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_10
    invoke-interface {v1, v0}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v2, v2, Lqar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v12, p0, Lpsy;->o:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_15
    check-cast v2, Lpsu;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_16
    iget-object v3, p0, Lpsy;->h:Lpti;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v2, "-create"

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

    :goto_18
    iget-object v1, p0, Lpsy;->m:Lpdf;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1b
    iget-object v2, p0, Lpsy;->t:Lqar;

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

    :goto_1c
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v2, v2, Lpsu;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_21
    iget-object v2, p0, Lpsy;->l:Lptf;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-wide v2, v0, Lpta;->a:J

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_23
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-object v0

    nop

    nop

    :goto_25
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_26
    invoke-static {v1}, Lpuq;->aQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-wide v5, v9

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Lpsy;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2b
    iget-wide v3, v0, Lpta;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance v0, Lpta;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_30
    sget-object v2, Lcom/google/android/apps/camera/debug/metrics/Rn/hhAHoOiyE;->aAMlEX:Ljava/lang/String;

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

    :goto_31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v4, p0, Lpsy;->i:Ljava/lang/String;

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

    :goto_34
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_36
    iget-wide v2, v0, Lpta;->c:J

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v3, v4, v0, v1, v2}, Lptp;->a(Lpti;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lptp;

    move-result-object v0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-eqz v2, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_39
    iget-object v13, p0, Lpsy;->j:Ljava/lang/String;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v1, p0, Lpsy;->c:Lptk;

    nop

    goto/32 :goto_21

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return-wide v0

    nop

    nop

    :cond_0
    goto/32 :goto_1

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

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lpsy;->p:Lpth;

    nop

    if-eqz v0, :cond_0

    nop

    nop

    invoke-interface {v0}, Lpth;->a()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

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

    :goto_b
    const v0, 0xa

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

    :goto_c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_d
    return-wide v0

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    throw v0

    nop

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

    nop
.end method

.method public final b()Landroid/net/Uri;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lpth;->h()Landroid/net/Uri;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

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

    :goto_3
    iget-object p0, p0, Lpsy;->p:Lpth;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

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
.end method

.method public final c()Lsui;
    .locals 0

    goto/32 :goto_2

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
    invoke-static {p0}, Lsgj;->P(Lsui;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpsy;->q:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()Ljava/io/FileInputStream;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x3

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

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    const v0, 0x1a

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lpsy;->n:Z

    nop

    nop

    nop

    nop

    xor-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    const-string v1, "Cannot open an input stream after %s has been published or abandoned."

    nop

    nop

    nop

    invoke-static {v0, v1, p0}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    const-string v1, "#openInputStream"

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    iget-object v1, p0, Lpsy;->m:Lpdf;

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lpsy;->p:Lpth;

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lpsy;->b1051a9d8893542362ad09051775f8f6m()Lpth;

    move-result-object v0

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lpsy;->p:Lpth;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lpsy;->p:Lpth;

    nop

    nop

    nop

    invoke-interface {v0}, Lpth;->b()Ljava/io/FileInputStream;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v1, p0, Lpsy;->p:Lpth;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpth;->i()Lptp;

    move-result-object v1

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lpsy;->m:Lpdf;

    nop

    invoke-interface {v1}, Lpdf;->g()V

    iget-object v1, p0, Lpsy;->q:Lsuu;

    nop

    iget-object v2, p0, Lpsy;->p:Lpth;

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lpth;->h()Landroid/net/Uri;

    move-result-object v2

    nop

    nop

    invoke-virtual {v1, v2}, Lsuu;->e(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    iget-object v1, p0, Lpsy;->m:Lpdf;

    nop

    invoke-interface {v1}, Lpdf;->g()V

    throw v0

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_a
    throw v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized e()Ljava/io/FileOutputStream;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    const v1, 0x20

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    :goto_3
    goto/32 :goto_4

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

    :try_start_0
    iget-boolean v0, p0, Lpsy;->n:Z

    nop

    nop

    nop

    nop

    nop

    xor-int/lit8 v0, v0, 0x1

    nop

    const-string v1, "Cannot open an output stream after %s has been published or abandoned."

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1, p0}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    const-string v1, "#openOutputStream"

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    iget-object v1, p0, Lpsy;->m:Lpdf;

    nop

    invoke-interface {v1, v0}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lpsy;->p:Lpth;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    invoke-direct {p0}, Lpsy;->b1051a9d8893542362ad09051775f8f6m()Lpth;

    move-result-object v0

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lpsy;->p:Lpth;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lpsy;->p:Lpth;

    nop

    nop

    nop

    invoke-interface {v0}, Lpth;->c()Ljava/io/FileOutputStream;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v1, p0, Lpsy;->p:Lpth;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpth;->i()Lptp;

    move-result-object v1

    nop

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lpsy;->m:Lpdf;

    nop

    invoke-interface {v1}, Lpdf;->g()V

    iget-object v1, p0, Lpsy;->q:Lsuu;

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lpsy;->p:Lpth;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lpth;->h()Landroid/net/Uri;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lsuu;->e(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_0

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

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_a
    goto/32 :goto_3

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_3
    iget-object v1, p0, Lpsy;->m:Lpdf;

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V

    iget-object v1, p0, Lpsy;->q:Lsuu;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lpsy;->p:Lpth;

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lpth;->h()Landroid/net/Uri;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lsuu;->e(Ljava/lang/Object;)Z

    throw v0

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final declared-synchronized f()V
    .locals 1

    goto/32 :goto_5

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

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw v0

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

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

    :goto_2
    return-void

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    :try_start_2
    iput-boolean v0, p0, Lpsy;->n:Z

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v0, p0, Lpsy;->s:Lpsr;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p0}, Lpsr;->c(Lpsy;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    :try_start_4
    monitor-enter p0

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-boolean v0, p0, Lpsy;->n:Z

    nop

    nop

    if-eqz v0, :cond_0

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
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x9

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    :try_start_0
    iget-boolean v0, p0, Lpsy;->n:Z

    nop

    if-eqz v0, :cond_0

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

    return-void

    nop

    nop

    nop

    nop

    :cond_0
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lpsy;->n:Z

    nop

    nop

    nop

    iget-object v0, p0, Lpsy;->d:Lpsg;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpsy;->p:Lpth;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lpsg;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Lpsr;->d(Lpsy;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lpsy;->s:Lpsr;

    nop

    goto/32 :goto_3

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

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

    nop

    goto/32 :goto_c

    nop

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
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    throw v0

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_4

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lpsy;->n:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    iput-object p1, p0, Lpsy;->o:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    iput-object p1, p0, Lpsg;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    xor-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    const-string v1, "Cannot set tag after %s has been published or abandoned."

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_f
    iget-object p0, p0, Lpsy;->d:Lpsg;

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

    :goto_10
    invoke-static {v0, v1, p0}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized i(J)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lpsy;->n:Z

    nop

    nop

    nop

    nop

    nop

    xor-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    const-string v1, "Cannot set timestamp after %s has been published or abandoned."

    nop

    nop

    nop

    invoke-static {v0, v1, p0}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lpsy;->d:Lpsg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1, p2}, Lpsg;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

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

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    const v1, 0xf

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_5

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final declared-synchronized j()V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x13

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
    const v1, 0x18

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

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    :try_start_0
    iget-boolean v0, p0, Lpsy;->n:Z

    nop

    nop

    xor-int/lit8 v0, v0, 0x1

    nop

    nop

    const-string v1, "Cannot create new file after %s has been published or abandoned."

    nop

    invoke-static {v0, v1, p0}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lpsy;->p:Lpth;

    nop

    if-nez v0, :cond_1

    nop

    nop

    iget-object v0, p0, Lpsy;->m:Lpdf;

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    const-string v2, "#touch"

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    invoke-direct {p0}, Lpsy;->b1051a9d8893542362ad09051775f8f6m()Lpth;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lpsy;->p:Lpth;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Lpth;->d()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v0, p0, Lpsy;->p:Lpth;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpth;->i()Lptp;

    move-result-object v0

    nop

    nop

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lpsy;->m:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpdf;->g()V

    iget-object v0, p0, Lpsy;->q:Lsuu;

    nop

    nop

    nop

    iget-object v1, p0, Lpsy;->p:Lpth;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lpth;->h()Landroid/net/Uri;

    move-result-object v1

    nop

    invoke-virtual {v0, v1}, Lsuu;->e(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_3
    monitor-exit p0

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    :try_start_4
    iget-object v1, p0, Lpsy;->m:Lpdf;

    nop

    invoke-interface {v1}, Lpdf;->g()V

    iget-object v1, p0, Lpsy;->q:Lsuu;

    nop

    nop

    iget-object v2, p0, Lpsy;->p:Lpth;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lpth;->h()Landroid/net/Uri;

    move-result-object v2

    nop

    invoke-virtual {v1, v2}, Lsuu;->e(Ljava/lang/Object;)Z

    throw v0

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method final declared-synchronized k()Lpsh;
    .locals 12

    goto/32 :goto_c

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

    :try_start_0
    iget-boolean v0, p0, Lpsy;->n:Z

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Cannot be invoked until %s is published or abandoned."

    nop

    nop

    nop

    invoke-static {v0, v1, p0}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lpsy;->d:Lpsg;

    nop

    nop

    iget-byte v1, v0, Lpsg;->c:B

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

    if-ne v1, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v0, Lpsg;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lpsg;->e:Ljava/lang/Object;

    nop

    if-eqz v2, :cond_0

    nop

    iget-object v10, v0, Lpsg;->f:Ljava/lang/Object;

    nop

    if-eqz v10, :cond_0

    nop

    nop

    new-instance v11, Lpsh;

    nop

    nop

    nop

    nop

    nop

    iget-wide v4, v0, Lpsg;->a:J

    nop

    nop

    nop

    iget-wide v6, v0, Lpsg;->b:J

    nop

    nop

    nop

    move-object v9, v2

    nop

    nop

    nop

    nop

    check-cast v9, Lptl;

    nop

    nop

    nop

    nop

    nop

    move-object v8, v1

    nop

    check-cast v8, Ljava/lang/String;

    nop

    nop

    move-object v3, v11

    nop

    nop

    nop

    invoke-direct/range {v3 .. v10}, Lpsh;-><init>(JJLjava/lang/String;Lptl;Lpth;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    const v1, 0x14

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

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    :goto_9
    return-object v11

    nop

    nop

    nop

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    const v0, 0x8

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
.end method

.method final declared-synchronized l()Lpth;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lpsy;->n:Z

    nop

    nop

    nop

    nop

    const-string v1, "Cannot be invoked until %s is published or abandoned."

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1, p0}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lpsy;->p:Lpth;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_16

    nop

    nop

    :goto_0
    iget v1, p0, Lpsy;->b:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p0, ""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Lpsy;->r:I

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

    nop

    :goto_3
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eq p0, v2, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v2, " ("

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "MediaFile-%s%s"

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

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

    :goto_a
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_10

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x1

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

    :goto_e
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_f
    const v1, 0x16

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

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    const-string p0, "CACHE"

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_16
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    if-ne p0, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_18
    const-string p0, "PRIVATE"

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    const-string v3, ")"

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1b
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

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1d
    goto :goto_19

    nop

    nop

    :goto_1e
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1f
    invoke-static {p0, v2, v3}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method
