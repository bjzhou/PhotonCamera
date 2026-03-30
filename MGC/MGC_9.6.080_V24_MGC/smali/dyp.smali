.class public abstract Ldyp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldxz;


# static fields
.field public static final a:Ldyo;

.field public static final b:Ldyo;

.field public static final c:Ldyo;

.field public static final d:Ldyo;

.field public static final e:Ldyo;

.field public static final f:Ldyo;

.field public static final g:Ldyo;


# instance fields
.field public h:F

.field i:F

.field j:Z

.field final k:Ljava/lang/Object;

.field final l:Ldyr;

.field public m:Z

.field public n:F

.field public o:F

.field private p:J

.field private q:F

.field private final r:Ljava/util/ArrayList;

.field private final s:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_14

    nop

    nop

    :goto_0
    new-instance v0, Ldyd;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ldyj;

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

    :goto_2
    sput-object v0, Ldyp;->d:Ldyo;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    sput-object v0, Ldyp;->a:Ldyo;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Ldyp;->g:Ldyo;

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

    :goto_5
    sput-object v0, Ldyp;->f:Ldyo;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ldyi;

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

    :goto_7
    invoke-direct {v0}, Ldyd;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Ldyi;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ldyk;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ldyj;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Ldyp;->e:Ldyo;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    new-instance v0, Ldyg;

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

    :goto_e
    sput-object v0, Ldyp;->c:Ldyo;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Ldyg;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ldyk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    new-instance v0, Ldyh;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0}, Ldyf;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    sput-object v0, Ldyp;->b:Ldyo;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    new-instance v0, Ldyf;

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
    invoke-direct {v0}, Ldyh;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;Ldyr;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    iput-wide v0, p0, Ldyp;->p:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    sget-object p1, Ldyp;->g:Ldyo;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_4
    if-eq p2, p1, :cond_1

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

    nop

    nop

    :goto_5
    const/high16 v0, 0x3b800000    # 0.00390625f

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean v1, p0, Ldyp;->j:Z

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Ldyp;->h:F

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Ldyp;->n:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_d
    const v0, -0x800001

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p1, Ldyp;->c:Ldyo;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/util/ArrayList;

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

    nop

    :goto_10
    goto/16 :goto_24

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

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Ldyp;->s:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_15
    if-eq p2, p1, :cond_2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_19
    iput-boolean v1, p0, Ldyp;->m:Z

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

    :goto_1a
    iput-object p1, p0, Ldyp;->k:Ljava/lang/Object;

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1b
    sget-object p1, Ldyp;->e:Ldyo;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto :goto_24

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-ne p2, p1, :cond_3

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

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_22
    iput v0, p0, Ldyp;->q:F

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_23
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    :goto_24
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto :goto_24

    nop

    :goto_26
    goto/32 :goto_2c

    nop

    nop

    :goto_27
    if-ne p2, p1, :cond_4

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

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-wide/16 v0, 0x0

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

    :goto_29
    const v0, 0x3dcccccd    # 0.1f

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object v0, p0, Ldyp;->r:Ljava/util/ArrayList;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2c
    sget-object p1, Ldyp;->b:Ldyo;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2d
    sget-object p1, Ldyp;->d:Ldyo;

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

    :goto_2e
    if-ne p2, p1, :cond_5

    nop

    goto/32 :goto_24

    nop

    :cond_5
    goto/32 :goto_31

    nop

    nop

    :goto_2f
    const v0, 0x3b03126f    # 0.002f

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput v0, p0, Ldyp;->i:F

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

    :goto_31
    sget-object p1, Ldyp;->f:Ldyo;

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

    :goto_32
    if-eq p2, p1, :cond_6

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_6
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput-object p2, p0, Ldyp;->l:Ldyr;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_35
    iput v0, p0, Ldyp;->o:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public constructor <init>(Lltd;)V
    .locals 2

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Ldyp;->l:Ldyr;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Ldyp;->s:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide v0, p0, Ldyp;->p:J

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    iput p1, p0, Ldyp;->q:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6
    iput-boolean v1, p0, Ldyp;->j:Z

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    iput v0, p0, Ldyp;->i:F

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p1}, Ldye;-><init>(Lltd;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_d
    iput-boolean v1, p0, Ldyp;->m:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_e
    const v0, -0x800001

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Ldyp;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    iput-object v0, p0, Ldyp;->k:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    new-instance v0, Ldye;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/high16 p1, 0x3f800000    # 1.0f

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
    iput-object v0, p0, Ldyp;->r:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    :goto_1a
    const v1, 0x12

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
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_19

    nop

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

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1f
    const v0, 0xa

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v1, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_21
    iput v0, p0, Ldyp;->o:F

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_22
    iput v0, p0, Ldyp;->n:F

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

    :goto_23
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop
.end method

.method private static l(Ljava/util/ArrayList;)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    :goto_4
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_a
    const v1, 0x8

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    goto/32 :goto_10

    nop

    nop

    :goto_e
    if-gez v0, :cond_2

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

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1b

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
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(J)V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const-wide/32 p1, 0x7fffffff

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_1b

    nop

    nop

    :goto_2
    goto/32 :goto_23

    nop

    nop

    :goto_3
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Ldyp;->d(F)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v2, :cond_0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
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

    :goto_8
    iput-wide p1, p0, Ldyp;->p:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_9
    iget p1, p1, Ldyc;->f:F

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

    :goto_a
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_b
    goto/32 :goto_2a

    nop

    :goto_c
    goto/32 :goto_1d

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Ldyp;->c(Z)V

    :goto_10
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_11
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sub-long v0, p1, v0

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

    :goto_13
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_14
    iget v0, p0, Ldyp;->o:F

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
    iget p2, p0, Ldyp;->i:F

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

    nop

    :goto_16
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_3
    goto/32 :goto_b

    nop

    :goto_17
    cmpl-float p2, p1, p2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_19
    iget p1, p0, Ldyp;->i:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1a
    float-to-long p1, p2

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, p2}, Ldyp;->d(F)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-wide v0, p0, Ldyp;->p:J

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    cmp-long v2, v0, v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    iput p2, p0, Ldyp;->i:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_20
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_21
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_23
    long-to-float p2, v0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_24
    invoke-static {}, Ldyc;->a()Ldyc;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_25
    return-void

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

    :goto_27
    iput-wide p1, p0, Ldyp;->p:J

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_28
    iget v0, p0, Ldyp;->n:F

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_21

    nop

    nop

    :goto_2b
    invoke-virtual {p0, p1, p2}, Ldyp;->g(J)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2c
    iput p2, p0, Ldyp;->i:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2d
    div-float/2addr p2, p1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop
