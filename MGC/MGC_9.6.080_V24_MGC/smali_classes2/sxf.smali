.class public final Lsxf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsxf;

.field public static final b:Lsxf;

.field public static final c:Lsxf;

.field public static final d:Lsxf;

.field public static final e:Lsxf;

.field public static final f:Lsxf;

.field public static final g:[Lsxf;

.field private static i:I


# instance fields
.field public final h:I

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    new-instance v3, Lsxf;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xf

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    sput-object v0, Lsxf;->g:[Lsxf;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    invoke-direct {v5, v6}, Lsxf;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v2, Lsxf;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v4, v5}, Lsxf;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_8
    const-string v3, "kPdLearned"

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    sput-object v1, Lsxf;->b:Lsxf;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    filled-new-array/range {v0 .. v5}, [Lsxf;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_c
    const/4 v0, 0x0

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

    :goto_d
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v5, "kMonocular"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    const-string v4, "kPdStereo"

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v2, v3}, Lsxf;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_12
    sput-object v3, Lsxf;->d:Lsxf;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    const-string v2, "kPdTraditional"

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_15
    new-instance v5, Lsxf;

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

    :goto_16
    const-string v6, "kRgbPd"

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v1, v2}, Lsxf;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    new-instance v1, Lsxf;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v4, Lsxf;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1a
    new-instance v0, Lsxf;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sput-object v4, Lsxf;->e:Lsxf;

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

    :goto_1c
    invoke-direct {v3, v4}, Lsxf;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sput v0, Lsxf;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1e
    invoke-direct {v0, v1}, Lsxf;-><init>(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sput-object v2, Lsxf;->c:Lsxf;

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

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sput-object v0, Lsxf;->a:Lsxf;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_23
    const-string v1, "kSegmentation"

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_25
    sput-object v5, Lsxf;->f:Lsxf;

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_5

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
    sput v0, Lsxf;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v0, p1, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lsxf;->j:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    sget p1, Lsxf;->i:I

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

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iput p1, p0, Lsxf;->h:I

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


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lsxf;->j:Ljava/lang/String;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method
