.class public final Lsxu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsxu;

.field public static final b:Lsxu;

.field public static final c:Lsxu;

.field public static final d:[Lsxu;


# instance fields
.field public final e:I

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v2, v3, v4}, Lsxu;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

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

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_3
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v2, Lsxu;->c:Lsxu;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_5
    invoke-direct {v0, v1, v2}, Lsxu;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lsxu;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v1, Lsxu;->b:Lsxu;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v3, "kMoving"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    const/4 v2, -0x1

    nop

    goto/32 :goto_5

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

    goto/32 :goto_12

    nop

    nop

    :goto_b
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    const-string v2, "kStationary"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v1, "kUnknown"

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    new-instance v1, Lsxu;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, v2, v3}, Lsxu;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
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

    nop

    :goto_13
    sput-object v0, Lsxu;->a:Lsxu;

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

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x18

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_16
    new-instance v2, Lsxu;

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

    :goto_17
    return-void

    nop

    nop

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

    nop

    :goto_19
    sput-object v0, Lsxu;->d:[Lsxu;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1a
    filled-new-array {v0, v1, v2}, [Lsxu;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

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

    :goto_1
    iput-object p1, p0, Lsxu;->f:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lsxu;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

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

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lsxu;->f:Ljava/lang/String;

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
