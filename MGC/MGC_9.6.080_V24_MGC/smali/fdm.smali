.class public final enum Lfdm;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lfdm;

.field public static final enum b:Lfdm;

.field private static final synthetic d:[Lfdm;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    const-string v4, ".zip"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v2, "ZIP"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

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
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_14

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    const-string v3, ".json"

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    const v1, 0x11

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v1, v2, v3}, Lfdm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v1, Lfdm;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    new-instance v0, Lfdm;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v1, v2, v3, v4}, Lfdm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    sput-object v0, Lfdm;->a:Lfdm;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    const-string v1, "JSON"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    filled-new-array {v0, v1}, [Lfdm;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_16

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

    goto/32 :goto_2

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    sput-object v0, Lfdm;->d:[Lfdm;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sput-object v1, Lfdm;->b:Lfdm;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lfdm;->c:Ljava/lang/String;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static values()[Lfdm;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, [Lfdm;

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

    :goto_2
    sget-object v0, Lfdm;->d:[Lfdm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, [Lfdm;->clone()Ljava/lang/Object;

    move-result-object v0

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

    :goto_1
    iget-object p0, p0, Lfdm;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
