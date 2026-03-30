.class public final enum Lpwi;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ltkj;


# static fields
.field public static final enum a:Lpwi;

.field public static final enum b:Lpwi;

.field public static final enum c:Lpwi;

.field public static final enum d:Lpwi;

.field private static final synthetic e:[Lpwi;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_16

    nop

    nop

    :goto_0
    sput-object v1, Lpwi;->b:Lpwi;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    const-string v4, "PROTOSTORE_ONLY"

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lpwi;->a:Lpwi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    const-string v2, "SHARED_PREFERENCES_ONLY"

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_5
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    new-instance v0, Lpwi;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_7
    const-string v3, "SHARED_PREFERENCES_AND_PROTOSTORE"

    nop

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

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    new-instance v2, Lpwi;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    invoke-direct {v1, v2, v3, v3}, Lpwi;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v1, Lpwi;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    invoke-direct {v2, v3, v4, v4}, Lpwi;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_17

    nop

    nop

    :goto_e
    invoke-direct {v3, v4, v5, v5}, Lpwi;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_f
    filled-new-array {v0, v1, v2, v3}, [Lpwi;

    move-result-object v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_15

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
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_13
    const v1, 0x4

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

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    :goto_16
    const v0, 0x3

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

    :goto_17
    sput-object v2, Lpwi;->c:Lpwi;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, v1, v2, v2}, Lpwi;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v5, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1a
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v3, Lpwi;

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

    :goto_1c
    sput-object v0, Lpwi;->e:[Lpwi;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1e
    const-string v1, "UNDEFINED"

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

    :goto_1f
    sput-object v3, Lpwi;->d:Lpwi;

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Lpwi;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_0

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

    nop

    nop

    nop
.end method

.method public static b(I)Lpwi;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p0, v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ne p0, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne p0, v0, :cond_3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p0, Lpwi;->a:Lpwi;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    sget-object p0, Lpwi;->d:Lpwi;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p0, Lpwi;->b:Lpwi;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_f
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_10
    sget-object p0, Lpwi;->c:Lpwi;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public static values()[Lpwi;
    .locals 1

    goto/32 :goto_1

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

    :goto_1
    sget-object v0, Lpwi;->e:[Lpwi;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {v0}, [Lpwi;->clone()Ljava/lang/Object;

    move-result-object v0

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

    :goto_3
    check-cast v0, [Lpwi;

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

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
    iget p0, p0, Lpwi;->f:I

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

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
    iget p0, p0, Lpwi;->f:I

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
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

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
.end method
