.class public final enum Ljdr;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Ljdr;

.field public static final enum b:Ljdr;

.field private static final synthetic d:[Ljdr;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    :goto_0
    sput-object v0, Ljdr;->d:[Ljdr;

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

    :goto_1
    const-string v3, "ACTIVITY_START"

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
    goto/32 :goto_16

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    const/4 v4, 0x0

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

    :goto_8
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    new-instance v1, Ljdr;

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

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v3, v1, v2}, Ljdr;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_c

    nop

    nop

    :goto_c
    sput-object v0, Ljdr;->a:Ljdr;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    sget-object v4, Lcom/google/android/apps/camera/whitebalance/YD/hwKuVzZ;->SXpsjyNf:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_e
    sput-object v1, Ljdr;->b:Ljdr;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    filled-new-array {v0, v1}, [Ljdr;

    move-result-object v0

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

    :goto_10
    new-instance v0, Ljdr;

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

    :goto_11
    invoke-static {v0}, Lrkm;->u([Ljava/lang/Enum;)Luas;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    :goto_17
    invoke-direct {v1, v4, v2, v3}, Ljdr;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x6

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

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

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Ljdr;->c:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static values()[Ljdr;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    check-cast v0, [Ljdr;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Ljdr;->d:[Ljdr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
