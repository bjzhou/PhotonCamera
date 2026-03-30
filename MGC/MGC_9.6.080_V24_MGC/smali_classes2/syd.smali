.class public final Lsyd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsyd;

.field public static final b:Lsyd;

.field public static final c:Lsyd;

.field public static final d:Lsyd;

.field public static final e:Lsyd;

.field public static final f:[Lsyd;

.field private static h:I


# instance fields
.field public final g:I

.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v1, Lsyd;->b:Lsyd;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput v0, Lsyd;->h:I

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

    :goto_2
    new-instance v1, Lsyd;

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

    :goto_3
    sput-object v4, Lsyd;->e:Lsyd;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v3, Lsyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    new-instance v2, Lsyd;

    nop

    goto/32 :goto_18

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

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Lsyd;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    :goto_b
    invoke-direct {v2, v3}, Lsyd;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    const-string v5, "kRawPlanar16"

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
    goto/32 :goto_17

    nop

    :goto_f
    new-instance v4, Lsyd;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v3, v4}, Lsyd;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    filled-new-array {v0, v1, v2, v3, v4}, [Lsyd;

    move-result-object v0

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

    :goto_12
    const/4 v0, 0x0

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

    :goto_13
    sput-object v0, Lsyd;->f:[Lsyd;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v4, "kRawRgb16"

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_15
    sput-object v2, Lsyd;->c:Lsyd;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v3, "kRaw16"

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
    sput-object v0, Lsyd;->a:Lsyd;

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

    :goto_1a
    const v0, 0x1f

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v4, v5}, Lsyd;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v2, "kRaw12"

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1d
    sput-object v3, Lsyd;->d:Lsyd;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_1f
    invoke-direct {v1, v2}, Lsyd;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v0, Lsyd;

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

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lsyd;->g:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const-string v0, "kRaw10"

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    iput-object v0, p0, Lsyd;->i:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

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

    :goto_7
    sput p0, Lsyd;->h:I

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

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v0, p1, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lsyd;->g:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    iput-object p1, p0, Lsyd;->i:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    sget p1, Lsyd;->h:I

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

    :goto_5
    sput v0, Lsyd;->h:I

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

    :goto_6
    return-void

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

    :goto_0
    iget-object p0, p0, Lsyd;->i:Ljava/lang/String;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method
