.class final enum Lusr;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lusr;

.field public static final enum b:Lusr;

.field public static final enum c:Lusr;

.field public static final enum d:Lusr;

.field private static final synthetic f:[Lusr;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    goto/32 :goto_3

    nop

    nop

    :goto_0
    new-instance v3, Lusr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    sput-object v0, Lusr;->a:Lusr;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    const/4 v6, 0x3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x8

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v5, 0x2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Lusr;

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

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a
    const-string v2, "DISK"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    sput-object v2, Lusr;->c:Lusr;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    sput-object v3, Lusr;->d:Lusr;

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

    :goto_d
    filled-new-array {v0, v1, v2, v3}, [Lusr;

    move-result-object v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    const v1, 0x1c

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    invoke-direct {v1, v2, v3, v3}, Lusr;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_11
    new-instance v2, Lusr;

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

    :goto_12
    const-string v4, "DISK_NO_HTTP"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_13
    invoke-direct {v0, v1, v2, v2}, Lusr;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v4, "MEMORY"

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

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    invoke-direct {v2, v4, v5, v3}, Lusr;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sput-object v0, Lusr;->f:[Lusr;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_0

    nop

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

    :goto_1a
    invoke-direct {v3, v4, v6, v5}, Lusr;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sput-object v1, Lusr;->b:Lusr;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1c
    const-string v1, "DISABLED"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Lusr;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_15

    nop

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput p3, p0, Lusr;->e:I

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

    nop
.end method

.method public static values()[Lusr;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    check-cast v0, [Lusr;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, [Lusr;->clone()Ljava/lang/Object;

    move-result-object v0

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
    sget-object v0, Lusr;->f:[Lusr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
