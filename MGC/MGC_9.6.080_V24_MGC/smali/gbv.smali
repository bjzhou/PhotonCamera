.class public final Lgbv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgcd;
.implements Lgca;


# static fields
.field public static final a:Landroid/os/VibrationEffect;


# instance fields
.field public final b:Lgds;

.field public final c:Lglm;

.field public final d:Lowu;

.field public final e:Lgcj;

.field public final f:Z

.field public final g:Lgbb;

.field public final h:Lgbs;

.field public final i:Lhpl;

.field public j:Lpci;

.field public volatile k:Z

.field public final l:Lmhf;

.field public final m:Lhot;

.field public final n:Lkjj;

.field public final o:Lfdo;

.field private final p:Loyd;

.field private final q:Loyd;

.field private final r:Loyd;

.field private final s:Loyd;

.field private final t:Loyd;

.field private final u:Lgcn;

.field private v:I

.field private final w:Lgbq;

.field private final x:Lixe;


# direct methods
.method private final 7ecc92917e9c4556cc19f457ddc41af8m()V
    .locals 1

    goto/32 :goto_3

    nop

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
    iget-object p0, p0, Lgbv;->b:Lgds;

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

    :goto_2
    iput v0, p0, Lgbv;->v:I

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

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lgds;->d()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_11

    nop

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
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1d

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    const/16 v1, 0x34

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

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_d
    sput-object v0, Lgbv;->a:Landroid/os/VibrationEffect;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    const/4 v2, 0x1

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

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public constructor <init>(Lgbq;Lgds;Lglm;Lixe;Lfdo;Lowu;Lgcj;Lhoh;Lgbb;Lgbs;Loyd;Loyd;Loyd;Lmhf;Lkjj;Loyd;Loyd;Lgcn;Lhot;Lhpl;)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v1, p3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v1, v0, Lgbv;->q:Loyd;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2
    move-object/from16 v1, p19

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object/from16 v1, p18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_4
    move-object v1, p7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5
    move-object v1, p9

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

    nop

    :goto_6
    move-object/from16 v1, p20

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

    :goto_7
    move-object v1, p10

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v1, v0, Lgbv;->l:Lmhf;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_9
    iput-object v1, v0, Lgbv;->x:Lixe;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_a
    iput-object v1, v0, Lgbv;->c:Lglm;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p8, v1}, Lhoh;->o(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v1, v0, Lgbv;->d:Lowu;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    iput-object v1, v0, Lgbv;->h:Lgbs;

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

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_23

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

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v1, p5

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_13
    move-object v1, p4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_15
    move-object v1, p2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1a

    nop

    :goto_18
    move-object v2, p8

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

    :goto_19
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    move-object v1, p12

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1c
    iput-object v1, v0, Lgbv;->o:Lfdo;

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

    :goto_1d
    move-object v1, p1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1e
    iput-boolean v1, v0, Lgbv;->f:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    iput-object v1, v0, Lgbv;->g:Lgbb;

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

    :goto_20
    sget-object v1, Lhlw;->m:Lhmn;

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

    :goto_21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_37

    nop

    nop

    :goto_22
    move-object/from16 v1, p17

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_24
    iput-object v1, v0, Lgbv;->s:Loyd;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput v1, v0, Lgbv;->v:I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v1, v0, Lgbv;->w:Lgbq;

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

    :goto_27
    iput-object v1, v0, Lgbv;->m:Lhot;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move-object/from16 v1, p16

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_29
    move-object v1, p11

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object v1, v0, Lgbv;->p:Loyd;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object v1, v0, Lgbv;->t:Loyd;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2c
    move-object/from16 v1, p15

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object v1, v0, Lgbv;->r:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    :goto_2f
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_30
    move-object v1, p6

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

    :goto_31
    iput-object v1, v0, Lgbv;->u:Lgcn;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_32
    move-object/from16 v1, p13

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_33
    iput-object v1, v0, Lgbv;->n:Lkjj;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_34
    iput-object v1, v0, Lgbv;->e:Lgcj;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_35
    iput-object v1, v0, Lgbv;->b:Lgds;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iput-object v1, v0, Lgbv;->i:Lhpl;

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

    nop

    nop

    :goto_37
    move-object/from16 v1, p14

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
.end method


# virtual methods
.method public final a()Lpci;
    .locals 5

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Lgbv;->q:Loyd;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v2, p0, v0, v3}, Lfyz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_1f

    nop

    nop

    :goto_2
    const/16 v4, 0xb

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x6

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

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    invoke-direct {v1}, Lows;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, p0, Lgbv;->p:Loyd;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x14

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

    nop

    :goto_9
    new-instance v0, Lgbu;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v2}, Loxz;->a(Loyd;)Loyd;

    move-result-object v2

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lgds;->a()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Lgbv;->v:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lfzo;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lfzo;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_10
    return-object v1

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lgbv;->d:Lowu;

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

    nop

    :goto_13
    invoke-direct {v3, p0, v4}, Lfzo;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, p0, v2}, Lfzo;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_16
    invoke-direct {v0, p0}, Lgbu;-><init>(Lgbv;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v3, Lfzo;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_19
    goto/32 :goto_11

    nop

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v3, p0, Lgbv;->d:Lowu;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Lgbv;->r:Loyd;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v4, p0, Lgbv;->d:Lowu;

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

    :goto_1e
    const/4 v3, 0x7

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

    :goto_1f
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_21
    invoke-direct {v0, p0, v2}, Lfzo;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v2, v0, p0}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_24
    invoke-interface {v2, v3, v4}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_25
    add-int v0, v0, v1

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

    :goto_26
    invoke-virtual {v1, v0}, Lglm;->z(Lhhg;)V

    goto/32 :goto_2b

    nop

    nop

    :goto_27
    const/16 v2, 0xd

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v2, v0, v3}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_29
    const/16 v2, 0xc

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2a
    new-instance v2, Lfyz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2b
    new-instance v1, Lows;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2c
    iget-object v1, p0, Lgbv;->c:Lglm;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lgbv;->b:Lgds;

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public final b()Lj$/util/Optional;
    .locals 7

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4
    iget-object v0, p0, Lgbv;->w:Lgbq;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, v0, Lgbi;->n:Llxg;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    :goto_a
    invoke-static {p0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

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

    nop

    nop

    :goto_b
    iget v0, p0, Lgbv;->v:I

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

    :goto_c
    goto/16 :goto_16

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

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    iput v0, p0, Lgbv;->v:I

    nop

    :goto_e
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    monitor-enter v0

    nop

    nop

    nop

    :try_start_1
    iget p0, v0, Lgbi;->q:I

    nop

    nop

    nop

    add-int/lit8 p0, p0, 0x1

    nop

    iput p0, v0, Lgbi;->q:I

    nop

    nop

    if-lt p0, v1, :cond_1

    nop

    nop

    nop

    nop

    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p0}, Lgbi;->g(Lsld;)V

    :cond_1
    monitor-exit v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_9

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    throw p0

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_15
    :try_start_2
    sget-object p0, Lgbi;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    const/16 v1, 0x9c

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    move-object v1, p0

    nop

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    const-string v2, "Ignoring startShot: groupId=%s, isCaptureDone=%s, isProcessingDone=%s, sessionClosed=%s"

    nop

    nop

    nop

    iget p0, v0, Lgbi;->c:I

    nop

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    iget-boolean p0, v0, Lgbi;->u:Z

    nop

    nop

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    nop

    iget-boolean p0, v0, Lgbi;->v:Z

    nop

    nop

    nop

    nop

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    nop

    iget-boolean p0, v0, Lgbi;->w:Z

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    nop

    invoke-interface/range {v1 .. v6}, Lscz;->H(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p0

    nop

    monitor-exit v0

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    :goto_18
    invoke-virtual {v0}, Lgds;->f()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_3
    iget-boolean p0, v0, Lgbi;->u:Z

    nop

    nop

    nop

    nop

    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    iget-boolean p0, v0, Lgbi;->v:Z

    nop

    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-boolean p0, v0, Lgbi;->w:Z

    nop

    if-eqz p0, :cond_4

    nop

    nop

    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_4
    monitor-exit v0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lgbv;->b:Lgds;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1c
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    iget v0, p0, Lgbv;->v:I

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1e
    if-lt v0, v1, :cond_5

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lgbv;->w:Lgbq;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    monitor-enter p0

    nop

    nop

    :try_start_4
    iget-object v0, p0, Lgbq;->b:Ljava/util/Map;

    nop

    nop

    nop

    iget v2, p0, Lgbq;->l:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lgbi;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_6

    nop

    nop

    sget-object v0, Lgbq;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    const/16 v1, 0xca

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    const-string v1, "startShot failed, current groupId: %s does have an active session in map %s"

    nop

    nop

    nop

    nop

    nop

    iget v2, p0, Lgbq;->l:I

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lgbq;->b:Ljava/util/Map;

    nop

    nop

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    invoke-interface {v0, v1, v2, v3}, Lscz;->y(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    move-object p0, v0

    nop

    nop

    nop

    goto/16 :goto_16

    nop

    :cond_6
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, p0}, Lgbq;->m(Lgca;)Z

    move-result v0

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

    :goto_22
    iget-object p0, v0, Lgbi;->A:Ljava/util/concurrent/atomic/AtomicInteger;

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

    nop

    :goto_23
    const v0, 0x1a

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

    :goto_24
    throw v0

    nop

    nop

    :goto_25
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_7

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    throw p0

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_5
    monitor-exit p0

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_28
    const v1, 0x7

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Lgcc;)V
    .locals 5

    goto/32 :goto_16

    nop

    nop

    :goto_0
    if-ne p1, v0, :cond_0

    nop

    goto/32 :goto_5

    nop

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

    :goto_1
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_2
    const/4 v0, 0x2

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget v1, v0, Lgbq;->l:I

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lgbq;->b:Ljava/util/Map;

    nop

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lgbi;

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lgbq;->a:Lsdb;

    nop

    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    const/16 v3, 0xcd

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

    nop

    const-string v3, "Cancelling capture due to %s for groupId: %s failed, no active session in map %s"

    nop

    nop

    nop

    iget-object v4, v0, Lgbq;->b:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    nop

    nop

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3, p1, v1, v4}, Lscz;->G(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

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

    nop

    :goto_8
    goto/32 :goto_7

    nop

    :goto_9
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Lgbv;->e(Lgco;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    sget-object p1, Lgco;->d:Lgco;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_e
    return-void

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Lgbv;->e(Lgco;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-ne p1, v0, :cond_4

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    :goto_16
    const v0, 0x15

    nop

    goto/32 :goto_19

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

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_18
    if-ne p1, v0, :cond_5

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

    :cond_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x4

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

    :goto_1a
    sget-object p1, Lgco;->b:Lgco;

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

    :goto_1b
    invoke-virtual {p1}, Lgcc;->ordinal()I

    move-result p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    :goto_1d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2, p1}, Lgbi;->e(Lgcc;)V

    :goto_1f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, p1}, Lgbv;->e(Lgco;)V

    goto/32 :goto_13

    nop

    nop

    :goto_21
    sget-object p1, Lgco;->a:Lgco;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_22
    return-void

    nop

    :goto_23
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0}, Lgbv;->7ecc92917e9c4556cc19f457ddc41af8m()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lgbv;->w:Lgbq;

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
.end method

