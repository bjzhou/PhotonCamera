.class public final enum Lsrk;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final enum a:Lsrk;

.field public static final enum b:Lsrk;

.field private static final synthetic c:[Lsrk;


# instance fields
.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v1, Lsrk;->b:Lsrk;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v1, v2, v3, v4}, Lsrk;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    :goto_2
    const v0, 0x16

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v5, "Booleans.falseFirst()"

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    sput-object v0, Lsrk;->a:Lsrk;

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

    :goto_5
    new-instance v1, Lsrk;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "TRUE_FIRST"

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
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1, v2, v3, v4, v5}, Lsrk;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    const v1, 0x6

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v4, "Booleans.trueFirst()"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_11

    nop

    :goto_13
    const-string v2, "FALSE_FIRST"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_14
    new-instance v0, Lsrk;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    const/4 v3, 0x1

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

    :goto_16
    const/4 v4, -0x1

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

    nop

    :goto_17
    filled-new-array {v0, v1}, [Lsrk;

    move-result-object v0

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

    nop

    :goto_18
    sput-object v0, Lsrk;->c:[Lsrk;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Lsrk;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Lsrk;->d:I

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

.method public static values()[Lsrk;
    .locals 1

    goto/32 :goto_2

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
    invoke-virtual {v0}, [Lsrk;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lsrk;->c:[Lsrk;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    check-cast v0, [Lsrk;

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
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

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

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

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

    :goto_3
    iget v0, p0, Lsrk;->d:I

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

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

    :goto_6
    iget p1, p0, Lsrk;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    move p1, v0

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return v0

    nop

    :goto_a
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    check-cast p1, Ljava/lang/Boolean;

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

    :goto_e
    sub-int/2addr v0, p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    if-nez p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

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

    :goto_1
    iget-object p0, p0, Lsrk;->e:Ljava/lang/String;

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
.end method
