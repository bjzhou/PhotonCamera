.class public final Lsxo;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsxo;

.field public static final b:Lsxo;

.field private static d:I


# instance fields
.field public final c:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lsxo;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x14

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

    :goto_5
    sput-object v0, Lsxo;->a:Lsxo;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    new-instance v0, Lsxo;

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

    :goto_7
    invoke-direct {v0, v1}, Lsxo;-><init>([B)V

    goto/32 :goto_5

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    :goto_9
    sput v0, Lsxo;->d:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lsxo;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    sput-object v0, Lsxo;->b:Lsxo;

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

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    return-void

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

    nop

    :goto_12
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "kHigh"

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

    :goto_3
    iput v0, p0, Lsxo;->c:I

    nop

    nop

    nop

    goto/32 :goto_a

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

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lsxo;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x9

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

    :goto_9
    add-int/lit8 v1, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

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
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    sput v1, Lsxo;->d:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
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

    :goto_e
    sget v0, Lsxo;->d:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    const v1, 0x10

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method private constructor <init>([B)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    const-string p1, "kStandard"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    sput p0, Lsxo;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lsxo;->e:Ljava/lang/String;

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

    :goto_6
    iput p1, p0, Lsxo;->c:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

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

    :goto_1
    iget-object p0, p0, Lsxo;->e:Ljava/lang/String;

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
