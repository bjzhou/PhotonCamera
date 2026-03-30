.class final enum Lrzq;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field public static final enum a:Lrzq;

.field private static final synthetic b:[Lrzq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    filled-new-array {v0}, [Lrzq;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    sput-object v0, Lrzq;->a:Lrzq;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lrzq;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lrzq;->b:[Lrzq;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lrzq;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_7
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x18

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    const-string v0, "INSTANCE"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public static values()[Lrzq;
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

    nop

    :goto_1
    sget-object v0, Lrzq;->b:[Lrzq;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, [Lrzq;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-virtual {v0}, [Lrzq;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final next()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/util/NoSuchElementException;

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

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final remove()V
    .locals 4

    goto/32 :goto_10

    nop

    nop

    :goto_0
    const/16 v2, 0x275

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1c

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

    nop

    nop

    :goto_6
    invoke-static {v2, v3, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    const/4 v0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    :goto_e
    aput-object v1, v0, v3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    const/4 v3, 0x0

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

    :goto_10
    const v0, 0x8

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method
