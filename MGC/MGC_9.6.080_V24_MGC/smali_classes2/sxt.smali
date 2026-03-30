.class public final Lsxt;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsxt;

.field public static final b:Lsxt;

.field public static final c:Lsxt;

.field public static final d:[Lsxt;


# instance fields
.field public final e:I

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1, v2}, Lsxt;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    invoke-direct {v2, v3, v4}, Lsxt;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1, v2, v3}, Lsxt;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v2, Lsxt;->c:Lsxt;

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

    :goto_8
    sput-object v0, Lsxt;->d:[Lsxt;

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v2, Lsxt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    const-string v3, "kOn"

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

    :goto_c
    const-string v2, "kOff"

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
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_f
    filled-new-array {v0, v1, v2}, [Lsxt;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_13
    sput-object v1, Lsxt;->b:Lsxt;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v1, Lsxt;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    const-string v1, "kUnknown"

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

    nop

    :goto_19
    sput-object v0, Lsxt;->a:Lsxt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Lsxt;

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
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lsxt;->f:Ljava/lang/String;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lsxt;->e:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
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

    nop

    nop

    :goto_0
    iget-object p0, p0, Lsxt;->f:Ljava/lang/String;

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