.method public final d()V
    .locals 7

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lgbv;->v:I

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

    nop

    nop

    :goto_1
    invoke-interface {v5}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_2
    if-ge v0, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_30

    nop

    nop

    :goto_3
    iput v0, v3, Lnif;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_4
    new-instance v3, Lnif;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Lgbv;->k:Z

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v3}, Lnif;->h()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lgju;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_8
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v1, 0xf

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4a

    nop

    :goto_b
    if-ne v5, v6, :cond_2

    nop

    goto/32 :goto_19

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    check-cast v5, Lnbh;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput v0, v3, Lnif;->f:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v3, v0, v1}, Lnif;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3}, Lnif;->h()V

    :goto_10
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v5, 0x7f07013f

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_12
    iget-object v5, p0, Lgbv;->t:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_13
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v6, 0x1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput v0, v3, Lnif;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_17
    new-instance v0, Lfxf;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_10

    nop

    nop

    :goto_19
    goto/32 :goto_3c

    nop

    nop

    :goto_1a
    invoke-direct {v3, v2}, Lnif;-><init>(Ljava/lang/String;)V

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_1b
    if-ne v5, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v3, 0x7f1406f0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v3}, Lnif;->a()Lpci;

    move-result-object v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lgbv;->x:Lixe;

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_1f
    const v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_20
    const v4, 0x7f070140

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_21
    invoke-direct {v0, p0, v1}, Lfxf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v3}, Lnif;->l()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v3, v0}, Lnif;->d(Ljava/util/function/Supplier;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0, p0, v6}, Lgju;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-string v2, "thumbnail_tooltip_shown"

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v0, p0, Lgbv;->j:Lpci;

    nop

    :goto_29
    goto/32 :goto_33

    nop

    nop

    :goto_2a
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v5, v6}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

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

    :goto_2d
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v3, v0, v4}, Lnif;->c(Landroid/view/View;I)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v5}, Lnbh;->ordinal()I

    move-result v5

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

    :goto_30
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0, v2}, Lfdo;->G(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_33
    return-void

    nop

    :goto_34
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_35
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_49

    nop

    :goto_36
    invoke-virtual {v3}, Lnif;->h()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v3, v2}, Lnif;->p(I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v5}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Lgbv;->c:Lglm;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v3}, Lnif;->m()V

    goto/32 :goto_3d

    nop

    nop

    :goto_3b
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3c
    invoke-virtual {v3, v0, v4}, Lnif;->j(Landroid/view/View;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/16 v0, 0x12c

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v5, :cond_5

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

    :cond_5
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v3, v0, v4}, Lnif;->g(Landroid/view/View;I)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_40
    if-eqz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const v0, 0x10

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_43
    invoke-virtual {v3}, Lnif;->k()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_45
    iget-object v5, p0, Lgbv;->s:Loyd;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    check-cast v5, Lnbe;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_34

    nop

    :goto_4a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v3, v0, v4}, Lnif;->j(Landroid/view/View;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_10

    nop

    :goto_4d
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v0, v0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v0, v0, Lcom/google/android/apps/camera/bottombar/BottomBar;->p:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_50
    iput-boolean v0, v3, Lnif;->g:Z

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_51
    iget-object v1, p0, Lgbv;->d:Lowu;

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

    :goto_52
    invoke-direct {p0}, Lgbv;->7ecc92917e9c4556cc19f457ddc41af8m()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iput-object v0, v3, Lnif;->m:Lixe;

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_55
    const/16 v0, 0x1770

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v3}, Lnif;->i()V

    goto/32 :goto_4c

    nop

    nop

    :goto_57
    sget-object v6, Lnbe;->a:Lnbe;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_58
    iget-object v0, p0, Lgbv;->o:Lfdo;

    nop

    nop

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
.end method

.method public final e(Lgco;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgbv;->u:Lgcn;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lgds;->c()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Lgbv;->v:I

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
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

    nop

    :goto_4
    invoke-virtual {v0, p1}, Lgcn;->b(Lgco;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lgbv;->b:Lgds;

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

    :goto_6
    return-void

    nop
.end method