.end method

.method final b()F
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 v0, 0x3f400000    # 0.75f

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    mul-float/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget p0, p0, Ldyp;->q:F

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

    :goto_3
    return p0

    nop

    nop

    nop
.end method

.method public final c(Z)V
    .locals 5

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lt v0, v1, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Ldyp;->m:Z

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

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
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Ldyp;->r:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    iput-wide v1, p0, Ldyp;->p:J

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x15

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_b
    const/4 v4, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_12

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    :goto_e
    iget-object p0, p0, Ldyp;->r:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v1, p1, v2}, Ldym;->a(ZF)V

    :goto_10
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    iput-boolean v0, p0, Ldyp;->j:Z

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Ldyp;->r:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

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

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Ldyp;->r:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    const v1, 0xd

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v3, v1, Ldyc;->b:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1d
    invoke-static {p0}, Ldyp;->l(Ljava/util/ArrayList;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2, p0}, Lyo;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1f
    iget-object v2, v1, Ldyc;->a:Lyo;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v2, 0x1

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

    :goto_21
    iget-object v2, v1, Ldyc;->b:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

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

    :goto_23
    iget v2, p0, Ldyp;->i:F

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_24
    if-gez v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_28
    const-wide/16 v1, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_29
    iput-boolean v2, v1, Ldyc;->e:Z

    nop

    nop

    :goto_2a
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2b
    invoke-static {}, Ldyc;->a()Ldyc;

    move-result-object v1

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

    nop

    :goto_2c
    check-cast v1, Ldym;

    nop

    goto/32 :goto_23

    nop

    nop

    nop
.end method

