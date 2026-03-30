.class public abstract Lsdw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final c:Lsdw;

.field public static final d:Lsdw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lsds;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lsdw;->d:Lsdw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lsds;

    nop

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
    invoke-direct {v0}, Lsds;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lsds;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lsdw;->c:Lsdw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop
.end method

.method protected constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method static b(Lsdw;Lsdw;)Lsdw;
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lsdt;

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

    nop

    :goto_1
    goto/32 :goto_9

    nop

    :goto_2
    goto/16 :goto_17

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v1, Lsdw;->d:Lsdw;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_5
    return-object p1

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-ne p0, v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p0, p1}, Lsdt;-><init>(Lsdw;Lsdw;)V

    goto/32 :goto_16

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    :goto_14
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_15
    if-eqz p1, :cond_3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    :goto_16
    return-object v0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v0, Lsdw;->c:Lsdw;

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

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-ne p1, v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0xd

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

    :goto_1c
    if-eq p1, v1, :cond_5

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1d
    if-eq p0, v1, :cond_6

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_15

    nop

    nop
.end method


# virtual methods
.method protected abstract a()V
.end method
