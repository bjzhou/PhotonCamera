.class public final Ljng;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:F

.field public static final b:F


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Ljava/util/Map;

.field public e:Ljmj;

.field public f:Ljmj;

.field public g:Ljns;

.field public h:Ljnr;

.field public final i:[F

.field public final j:[F

.field public final k:[F

.field public l:[F

.field public m:F

.field public n:F

.field public o:F

.field public p:Z

.field public q:Ljnq;

.field public final r:Ljnf;

.field public s:Z

.field public t:Z

.field public u:F

.field public v:J

.field public final w:[F

.field public x:Ljne;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/high16 v0, 0x41b00000    # 22.0f

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Ljng;->f(F)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Ljng;->f(F)F

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    sput v0, Ljng;->b:F

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    sput v0, Ljng;->a:F

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    const/high16 v0, 0x41400000    # 12.0f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object v1, p0, Ljng;->i:[F

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    const v0, 0x13

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_18

    nop

    nop

    :goto_3
    new-array v1, v0, [F

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Ljng;->d:Ljava/util/Map;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v1, p0, Ljng;->q:Ljnq;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1}, Ljnf;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data

    :goto_9
    goto/32 :goto_12

    nop

    nop

    :goto_a
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_c
    iput-object v0, p0, Ljng;->w:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Ljng;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_20

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_14
    iput-object v1, p0, Ljng;->k:[F

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-wide v1, p0, Ljng;->v:J

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_18
    new-instance v0, Ljava/util/TreeMap;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    iput-boolean v2, p0, Ljng;->p:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    new-array v0, v0, [F

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

    :goto_1b
    new-array v1, v0, [F

    nop

    nop

    fill-array-data v1, :array_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x3dcccccd    # 0.1f

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

    :goto_1d
    const-wide/16 v1, 0x0

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

    :goto_1e
    iput-object v0, p0, Ljng;->j:[F

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v1, 0x0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_23
    iput v1, p0, Ljng;->u:F

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

    :goto_24
    iput-object v1, p0, Ljng;->l:[F

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

    :goto_25
    new-instance v1, Ljnf;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_26
    const/16 v0, 0x10

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_27
    iput v2, p0, Ljng;->o:F

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_28
    iput-boolean v1, p0, Ljng;->t:Z

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_29
    iput-boolean v1, p0, Ljng;->s:Z

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object v1, p0, Ljng;->r:Ljnf;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public static c([F)V
    .locals 4

    goto/32 :goto_16

    nop

    nop

    :goto_0
    aput v1, p0, v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    aput v1, p0, v0

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

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    aget v1, p0, v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aput v1, p0, v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_7
    div-float/2addr v1, v3

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

    :goto_8
    aput v0, p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    div-float/2addr v1, v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    div-float/2addr v1, v3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x1

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
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    aget v1, p0, v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_13
    aget v3, p0, v2

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

    :goto_14
    goto/32 :goto_11

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x10

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    aget v1, p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x3

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

    nop

    :goto_19
    const/high16 v0, 0x3f800000    # 1.0f

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
.end method

.method private static f(F)F
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    mul-float/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const v0, 0x3c8efa35

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method private static g([F[F)V
    .locals 4

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aput v1, p1, p0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1
    aput v0, p1, v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    const/4 v0, 0x7

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    aput v1, p1, v0

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
    goto/32 :goto_3

    nop

    nop

    :goto_a
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_b
    aput v1, p1, v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    aget v0, p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_e
    const v1, 0x5

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    aget p0, p0, v3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aget v2, p0, v2

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_11
    aget v0, p0, v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_12
    aput v1, p1, v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_13
    aget v1, p0, v0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aput v0, p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    aput p0, p1, v0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_17
    const/16 v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_18
    const/16 p0, 0xe

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_19
    const/4 v2, 0x6

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
    const/16 p0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    aput v0, p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1c
    const/4 v2, 0x4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1d
    aput v1, p1, p0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1f
    aget v1, p0, v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_20
    aput v1, p1, v0

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

    :goto_21
    const/16 v2, 0x9

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_22
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_23
    aput v1, p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_24
    aput v1, p1, p0

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

    :goto_25
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_27
    aget v0, p0, v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/16 p0, 0xf

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_29
    const v0, 0xf

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    aput v0, p1, v2

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

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2c
    aput v0, p1, v2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/16 p0, 0xb

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

    :goto_2e
    aget v0, p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2f
    aput v1, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_30
    aget v1, p0, v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_31
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_32
    const/16 v3, 0x8

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_33
    aput v2, p1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_34
    const/16 p0, 0xd

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 6

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_18

    nop

    :goto_2
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3
    new-array v2, v2, [F

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    if-nez v1, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    :goto_9
    iget-object v4, v3, Lcom/google/android/apps/lightcycle/panorama/NewTarget;->orientation:[F

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v1, Ljmp;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_3

    nop

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetTargets()[Lcom/google/android/apps/lightcycle/panorama/NewTarget;

    move-result-object v1

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    iget v3, v3, Lcom/google/android/apps/lightcycle/panorama/NewTarget;->key:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v0, Ljmp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    iget-object v4, p0, Ljng;->d:Ljava/util/Map;

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

    :goto_f
    const/16 v2, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_16

    nop

    nop

    :goto_11
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

    :goto_12
    if-lt v0, v3, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    :goto_13
    const v0, 0x8

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    throw p0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    add-int/lit8 v0, v0, 0x1

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

    :goto_17
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v5, [F

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    array-length v3, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    aget-object v3, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1d
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1e
    invoke-static {v4, v2}, Ljng;->g([F[F)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Ljng;->d:Ljava/util/Map;

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

    :goto_20
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    :cond_3
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    const-string v1, "State is not ready."

    nop

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b([F)V
    .locals 4

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    :goto_3
    iput p1, p0, Ljng;->u:F

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_6
    aget-object v2, p1, v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, v2, Lcom/google/android/apps/lightcycle/panorama/NewTarget;->orientation:[F

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

    :goto_8
    const/16 v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_9
    invoke-static {v2, v1}, Ljng;->g([F[F)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aget-object v3, p1, v0

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

    :goto_c
    invoke-virtual {p0}, Ljng;->d()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const p1, 0x3dcccccd    # 0.1f

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    const-wide/16 v0, 0x0

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

    :goto_10
    array-length v1, p1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

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

    :goto_12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    :goto_15
    iget-object v2, p0, Ljng;->d:Ljava/util/Map;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x15

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    sget-object v0, Ljmp;->a:Ljava/lang/Object;

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

    :goto_19
    iget v3, v3, Lcom/google/android/apps/lightcycle/panorama/NewTarget;->key:I

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1a
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v1, Ljmp;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->InitTargets([F)[Lcom/google/android/apps/lightcycle/panorama/NewTarget;

    move-result-object p1

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1b
    iput-boolean p1, p0, Ljng;->s:Z

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_a

    nop

    nop

    :goto_1d
    goto/16 :goto_14

    nop

    nop

    :goto_1e
    goto/32 :goto_1f

    nop

    nop

    :goto_1f
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_20
    iput-wide v0, p0, Ljng;->v:J

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_21
    if-lt v0, v1, :cond_2

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

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    :cond_3
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    const-string p1, "State is not ready."

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

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

    monitor-exit v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-array v1, v1, [F

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

    :goto_24
    goto/32 :goto_2

    nop

    nop

    :goto_25
    iput-boolean p1, p0, Ljng;->t:Z

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x6

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
.end method

.method public final d()V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ResetTargets()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p0, Ljmp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iget-object p0, p0, Ljng;->d:Ljava/util/Map;

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

.method public final e(I)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_2
    const v1, 0x1b

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    const/4 v0, 0x3

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

    :goto_4
    goto :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x1

    nop

    goto/32 :goto_e

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

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    if-ne p1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_10
    const/4 v0, 0x4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0xd

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
    iput-boolean v1, p0, Ljng;->p:Z

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

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
.end method
