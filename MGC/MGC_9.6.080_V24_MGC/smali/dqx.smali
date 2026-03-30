.class public final Ldqx;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Z

.field public static b:J


# instance fields
.field public c:Z

.field d:I

.field e:[Ldqw;

.field public f:Z

.field public g:Z

.field h:I

.field i:I

.field public final j:Landroidx/wear/ambient/AmbientDelegate;

.field private k:I

.field private l:I

.field private m:I

.field private n:[Z

.field private o:I

.field private p:[Ldrb;

.field private q:I

.field private final r:Ldqw;

.field private s:Ldqw;


# direct methods
.method private final 132cd3b981019b59dc42653eea0b34b4m()V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aget-object v1, v1, v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget-object v2, v1, Ldqw;->a:Ldrb;

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

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_4
    if-lt v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    const v0, 0x4

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

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    :goto_a
    add-int/lit8 v0, v0, 0x1

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

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    :goto_d
    goto :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    iget v1, p0, Ldqx;->i:I

    nop

    nop

    goto/32 :goto_4

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
    iget v1, v1, Ldqw;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    iput v1, v2, Ldrb;->f:F

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Ldqx;->e:[Ldqw;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method private final 430f03c2ea70bd28108d593eca0c7c30m()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    iput-object v0, v1, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    add-int/2addr v0, v0

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

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    iget-object v1, p0, Ldqx;->j:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Ldqx;->m:I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v1, p0, Ldqx;->n:[Z

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Ldqx;->l:I

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
    iget-object v0, v0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    :goto_a
    check-cast v0, [Ljava/lang/Object;

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Ldqx;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_d
    const v0, 0x10

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    iget v0, p0, Ldqx;->l:I

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

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    check-cast v0, [Ldqw;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Ldqx;->j:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x1e

    nop

    goto/32 :goto_2

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

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_15
    new-array v1, v0, [Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    check-cast v0, [Ldrb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Ldqx;->e:[Ldqw;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v1, p0, Ldqx;->l:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    iget-object v1, p0, Ldqx;->e:[Ldqw;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1d
    iput v0, p0, Ldqx;->o:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 4

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    iput v1, p0, Ldqx;->i:I

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

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    iput v2, p0, Ldqx;->m:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Landroidx/wear/ambient/AmbientDelegate;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Ldqx;->j:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_9
    iput v2, p0, Ldqx;->o:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v1, Ldqw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Ldqx;->e:[Ldqw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_c
    const/4 v3, 0x1

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

    :goto_d
    rem-int v0, v0, v1

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

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_19

    nop

    nop

    :goto_f
    iput v0, p0, Ldqx;->k:I

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

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-array v0, v0, [Ldrb;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Ldqx;->p:[Ldrb;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v1, v0}, Ldra;-><init>(Landroidx/wear/ambient/AmbientDelegate;)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_14
    iput v3, p0, Ldqx;->h:I

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

    :goto_15
    iput-boolean v1, p0, Ldqx;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0}, Ldqx;->e94656b6137dd01f26085f984afe853em()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v1, Ldra;

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

    :goto_18
    iput v1, p0, Ldqx;->q:I

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v0, 0x3e8

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v2, 0x20

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1b
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    const v1, 0x14

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput v2, p0, Ldqx;->l:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1f
    iput-boolean v1, p0, Ldqx;->g:Z

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_20
    invoke-direct {v1, v0}, Ldqw;-><init>(Landroidx/wear/ambient/AmbientDelegate;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-array v3, v2, [Z

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_22
    iput-object v1, p0, Ldqx;->s:Ldqw;

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

    :goto_23
    iput-object v1, p0, Ldqx;->r:Ldqw;

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

    :goto_24
    iput-object v3, p0, Ldqx;->n:[Z

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

    :goto_25
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_26
    new-instance v0, Landroidx/wear/ambient/AmbientDelegate;

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

    :goto_27
    iput-boolean v1, p0, Ldqx;->f:Z

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_28
    new-array v0, v2, [Ldqw;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_29
    iput v1, p0, Ldqx;->d:I

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
.end method

.method private final a2d5024664df85075db576b91d9663e9m(I)Ldrb;
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, [Ldrb;

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

    :goto_1
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xc

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Ldqx;->p:[Ldrb;

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

    :goto_5
    iget-object p1, p0, Ldqx;->p:[Ldrb;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    add-int/2addr v1, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Ldqx;->j:Landroidx/wear/ambient/AmbientDelegate;

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

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_b
    const v0, 0x11

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget p1, p0, Ldqx;->q:I

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    :goto_f
    iput p1, v0, Ldrb;->n:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ldrb;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p1}, Ldrb;-><init>(I)V

    goto/32 :goto_f

    nop

    nop

    :goto_12
    check-cast v0, Ldrb;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v1, p0, Ldqx;->q:I

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_14
    if-ge p1, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    iput-object p1, p0, Ldqx;->p:[Ldrb;

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Ldrb;->c()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput v2, p0, Ldqx;->q:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    iget v1, p0, Ldqx;->k:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1c
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1d
    aput-object v0, p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1e
    iput p1, v0, Ldrb;->n:I

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_20
    add-int/lit8 v2, v1, 0x1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_21
    iget-object v0, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

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

    :goto_22
    iput v1, p0, Ldqx;->k:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Lofu;->o()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_24
    return-object v0

    nop

    nop

    :goto_25
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v0, Lofu;

    nop

    goto/32 :goto_23

    nop

    nop
.end method

.method private final c43d12f4f4da28dd6c943a4effe477b7m(Ldqw;)V
    .locals 14

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_0
    iget v12, v9, Ldqv;->a:I

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_1
    invoke-virtual {v9, v3}, Ldqv;->a(Ldrb;)F

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_45

    nop

    :cond_0
    goto/32 :goto_44

    nop

    :goto_3
    if-ge v2, v3, :cond_1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    :goto_4
    iget v3, p0, Ldqx;->h:I

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

    :goto_5
    iget-boolean v9, v8, Ldqw;->d:Z

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aput-boolean v1, v4, v5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_67

    nop

    nop

    :goto_8
    iget-object v12, v9, Ldqv;->c:[I

    nop

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

    :goto_9
    if-ltz v10, :cond_2

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

    :cond_2
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_a
    aget-object v1, v1, v7

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
    goto/16 :goto_62

    nop

    nop

    :goto_c
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_d
    move v7, v4

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v4, p0, Ldqx;->n:[Z

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v2, p0, Ldqx;->h:I

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_34

    nop

    :goto_14
    goto/32 :goto_6c

    nop

    nop

    :goto_15
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_16
    iput v4, v5, Ldrb;->d:I

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_17
    iget v9, v9, Ldrb;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_18
    if-ltz v9, :cond_3

    nop

    goto/32 :goto_14

    nop

    :cond_3
    goto/32 :goto_55

    nop

    nop

    :goto_19
    iget-object v1, p0, Ldqx;->e:[Ldqw;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v5, v1, Ldqw;->a:Ldrb;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    if-gez v7, :cond_4

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1b

    nop

    nop

    :goto_1e
    iget-object v9, v8, Ldqw;->e:Ldqv;

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

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_20
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_21
    aget v12, v12, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    aget-object v8, v8, v6

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lt v6, v8, :cond_5

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_24
    iget v3, v3, Ldrb;->c:I

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_25
    iput v7, v3, Ldrb;->d:I

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_26
    add-int/2addr v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, v3}, Ldqw;->k([Z)Ldrb;

    move-result-object v3

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

    :goto_28
    iget-object v3, v1, Ldqw;->a:Ldrb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_29
    cmpg-float v9, v8, v5

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2a
    iget-object v12, v9, Ldqv;->b:[I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    cmpg-float v10, v9, v10

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2c
    goto/16 :goto_2f

    nop

    :goto_2d
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_41

    nop

    nop

    :goto_2f
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_30
    iget v8, p0, Ldqx;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_31
    div-float/2addr v8, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_32
    if-eqz v1, :cond_6

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_39

    nop

    nop

    :goto_33
    move v11, v0

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v3, p0, v1}, Ldrb;->e(Ldqx;Ldqw;)V

    :goto_36
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v2, p0, Ldqx;->n:[Z

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v3, p0, Ldqx;->n:[Z

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

    :goto_39
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3a
    iget v5, v3, Ldrb;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3b
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int/2addr v2, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3d
    aget-boolean v6, v4, v5

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v3, p1, Ldqw;->a:Ldrb;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v1, v3}, Ldqw;->b(Ldrb;)V

    goto/32 :goto_28

    nop

    nop

    :goto_43
    add-int v0, v0, v1

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

    :goto_44
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-ne v10, v4, :cond_7

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

    :cond_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_47
    aput-boolean v0, v2, v1

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

    :goto_48
    aput-boolean v1, v4, v3

    nop

    :goto_49
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-ne v10, v4, :cond_8

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_8
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-eq v12, v13, :cond_9

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4c
    iget-object v8, p0, Ldqx;->e:[Ldqw;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v4, -0x1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_45

    nop

    :goto_4f
    if-eqz v6, :cond_a

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_50
    const v0, 0x5

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_51
    aget v10, v12, v10

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-lt v1, v2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move v1, v0

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move v7, v6

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v9, v8, Ldqw;->e:Ldqv;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_57
    iget v10, v9, Ldqv;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_58
    if-nez v3, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_c
    goto/32 :goto_f

    nop

    nop

    :goto_59
    goto/16 :goto_14

    nop

    nop

    :goto_5a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget v13, v3, Ldrb;->c:I

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

    nop

    :goto_5c
    iget-object v4, p0, Ldqx;->n:[Z

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_14

    nop

    :goto_5e
    goto/32 :goto_8

    nop

    nop

    :goto_5f
    move v1, v0

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

    :goto_60
    iget-object v9, v8, Ldqw;->a:Ldrb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_61
    move v1, v0

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_63
    if-eq v9, v1, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_64
    iget v8, v8, Ldqw;->b:F

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_65
    move v6, v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_66
    move v5, v8

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-nez v3, :cond_e

    nop

    goto/32 :goto_41

    nop

    :cond_e
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_68
    if-lt v11, v12, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-nez v3, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_6a
    const v1, 0x16

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_6b
    if-eqz v9, :cond_11

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

    :cond_11
    goto/32 :goto_56

    nop

    nop

    :goto_6c
    add-int/lit8 v6, v6, 0x1

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

    :goto_6d
    neg-float v8, v8

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop
.end method

.method private final d116db4599d9ddc8c35e61366a4f4967m(Ldqw;)V
    .locals 7

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0, p1}, Ldrb;->e(Ldqx;Ldqw;)V

    :goto_1
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_3
    iget v3, v1, Ldqw;->b:F

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Ldqx;->i:I

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    if-eq v5, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_7
    aget-object v5, v3, v1

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

    :goto_8
    iput v1, v0, Ldrb;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    iget-object v2, v2, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Ldqx;->e:[Ldqw;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_1

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    :goto_10
    if-lt v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Ldqx;->e:[Ldqw;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move v3, v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_4
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_48

    nop

    nop

    :goto_15
    goto/32 :goto_2e

    nop

    nop

    :goto_16
    iget-object v2, p0, Ldqx;->j:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    iget v5, v3, Ldrb;->d:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_19
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-boolean p1, p0, Ldqx;->c:Z

    nop

    :goto_1b
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v3, p0, Ldqx;->e:[Ldqw;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Ldqx;->e:[Ldqw;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    aput-object v2, v1, v3

    nop

    nop

    :goto_1f
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_20
    move v6, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_21
    iget v4, p0, Ldqx;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_22
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_24
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v2, 0x0

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_54

    nop

    nop

    :goto_27
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_28
    add-int/lit8 v1, v0, 0x1

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-lt v1, v4, :cond_5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v2, v1}, Lofu;->p(Ljava/lang/Object;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_2b
    aput-object v5, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2c
    add-int/lit8 v4, v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v3, v5, Ldqw;->a:Ldrb;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2e
    if-lt v3, v4, :cond_6

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_6
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2f
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_30
    aget-object v1, v1, v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_31
    iget-object v1, p0, Ldqx;->e:[Ldqw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_32
    move v1, v6

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_33
    if-nez p1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto :goto_38

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_36
    iget-boolean v2, v1, Ldqw;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move v0, p1

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_27

    nop

    :goto_3a
    check-cast v2, Lofu;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3b
    iput v4, p0, Ldqx;->i:I

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

    nop

    :goto_3c
    iget v1, p0, Ldqx;->i:I

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

    nop

    :goto_3d
    add-int/lit8 v3, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3e
    iput v1, p0, Ldqx;->i:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    add-int/lit8 v4, v4, -0x1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_40
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_41
    const v1, 0x20

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

    :goto_42
    iget p1, p1, Ldqw;->b:F

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_43
    aget-object v1, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_44
    aput-object p1, v0, v1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_45
    const-string v2, "WTF"

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v0, p1, Ldqw;->a:Ldrb;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_47
    move v3, v1

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_4a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4b
    iget-boolean p1, p0, Ldqx;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v0, p0, p1}, Ldrb;->d(Ldqx;F)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v2, p0, v3}, Ldrb;->d(Ldqx;F)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v1, p0, Ldqx;->e:[Ldqw;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iput v4, v3, Ldrb;->d:I

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v2, v1, Ldqw;->a:Ldrb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-boolean v0, p1, Ldqw;->d:Z

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_53
    return-void

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_39

    nop

    nop

    :goto_55
    iget-object v0, p1, Ldqw;->a:Ldrb;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_56
    if-nez v2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_9
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    aput-object v2, v1, v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop
.end method

.method private final e94656b6137dd01f26085f984afe853em()V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    aput-object v2, v1, v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, v2, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    aget-object v1, v1, v0

    nop

    nop

    nop

    goto/32 :goto_a

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

    :goto_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v1, p0, Ldqx;->i:I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2, v1}, Lofu;->p(Ljava/lang/Object;)V

    :goto_8
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_a
    if-nez v1, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Ldqx;->j:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v2, Lofu;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Ldqx;->e:[Ldqw;

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
    goto :goto_e

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lt v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Ldqx;->e:[Ldqw;

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

.method public static final o(Ljava/lang/Object;)I
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Ldrb;->f:F

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    const/high16 v0, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    add-float/2addr p0, v0

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

    :goto_6
    const/4 p0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    check-cast p0, Ldrf;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    iget-object p0, p0, Ldrf;->h:Ldrb;

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

    :goto_9
    if-nez p0, :cond_0

    nop

    goto/32 :goto_3

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

    :goto_a
    float-to-int p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ldqw;
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Lofu;

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

    :goto_1
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, v0, Ldqw;->e:Ldqv;

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

    :goto_3
    sput-wide v1, Ldqx;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lofu;->o()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ldqv;->f()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-wide v1, Ldqx;->b:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p0, v0, Ldqw;->a:Ldrb;

    nop

    nop

    goto/32 :goto_2

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

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    :goto_9
    const-wide/16 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    new-instance v0, Ldqw;

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

    :goto_b
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 p0, p0, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x0

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

    :goto_f
    sput p0, Ldrb;->a:I

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

    :goto_10
    add-long/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    const v1, 0xf

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_13
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    :goto_15
    invoke-direct {v0, p0}, Ldqw;-><init>(Landroidx/wear/ambient/AmbientDelegate;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Ldqx;->j:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_24

    nop

    nop

    :goto_18
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    check-cast v0, Ldqw;

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

    nop

    :goto_1a
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

    :goto_1b
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_17

    nop

    nop

    :goto_1d
    sget p0, Ldrb;->a:I

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

    :goto_1e
    iget-object v0, v0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1f
    iput-boolean p0, v0, Ldqw;->d:Z

    nop

    :goto_20
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput p0, v0, Ldqw;->b:F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Ldqx;->j:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/Object;)Ldrb;
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p1, Ldrf;->h:Ldrb;

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

    :goto_1
    iget v2, p0, Ldqx;->m:I

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

    :goto_2
    iget-object p0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int/2addr v0, v1

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
    iget v2, p0, Ldqx;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_5
    if-ne p1, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    :goto_6
    iget v0, p0, Ldqx;->h:I

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_7
    iput v1, v0, Ldrb;->n:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ldqx;->430f03c2ea70bd28108d593eca0c7c30m()V

    :goto_9
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_a
    const/4 v2, -0x1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x0

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

    :goto_c
    aget-object v3, v3, p1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v3, p0, Ldqx;->j:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_e
    iput v2, p0, Ldqx;->h:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

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
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ldrf;->i()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_12
    add-int/2addr p1, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_13
    aput-object v0, p0, p1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

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

    :goto_17
    iget-object p0, p0, Ldqx;->j:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_18
    iput p1, v0, Ldrb;->c:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    iget p1, v0, Ldrb;->c:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Ldrb;->c()V

    :goto_1d
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p1, Ldrf;->h:Ldrb;

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_20
    if-ne p1, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_21
    check-cast p0, [Ldrb;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_22
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast p1, Ldrf;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_24
    iput p1, p0, Ldqx;->d:I

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

    :goto_25
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_28
    if-eqz v3, :cond_4

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_4
    :goto_29
    goto/32 :goto_5

    nop

    nop

    :goto_2a
    check-cast v3, [Ldrb;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    :goto_2c
    iget v3, p0, Ldqx;->d:I

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2d
    if-le p1, v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int/2addr v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2f
    if-ge v0, v2, :cond_7

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

    :cond_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_31
    return-object p0

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget p1, p0, Ldqx;->d:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v3, v3, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

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

    :goto_35
    const v1, 0x3

    nop

    nop

    goto/32 :goto_15

    nop

    nop
.end method

.method public final c()Ldrb;
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    iput v2, p0, Ldqx;->h:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

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

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_3
    invoke-direct {p0, v0}, Ldqx;->a2d5024664df85075db576b91d9663e9m(I)Ldrb;

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

    :goto_4
    iget v2, p0, Ldqx;->h:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5
    check-cast p0, [Ldrb;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    goto/32 :goto_18

    nop

    nop

    :goto_9
    iget v1, p0, Ldqx;->m:I

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    iget-object p0, p0, Ldqx;->j:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    aput-object v0, p0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ldqx;->430f03c2ea70bd28108d593eca0c7c30m()V

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    if-ge v0, v1, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v0, p0, Ldqx;->h:I

    nop

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

    :goto_15
    iput v1, v0, Ldrb;->c:I

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

    :goto_16
    iput v1, p0, Ldqx;->d:I

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1a
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1b
    iget v1, p0, Ldqx;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final d(Ldrb;Ldrb;IFLdrb;Ldrb;II)V
    .locals 4

    goto/32 :goto_48

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_1
    cmpg-float v2, p4, v2

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

    :goto_2
    invoke-virtual {p1, p5, v3}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    mul-float/2addr p1, v1

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_4
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p3, p1, v1}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    int-to-float p1, p3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_8
    iget-object p1, v0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_9
    neg-float p2, p4

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-ne p8, p1, :cond_1

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p2, v2}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_c
    neg-float v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    cmpl-float v2, p4, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    iget-object p1, v0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_f
    if-gez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput p1, v0, Ldqw;->b:F

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_11
    sub-float/2addr v1, p4

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

    :goto_12
    goto/16 :goto_29

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/16 p1, 0x8

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

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_16
    const v1, 0x17

    nop

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

    :goto_17
    invoke-virtual {p1, p2, p3}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_18
    if-gtz p7, :cond_3

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_3
    :goto_19
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1a
    iget-object p4, v0, Ldqw;->e:Ldqv;

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p0, p8}, Ldqw;->f(Ldqx;I)V

    :goto_1c
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p1, v0, Ldqw;->e:Ldqv;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

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

    :goto_1f
    invoke-virtual {v2, p1, v1}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_20
    neg-int p1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_21
    cmpl-float v2, p4, v2

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_22
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_23
    const/high16 p3, -0x40000000    # -2.0f

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_24
    mul-float/2addr p2, p4

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

    :goto_25
    goto :goto_29

    nop

    nop

    :goto_26
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p1, v0, Ldqw;->e:Ldqv;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_28
    iput p1, v0, Ldqw;->b:F

    nop

    nop

    :goto_29
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int/2addr p1, p7

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-gtz p7, :cond_4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_4
    :goto_2c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput p1, v0, Ldqw;->b:F

    nop

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

    :goto_2e
    int-to-float p1, p1

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

    :goto_2f
    if-lez p3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1, p6, p4}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_31
    goto :goto_29

    nop

    nop

    :goto_32
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p1, v0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_34
    iget-object p1, v0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_35
    iput p1, v0, Ldqw;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_36
    iget-object p1, v0, Ldqw;->e:Ldqv;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_37
    int-to-float p1, p1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_38
    invoke-virtual {p1, p2, v1}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_39
    neg-int p1, p3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3a
    const/high16 v2, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1, p6, v1}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1, p2, v3}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_42

    nop

    nop

    :goto_3d
    if-lez v2, :cond_6

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_6
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p4, p1, v3}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_41
    const/high16 v3, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_42
    iget-object p1, v0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_43
    add-float/2addr p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_44
    iget-object p3, v0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_45
    invoke-virtual {p1, p5, v1}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p1, p6, v3}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_47
    int-to-float p2, p7

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

    :goto_48
    const v0, 0x1b

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v2, v0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4a
    if-eq p2, p5, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_7
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-lez p3, :cond_8

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_18

    nop

    nop

    :goto_4c
    int-to-float p1, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_4d
    iget-object p1, v0, Ldqw;->e:Ldqv;

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

    :goto_4e
    if-eqz v2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_9
    goto/32 :goto_1a

    nop

    nop

    :goto_4f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_50
    neg-int p1, p7

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_51
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_52
    iget-object p1, v0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_53
    invoke-virtual {p1, p5, p2}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_27

    nop

    nop

    :goto_54
    iget-object p1, v0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p4, p1, v1}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_1d

    nop

    nop

    :goto_56
    invoke-virtual {p0}, Ldqx;->a()Ldqw;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_57
    return-void

    nop

    :goto_58
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p1, p6, v1}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object p4, v0, Ldqw;->e:Ldqv;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0, v0}, Ldqx;->e(Ldqw;)V

    goto/32 :goto_57

    nop

    nop

    nop
.end method

.method public final e(Ldqw;)V
    .locals 16

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_1
    neg-float v10, v10

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2
    iput-boolean v3, v1, Ldqw;->d:Z

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_27

    nop

    nop

    :goto_4
    const/4 v4, -0x1

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_eb

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b5

    nop

    nop

    :goto_9
    move v14, v3

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_a
    iput-boolean v3, v1, Ldqw;->d:Z

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_b
    iget-object v4, v0, Ldqx;->s:Ldqw;

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_c
    iget-object v2, v1, Ldqw;->e:Ldqv;

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_d
    iput-object v2, v1, Ldqw;->a:Ldrb;

    nop

    nop

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

    :goto_e
    if-eq v5, v4, :cond_0

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_10
    move v11, v15

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_7b

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v9, v8, Ldqv;->a:I

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_14
    iget v4, v5, Ldrb;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_15
    iget v7, v2, Ldqv;->e:I

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_51

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_18
    if-eqz v9, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v15, v1, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_1a
    iput v5, v0, Ldqx;->h:I

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_f5

    nop

    nop

    :goto_1c
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v4, v2, Ldrb;->d:I

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_20
    goto/16 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_22

    nop

    nop

    :goto_22
    iget v2, v1, Ldqw;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lt v2, v4, :cond_2

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v2, v0, Ldqx;->j:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_3
    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v2, v0, Ldqx;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_29
    iget-object v2, v1, Ldqw;->a:Ldrb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_2a
    iget v6, v6, Ldqv;->a:I

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v14, 0x0

    nop

    nop

    :goto_2c
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_2d
    if-eqz v2, :cond_4

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v9, :cond_5

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_70

    nop

    nop

    :goto_30
    check-cast v5, [Ldrb;

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget v2, v2, Ldqv;->a:I

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

    :goto_32
    iget v9, v2, Ldqv;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_33
    iget v2, v1, Ldqw;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    :goto_34
    const/4 v5, -0x1

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v9, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_36
    iput v2, v1, Ldqw;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    :cond_7
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v6, v1, Ldqw;->c:Ljava/util/ArrayList;

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

    nop

    :goto_39
    add-int/2addr v4, v3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3a
    iget v4, v0, Ldqx;->i:I

    nop

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

    :goto_3b
    iget-object v9, v1, Ldqw;->e:Ldqv;

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_3c
    iget v5, v0, Ldqx;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-gtz v4, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v10, v8, v9, v3}, Ldqv;->e(Ldrb;FZ)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    aput v10, v9, v7

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget v2, v0, Ldqx;->h:I

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_43
    invoke-static {v5}, Ldqw;->l(Ldrb;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-nez v2, :cond_9

    nop

    goto/32 :goto_ca

    nop

    :cond_9
    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_45
    add-int/2addr v4, v3

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_46
    if-lez v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_af

    nop

    :goto_47
    add-int/lit8 v8, v8, 0x1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v9, v5}, Ldqv;->b(I)F

    move-result v9

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v6, v1, Ldqw;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v4, -0x1

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_d6

    nop

    nop

    :goto_4e
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_4f
    iget v2, v0, Ldqx;->i:I

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move-object v9, v7

    nop

    :goto_51
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    move v2, v3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_53
    iget v4, v0, Ldqx;->m:I

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-gez v2, :cond_b

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :cond_b
    :goto_55
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-eq v4, v5, :cond_c

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_57
    check-cast v8, Ldrb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_58
    iget v4, v0, Ldqx;->m:I

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_59
    const/4 v4, -0x1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_5a
    cmpg-float v7, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-lt v5, v9, :cond_d

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_d
    goto/32 :goto_105

    nop

    nop

    nop

    :goto_5c
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_6b

    nop

    nop

    :goto_5e
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-eq v4, v2, :cond_e

    nop

    goto/32 :goto_d2

    nop

    :cond_e
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    check-cast v2, Lofu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_61
    iget-object v9, v0, Ldqx;->e:[Ldqw;

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

    :goto_62
    iget-object v8, v1, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_63
    if-nez v2, :cond_f

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :cond_f
    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_66
    iget-boolean v8, v8, Ldrb;->m:Z

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_67
    return-void

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    const v0, 0x2

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_6a
    invoke-static {v5}, Ldqw;->l(Ldrb;)Z

    move-result v14

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    neg-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v15, v8}, Ldqv;->b(I)F

    move-result v15

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_6e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_6f
    if-ge v2, v4, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-static {v5}, Ldqw;->l(Ldrb;)Z

    move-result v12

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    if-lt v8, v2, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_19

    nop

    nop

    :goto_73
    if-eqz v14, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_12
    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget-object v2, v1, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_76
    iget-object v5, v0, Ldqx;->j:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v5}, Ldqv;->f()V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_78
    move-object v10, v5

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

    nop

    nop

    :goto_79
    iget-object v9, v2, Ldqv;->c:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_7a
    const/4 v5, 0x0

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget v9, v8, Ldrb;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_7d
    array-length v2, v2

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

    :goto_7e
    iget-object v4, v0, Ldqx;->s:Ldqw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_7f
    iget v4, v0, Ldqx;->o:I

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget-object v5, v1, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_81
    move-object v9, v5

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_82
    move-object v9, v7

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_83
    if-ltz v7, :cond_13

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_85
    iput v4, v2, Ldrb;->c:I

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual/range {p1 .. p1}, Ldqw;->e()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v1, v7, v2}, Ldqw;->a([ZLdrb;)Ldrb;

    move-result-object v2

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_88
    cmpg-float v4, v15, v6

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    aget-object v8, v9, v8

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-direct/range {p0 .. p1}, Ldqx;->d116db4599d9ddc8c35e61366a4f4967m(Ldqw;)V

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_8b
    iget-boolean v9, v8, Ldrb;->g:Z

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    goto/16 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    goto/32 :goto_92

    nop

    nop

    nop

    :goto_8e
    if-lt v7, v6, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_8f
    move v13, v11

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_90
    move v13, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_91
    iget-object v8, v1, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    if-eqz v9, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_15
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_93
    if-nez v2, :cond_16

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    if-eqz v2, :cond_17

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :cond_17
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_95
    if-lt v8, v9, :cond_18

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_18
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_96
    iget-object v6, v1, Ldqw;->e:Ldqv;

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

    :goto_97
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    if-nez v9, :cond_19

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    return-void

    nop

    nop

    nop

    :goto_9a
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_9b
    if-gtz v6, :cond_1a

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_9c
    iget-object v5, v4, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    if-lt v7, v6, :cond_1b

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    if-eq v9, v4, :cond_1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1c
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a1
    if-eqz v4, :cond_1d

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a2
    if-ge v2, v4, :cond_1e

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :cond_1e
    :goto_a3
    goto/32 :goto_11a

    nop

    nop

    :goto_a4
    iget-object v5, v5, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    goto/16 :goto_2c

    nop

    nop

    :goto_a6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    cmpl-float v4, v13, v15

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_a9
    if-eqz v10, :cond_1f

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_aa
    invoke-direct {v0, v4}, Ldqx;->c43d12f4f4da28dd6c943a4effe477b7m(Ldqw;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v2, v2, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    aget v7, v9, v7

    nop

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

    nop

    :goto_ad
    move-object v10, v9

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_ae
    aget v10, v9, v7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_b1
    invoke-direct/range {p0 .. p1}, Ldqx;->d116db4599d9ddc8c35e61366a4f4967m(Ldqw;)V

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    add-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_b3
    if-eqz v12, :cond_20

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    iget-object v9, v2, Ldqv;->d:[F

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {v1, v9}, Ldqw;->b(Ldrb;)V

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    if-nez v4, :cond_21

    nop

    goto/32 :goto_51

    nop

    nop

    :cond_21
    goto/32 :goto_114

    nop

    nop

    nop

    :goto_b7
    iget-object v9, v1, Ldqw;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    iget v5, v0, Ldqx;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_b9
    iget v2, v2, Ldrb;->n:I

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    const/4 v5, 0x0

    nop

    nop

    :goto_bb
    goto/32 :goto_cb

    nop

    nop

    :goto_bc
    invoke-direct/range {p0 .. p0}, Ldqx;->430f03c2ea70bd28108d593eca0c7c30m()V

    :goto_bd
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_be
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    :goto_bf
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_c0
    iget v4, v0, Ldqx;->d:I

    nop

    nop

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

    :goto_c1
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-virtual {v2, v1}, Lofu;->p(Ljava/lang/Object;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    add-int/2addr v5, v3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_c4
    iget-object v2, v0, Ldqx;->e:[Ldqw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_c5
    add-int/2addr v2, v3

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_c6
    if-nez v4, :cond_22

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_22
    goto/32 :goto_9

    nop

    nop

    :goto_c7
    iput-boolean v3, v0, Ldqx;->c:Z

    nop

    nop

    nop

    :goto_c8
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_c9
    goto/16 :goto_68

    nop

    nop

    :goto_ca
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_cb
    iget-object v2, v1, Ldqw;->a:Ldrb;

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

    :goto_cc
    add-int/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :goto_cd
    if-eq v4, v3, :cond_23

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_2f

    nop

    nop

    :goto_ce
    iget v2, v2, Ldqv;->a:I

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_cf
    goto/16 :goto_71

    nop

    :goto_d0
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {v1, v2}, Ldqw;->b(Ldrb;)V

    :goto_d2
    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    iput-object v7, v4, Ldqw;->a:Ldrb;

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    iget-object v2, v1, Ldqw;->e:Ldqv;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d5
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    :goto_d6
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    aput-object v2, v5, v4

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

    :goto_d8
    if-ne v7, v4, :cond_24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    move-object v9, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_da
    iget-object v10, v4, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_db
    move v5, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    if-eqz v9, :cond_25

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_de
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_df
    iput v4, v0, Ldqx;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_e0
    if-eqz v2, :cond_26

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    :cond_26
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    goto/16 :goto_c8

    nop

    nop

    nop

    :goto_e2
    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    iget-boolean v9, v8, Ldrb;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {v2, v0, v1}, Ldrb;->e(Ldqx;Ldqw;)V

    :goto_e5
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_e6
    invoke-static {v5}, Ldqw;->l(Ldrb;)Z

    move-result v14

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    move-object v9, v10

    nop

    nop

    :goto_e8
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    cmpg-float v2, v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_eb
    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    iget-boolean v2, v1, Ldqw;->d:Z

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_ed
    iget-object v4, v1, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_ee
    if-gtz v4, :cond_27

    nop

    goto/32 :goto_d0

    nop

    :cond_27
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_ef
    iget-object v4, v1, Ldqw;->a:Ldrb;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_f0
    invoke-static {v5}, Ldqw;->l(Ldrb;)Z

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    if-eqz v5, :cond_28

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_f2
    goto/32 :goto_b0

    nop

    :goto_f3
    iget v4, v4, Ldqv;->a:I

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    const/4 v7, 0x0

    nop

    :goto_f5
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    goto/16 :goto_116

    nop

    nop

    nop

    nop

    :goto_f7
    goto/32 :goto_101

    nop

    nop

    nop

    :goto_f8
    if-ltz v4, :cond_29

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_29
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    iget v2, v0, Ldqx;->h:I

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    goto/16 :goto_116

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    goto/32 :goto_113

    nop

    nop

    nop

    :goto_fc
    iget v8, v8, Ldrb;->d:I

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    cmpl-float v4, v11, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_fe
    invoke-virtual {v8, v7}, Ldqv;->d(I)Ldrb;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_ff
    iget-object v8, v1, Ldqw;->c:Ljava/util/ArrayList;

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

    :goto_100
    if-nez v2, :cond_2a

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_2a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_101
    move v2, v3

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_102
    invoke-virtual {v1, v0, v8, v3}, Ldqw;->d(Ldqx;Ldqw;Z)V

    :goto_103
    goto/32 :goto_97

    nop

    nop

    nop

    :goto_104
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_105
    invoke-virtual {v8, v5}, Ldqv;->d(I)Ldrb;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_106
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    if-ne v2, v3, :cond_2b

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_108
    invoke-virtual {v1, v0, v8, v3}, Ldqw;->c(Ldqx;Ldrb;Z)V

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_109
    invoke-virtual {v5, v8}, Ldqv;->d(I)Ldrb;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10a
    if-eqz v2, :cond_2c

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    :cond_2c
    goto/32 :goto_96

    nop

    nop

    :goto_10b
    iget-boolean v2, v1, Ldqw;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_10c
    goto :goto_103

    nop

    nop

    :goto_10d
    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    invoke-static {v5}, Ldqw;->l(Ldrb;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_10f
    iget-boolean v9, v8, Ldrb;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    invoke-direct {v0, v2}, Ldqx;->a2d5024664df85075db576b91d9663e9m(I)Ldrb;

    move-result-object v2

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_111
    goto/16 :goto_6b

    nop

    :goto_112
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_113
    iget-object v2, v1, Ldqw;->a:Ldrb;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_114
    move v12, v3

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_115
    const/4 v2, 0x0

    nop

    :goto_116
    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_117
    move v11, v6

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_118
    iput v2, v0, Ldqx;->i:I

    nop

    nop

    :goto_119
    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-direct/range {p0 .. p0}, Ldqx;->430f03c2ea70bd28108d593eca0c7c30m()V

    :goto_11b
    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Ldrb;I)V
    .locals 3

    goto/32 :goto_2e

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

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_2c

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ldqx;->a()Ldqw;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne v0, v2, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, -0x1

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

    nop

    :goto_7
    neg-int p2, p2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-boolean v2, v0, Ldqw;->d:Z

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Ldqx;->e(Ldqw;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-ltz p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_2a

    nop

    nop

    :goto_c
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    iget-object p2, p0, Ldqx;->j:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_f
    int-to-float p2, p2

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
    if-lt p1, p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_12
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3a

    nop

    nop

    :goto_14
    iget-object p2, v0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_18

    nop

    :goto_16
    iput p0, v0, Ldqw;->b:F

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_17
    aget-object v0, v2, v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_23

    nop

    nop

    :goto_1a
    invoke-virtual {p2, p1, v1}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1b
    iget v2, v2, Ldqv;->a:I

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

    :goto_1c
    int-to-float p2, p2

    nop

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

    :goto_1d
    int-to-float p2, p2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, p0, p2}, Ldrb;->d(Ldqx;F)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput p2, v0, Ldqw;->b:F

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_20
    iget-object v2, p0, Ldqx;->e:[Ldqw;

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

    :goto_21
    check-cast p2, [Ldrb;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_22
    if-eq v0, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_23
    iget v0, p1, Ldrb;->d:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_24
    int-to-float p0, p2

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_26
    iput-boolean v1, v0, Ldqw;->d:Z

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p2, v0, Ldqw;->e:Ldqv;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p2, p1, v1}, Ldqv;->g(Ldrb;F)V

    :goto_2a
    goto/32 :goto_9

    nop

    nop

    :goto_2b
    iget p2, p0, Ldqx;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2d
    iput-boolean v1, v0, Ldqw;->d:Z

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2e
    const v0, 0x7

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-eqz v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_5
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0, v0}, Ldqx;->e(Ldqw;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_34
    iput p2, p1, Ldrb;->f:F

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Ldqx;->a()Ldqw;

    move-result-object v0

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

    :goto_36
    int-to-float p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_37
    const/4 p1, 0x0

    nop

    nop

    :goto_38
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_39
    aget-object p2, p2, p1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    :goto_3b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3c
    const/high16 v1, 0x3f800000    # 1.0f

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

    :goto_3d
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3e
    add-int/2addr p2, v1

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

    :goto_3f
    iput-object p1, v0, Ldqw;->a:Ldrb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_40
    iput p2, v0, Ldqw;->b:F

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v2, :cond_6

    nop

    goto/32 :goto_30

    nop

    :cond_6
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p2, p2, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_43
    return-void

    nop

    nop

    :goto_44
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_45
    iget-object v2, v0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_46
    int-to-float p0, p2

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

    :goto_47
    iput p2, v0, Ldqw;->b:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_48
    iput p0, v0, Ldqw;->b:F

    nop

    goto/32 :goto_2f

    nop

    nop

    nop
.end method

.method public final g(Ldrb;Ldrb;II)V
    .locals 3

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Ldqx;->e(Ldqw;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ne p4, p1, :cond_0

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

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    iput v2, v1, Ldrb;->e:I

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

    :goto_3
    invoke-virtual {p0}, Ldqx;->a()Ldqw;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    neg-float p1, p1

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

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_6
    const/16 p1, 0x8

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    :goto_8
    goto/32 :goto_3

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    float-to-int p1, p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v1}, Ldqv;->a(Ldrb;)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, v0, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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
    invoke-virtual {p0, v0, p1, p4}, Ldqx;->i(Ldqw;II)V

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ldqx;->c()Ldrb;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    const/4 v2, 0x0

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

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, p1, p2, v1, p3}, Ldqw;->h(Ldrb;Ldrb;Ldrb;I)V

    goto/32 :goto_6

    nop

    nop
.end method

.method public final h(Ldrb;Ldrb;II)V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    :goto_2
    const v0, 0x9

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    if-ne p4, p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    float-to-int p1, p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1, p2, v1, p3}, Ldqw;->i(Ldrb;Ldrb;Ldrb;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0, p1, p4}, Ldqx;->i(Ldqw;II)V

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    iput v2, v1, Ldrb;->e:I

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

    :goto_c
    if-lez v0, :cond_1

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
    goto/32 :goto_9

    nop

    :goto_d
    neg-float p1, p1

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

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, v0, Ldqw;->e:Ldqv;

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

    :goto_11
    invoke-virtual {p0, v0}, Ldqx;->e(Ldqw;)V

    goto/32 :goto_e

    nop

    nop

    :goto_12
    const/16 p1, 0x8

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
    invoke-virtual {p0}, Ldqx;->a()Ldqw;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v1}, Ldqv;->a(Ldrb;)F

    move-result p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Ldqx;->c()Ldrb;

    move-result-object v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method final i(Ldqw;II)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p1, Ldqw;->e:Ldqv;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {p0, p3}, Ldqx;->p(I)Ldrb;

    move-result-object p0

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
    int-to-float p2, p2

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

    :goto_4
    invoke-virtual {p1, p0, p2}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    aget-object v1, v1, v0

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
    const v1, 0xc

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

    :goto_4
    if-lt v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    const v0, 0xe

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1f

    nop

    nop

    :goto_8
    goto/32 :goto_1d

    nop

    nop

    :goto_9
    iget-object v0, p0, Ldqx;->r:Ldqw;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0}, Ldqx;->l(Ldqw;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ldqx;->132cd3b981019b59dc42653eea0b34b4m()V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    iget-boolean v1, p0, Ldqx;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_10
    invoke-virtual {p0, v0}, Ldqx;->l(Ldqw;)V

    goto/32 :goto_12

    nop

    nop

    :goto_11
    iget-boolean v1, v1, Ldqw;->d:Z

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

    :goto_12
    return-void

    nop

    nop

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    :goto_15
    iget v1, p0, Ldqx;->i:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_17
    iget-object v1, p0, Ldqx;->e:[Ldqw;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_1b
    invoke-virtual {v0}, Ldqw;->e()Z

    move-result v1

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

    nop

    nop

    :goto_1c
    add-int/lit8 v0, v0, 0x1

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

    :goto_1d
    iget-object v0, p0, Ldqx;->r:Ldqw;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    :goto_1f
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0}, Ldqx;->132cd3b981019b59dc42653eea0b34b4m()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_21
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_22
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k()V
    .locals 9

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v8, 0x100

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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

    :goto_2
    aget-object v5, v2, v4

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_19

    nop

    :goto_4
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_5
    iget v7, v6, Lofu;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    iput v7, v6, Lofu;->a:I

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_8
    array-length v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_9
    add-int/lit8 v7, v7, 0x1

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

    :goto_a
    check-cast v6, Lofu;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_47

    nop

    nop

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

    nop

    :goto_d
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, p0, Ldqx;->e:[Ldqw;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x13

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_10
    if-lt v4, v3, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    iput v0, p0, Ldqx;->q:I

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

    :goto_12
    move v1, v0

    nop

    nop

    :goto_13
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_41

    nop

    :goto_15
    check-cast v1, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v1, Ldra;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    move v1, v0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput v0, v1, Ldra;->f:I

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

    nop

    nop

    :goto_1b
    invoke-virtual {v2}, Ldrb;->c()V

    :goto_1c
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move v3, v4

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_3b

    nop

    nop

    :goto_1f
    invoke-direct {v1, v0}, Ldqw;-><init>(Landroidx/wear/ambient/AmbientDelegate;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v3, v2, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v1, p0, Ldqx;->j:Landroidx/wear/ambient/AmbientDelegate;

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

    :goto_22
    if-lt v7, v8, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_23
    add-int/lit8 v1, v1, 0x1

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

    :goto_24
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_25
    iput v0, p0, Ldqx;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_26
    iget-object v1, v1, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_27
    new-instance v1, Ldqw;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    array-length v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_13

    nop

    :goto_2a
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Ldqx;->j:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2c
    move-object v6, v1

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

    :goto_2d
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2f
    invoke-direct {p0}, Ldqx;->e94656b6137dd01f26085f984afe853em()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v1, v2, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v2, p0, Ldqx;->j:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_32
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v2, 0x0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_34
    aget-object v2, v2, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_35
    check-cast v8, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_36
    aget-object v2, v3, v1

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_37
    iget-object v2, p0, Ldqx;->p:[Ldrb;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v2, :cond_3

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

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_39
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_3a
    iput v0, p0, Ldqx;->d:I

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

    :goto_3b
    move v4, v0

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iput v2, v1, Ldra;->b:F

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

    :goto_3e
    if-lt v1, v2, :cond_4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3f
    if-gt v3, v4, :cond_5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_40
    iget v2, p0, Ldqx;->i:I

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget v3, p0, Ldqx;->q:I

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_44
    if-lt v1, v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_6
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v1, p0, Ldqx;->r:Ldqw;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_46
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_47
    iput v1, p0, Ldqx;->h:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_48
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_49
    iput-object v1, p0, Ldqx;->s:Ldqw;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast v3, [Ldrb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4b
    goto/16 :goto_3c

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_11

    nop

    nop

    :goto_4d
    iget-object v8, v6, Lofu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    aput-object v5, v8, v7

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
.end method

.method final l(Ldqw;)V
    .locals 18

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v13, 0x0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ltz v3, :cond_0

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
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

    nop

    :goto_4
    const v1, 0x16

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move v8, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v3, v3, Ldqw;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_7
    iget-boolean v12, v11, Ldqw;->d:Z

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_8
    div-float/2addr v4, v15

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_9
    aget-object v1, v1, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_a
    iget-object v12, v11, Ldqw;->a:Ldrb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_b
    invoke-direct/range {p0 .. p0}, Ldqx;->132cd3b981019b59dc42653eea0b34b4m()V

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_c
    move-object/from16 v0, p0

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

    :goto_d
    if-ltz v12, :cond_1

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_1
    goto/32 :goto_71

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

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4f

    nop

    :goto_f
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_10
    move v2, v5

    nop

    nop

    :goto_11
    goto/32 :goto_72

    nop

    nop

    :goto_12
    iget v9, v14, Ldrb;->c:I

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

    :goto_13
    iget v12, v12, Ldqv;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    cmpg-float v12, v12, v4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    aget-object v2, v2, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_16
    iget v11, v0, Ldqx;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_17
    move v10, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_18
    const/16 v4, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_81

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-ltz v17, :cond_3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1d
    aget-object v3, v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v2, [Ldrb;

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

    :goto_1f
    add-int/lit8 v13, v13, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_20
    invoke-direct/range {p0 .. p1}, Ldqx;->c43d12f4f4da28dd6c943a4effe477b7m(Ldqw;)V

    goto/32 :goto_b

    nop

    nop

    :goto_21
    goto/16 :goto_11

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0xb

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

    :goto_26
    iget-object v1, v0, Ldqx;->e:[Ldqw;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_27
    invoke-virtual {v1, v2}, Ldqw;->b(Ldrb;)V

    goto/32 :goto_56

    nop

    nop

    :goto_28
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_29
    add-int/2addr v3, v5

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v14, v11, Ldqw;->e:Ldqv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_2b
    iget v4, v4, Ldrb;->n:I

    nop

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

    :goto_2c
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move v6, v4

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_2e
    iget v2, v0, Ldqx;->h:I

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_2f
    if-eq v4, v5, :cond_4

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_30
    if-ne v1, v10, :cond_5

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_5
    :goto_31
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_32
    or-int/2addr v2, v1

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_34
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_35
    if-gt v1, v10, :cond_6

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_6
    :goto_36
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_6c

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_39
    iget v12, v11, Ldqw;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3a
    iget-object v4, v14, Ldrb;->h:[F

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v3, v0, Ldqx;->e:[Ldqw;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3c
    cmpg-float v3, v3, v4

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_3d
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_7

    nop

    nop

    :goto_3f
    if-lt v2, v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_7
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-eq v12, v5, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_8
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_41
    aget v4, v4, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_42
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_43
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_44
    cmpg-float v17, v4, v6

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_47
    move v8, v7

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v2, v0, Ldqx;->j:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_4a
    if-lt v1, v4, :cond_9

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_1

    nop

    :goto_4c
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v4, v3, Ldqw;->a:Ldrb;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_4e
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v2, v2, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_52
    const/4 v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_53
    if-lt v7, v11, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    :cond_a
    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_56
    iget-object v2, v1, Ldqw;->a:Ldrb;

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

    :goto_57
    if-lt v13, v12, :cond_b

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_58
    const/4 v4, 0x0

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_59
    move v1, v5

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-lez v16, :cond_c

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

    :cond_c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v4, v1, Ldqw;->a:Ldrb;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_5f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_60
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-ne v8, v2, :cond_d

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_d
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_55

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_66
    aget-object v11, v11, v7

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

    :goto_67
    if-gt v3, v2, :cond_e

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v15, v11, Ldqw;->e:Ldqv;

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

    :goto_69
    if-eqz v2, :cond_f

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_f
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_6a
    iget v12, v12, Ldrb;->n:I

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

    :goto_6b
    goto/16 :goto_5d

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto :goto_7a

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_63

    nop

    nop

    :goto_6f
    cmpg-float v16, v15, v4

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget v3, v0, Ldqx;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iget-object v12, v11, Ldqw;->e:Ldqv;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_72
    xor-int/2addr v2, v5

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v15, v14}, Ldqv;->a(Ldrb;)F

    move-result v15

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_74
    iput v2, v4, Ldrb;->d:I

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_75
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_76
    move v9, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_77
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v2, v0, v1}, Ldrb;->e(Ldqx;Ldqw;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_79
    const/4 v10, 0x0

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    if-eqz v12, :cond_10

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v11, v0, Ldqx;->e:[Ldqw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_7d
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_7e
    iput v8, v2, Ldrb;->d:I

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_7f
    invoke-virtual {v14, v13}, Ldqv;->d(I)Ldrb;

    move-result-object v14

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_80
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_70

    nop

    nop

    :goto_82
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final m(Ldrb;Ldrb;II)V
    .locals 5

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0, p2}, Ldrb;->d(Ldqx;F)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_2
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3
    if-ltz p3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p3, v1, Ldqw;->b:F

    nop

    nop

    nop

    goto/32 :goto_37

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

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p4, :cond_2

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ldqx;->a()Ldqw;

    move-result-object v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x18

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

    :goto_a
    if-nez p3, :cond_3

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    const/high16 v2, 0x3f800000    # 1.0f

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

    :goto_c
    int-to-float p3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_d
    iget-object p1, v1, Ldqw;->e:Ldqv;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_f
    int-to-float p3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    goto/16 :goto_26

    nop

    nop

    :goto_11
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_12
    if-ne p4, v1, :cond_4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0xe

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

    :goto_14
    const/4 v1, -0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p1, v1, Ldqw;->e:Ldqv;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    neg-int p3, p3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/high16 v3, -0x40800000    # -1.0f

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v1}, Ldqx;->e(Ldqw;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p3, v1, Ldqw;->e:Ldqv;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, p2, v2}, Ldqv;->g(Ldrb;F)V

    :goto_1d
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, p2, v3}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_23

    nop

    :goto_20
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_21
    iget-boolean p4, p2, Ldrb;->g:Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    :goto_23
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p3, p1, v3}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_27
    goto :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_29
    move p4, v0

    nop

    nop

    :goto_2a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2b
    if-eq p4, v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1, p0, p4}, Ldqw;->f(Ldqx;I)V

    :goto_30
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p3, v1, Ldqw;->e:Ldqv;

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

    :goto_32
    goto :goto_28

    nop

    :goto_33
    goto/32 :goto_31

    nop

    nop

    :goto_34
    iget p2, p2, Ldrb;->f:F

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_35
    invoke-virtual {p3, p1, v2}, Ldqv;->g(Ldrb;F)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget p4, p1, Ldrb;->d:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v4, :cond_6

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-float/2addr p2, p3

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

    :goto_39
    if-ne p4, v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2f

    nop

    nop

    nop

    nop
.end method

.method public final n(Ldrb;Ldrb;Ldrb;Ldrb;F)V
    .locals 7

    goto/32 :goto_b

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    move-object v0, v6

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    move-object v1, p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    move-object v3, p3

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    move v5, p5

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

    :goto_b
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ldqx;->a()Ldqw;

    move-result-object v6

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v2, p2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    move-object v4, p4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v6}, Ldqx;->e(Ldqw;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_11
    invoke-virtual/range {v0 .. v5}, Ldqw;->g(Ldrb;Ldrb;Ldrb;Ldrb;F)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final p(I)Ldrb;
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, [Ldrb;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1
    iget v1, v0, Ldrb;->e:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([FF)V

    goto/32 :goto_1d

    nop

    nop

    :goto_3
    iget v1, p0, Ldqx;->m:I

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

    :goto_4
    aput v2, p1, v1

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

    :goto_5
    const v0, 0x6

    nop

    nop

    goto/32 :goto_26

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

    nop

    :goto_7
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    :goto_9
    iget-object p1, p1, Ldqz;->a:Ldrb;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p1, Ldrb;->i:[F

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

    :goto_b
    invoke-virtual {p0, v0}, Ldra;->m(Ldrb;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_c
    iput v1, p0, Ldqx;->d:I

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

    :goto_d
    check-cast p0, Ldra;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    iget-object p1, p0, Ldra;->g:Ldqz;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    iget-object p1, p0, Ldqx;->j:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_11
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

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

    :goto_13
    iput p1, v0, Ldrb;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Ldqx;->r:Ldqw;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v2, p0, Ldqx;->h:I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_16
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    return-object v0

    nop

    nop

    :goto_18
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0, v0}, Ldqx;->a2d5024664df85075db576b91d9663e9m(I)Ldrb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1a
    iget-object p1, p1, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    iget-object p1, v0, Ldrb;->i:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1e
    iget v1, p0, Ldqx;->d:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v0, p1, Ldqz;->a:Ldrb;

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

    :goto_21
    iput v2, p0, Ldqx;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_22
    aput-object v0, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_23
    const/4 v0, 0x4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_24
    iput v1, v0, Ldrb;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_25
    add-int/lit8 v2, v2, 0x1

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

    :goto_26
    const v1, 0xc

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

    :goto_27
    if-ge v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0}, Ldqx;->430f03c2ea70bd28108d593eca0c7c30m()V

    :goto_29
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2a
    iget v0, p0, Ldqx;->h:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop
.end method