.method final d(F)V
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    add-int/lit8 p1, p1, 0x1

    nop

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

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Ldyp;->s:Ljava/util/ArrayList;

    nop

    goto/32 :goto_2

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

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_5
    goto/16 :goto_16

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
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1c

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

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1, p1}, Ldyr;->b(Ljava/lang/Object;F)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Ldyp;->l:Ldyr;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    iget v1, p0, Ldyp;->i:F

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

    :goto_d
    iget-object v1, p0, Ldyp;->k:Ljava/lang/Object;

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

    :goto_e
    iget-object v0, p0, Ldyp;->s:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    iget-object p0, p0, Ldyp;->s:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_10
    check-cast v0, Ldyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_11
    invoke-interface {v0, v1}, Ldyn;->l(F)V

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_14
    invoke-static {p0}, Ldyp;->l(Ljava/util/ArrayList;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 p1, 0x0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lt p1, v0, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_19
    iget-object v0, p0, Ldyp;->s:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1f

    nop

    nop

    :goto_1c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0xd

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

    :goto_1e
    return-void

    nop

    nop

    :goto_1f
    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public abstract e(F)V
.end method

.method public f()V
    .locals 3

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    iget v1, p0, Ldyp;->o:F

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
    cmpg-float v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, v0, Ldyc;->b:Ljava/util/ArrayList;

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

    :goto_5
    invoke-virtual {v0, v1}, Ldyr;->a(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Ldyp;->m:Z

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

    :goto_7
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v2, v1, Ldyb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_b
    iput-object v2, v1, Ldyb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, v0, Ldyc;->g:Ldyb;

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

    :goto_d
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v2}, Leur;->e(Ljava/lang/Runnable;)V

    :try_start_0
    const-class v1, Landroid/animation/ValueAnimator$DurationScaleChangeListener;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    iput v0, p0, Ldyp;->i:F

    nop

    nop

    :goto_13
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-gez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_1
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    :goto_1b
    iput v1, v0, Ldyc;->f:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1c
    invoke-static {}, Ldyc;->a()Ldyc;

    move-result-object v0

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

    :goto_1d
    iget v0, p0, Ldyp;->i:F

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    throw p0

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v2, v0, Ldyc;->c:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_21
    const-string v0, "Animations may only be started on the same thread as the animation handler"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_22
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x13

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-boolean v0, p0, Ldyp;->j:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_27
    iput-boolean v0, p0, Ldyp;->m:Z

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_28
    if-eqz v2, :cond_5

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    :goto_29
    iget-object v1, v0, Ldyc;->b:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2a
    if-lez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2b
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_25

    nop

    nop

    :goto_2f
    new-instance v2, Ldya;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-eqz v0, :cond_7

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

    :cond_7
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput-object v1, v0, Ldyc;->g:Ldyb;

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v1, v0, Ldyc;->h:Leur;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {}, Ldyc;->a()Ldyc;

    move-result-object v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Ldyc;->b()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_37
    invoke-direct {v1, v0}, Ldyb;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_31

    nop

    nop

    :goto_38
    iget-object v1, v0, Ldyc;->g:Ldyb;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_e

    nop

    nop

    :goto_3a
    new-instance v1, Ldyb;

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

    nop

    :goto_3b
    iget-object v0, p0, Ldyp;->l:Ldyr;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    cmpl-float v1, v0, v1

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

    :goto_3d
    if-eqz v1, :cond_9

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_33

    nop

    nop

    :goto_3e
    iget v1, p0, Ldyp;->n:F

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3f
    invoke-static {v1}, Landroid/animation/ValueAnimator;->registerDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z

    :catchall_0
    :goto_40
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v1, v1, Ldyb;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_42
    new-instance p0, Landroid/util/AndroidRuntimeException;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v1, v0, Ldyc;->b:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_44
    invoke-direct {v2, v1}, Ldya;-><init>(Ldyb;)V

    goto/32 :goto_b

    nop

    nop

    :goto_45
    iget-object v1, p0, Ldyp;->k:Ljava/lang/Object;

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

    :goto_46
    const-string v0, "Starting value need to be in between min value and max value"

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_47
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop
.end method

.method public abstract g(J)Z
.end method

.method public final h(Ldym;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Ldyp;->r:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iget-object p0, p0, Ldyp;->r:Ljava/util/ArrayList;

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
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final i(Ldyn;)V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Ldyp;->s:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    const-string p1, "Error: Update listeners must be added beforethe animation."

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

    :goto_b
    iget-object p0, p0, Ldyp;->s:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    iget-boolean v0, p0, Ldyp;->m:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop
.end method

.method public final j(F)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const-string p1, "Minimum visible change must be positive."

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_8

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
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    :goto_5
    if-gtz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

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

    :goto_6
    iput p1, p0, Ldyp;->q:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/high16 v0, 0x3f400000    # 0.75f

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    cmpg-float v0, p1, v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    mul-float/2addr p1, v0

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

    :goto_a
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Ldyp;->e(F)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final k(F)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-boolean p1, p0, Ldyp;->j:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput p1, p0, Ldyp;->i:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/4 p1, 0x1

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
.end method
