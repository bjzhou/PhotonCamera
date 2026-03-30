.class public final Lfsr;
.super Lfsj;
.source "PG"


# static fields
.field private static u:Lfsr;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lfsj;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static a()Lfsr;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xe

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, Lfsr;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    new-instance v0, Lfsr;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
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

    :goto_4
    sget-object v0, Lfsr;->u:Lfsr;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v2}, Lfpl;-><init>()V

    goto/32 :goto_c

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_9
    invoke-virtual {v0}, Lfsj;->Q()V

    goto/32 :goto_a

    nop

    nop

    :goto_a
    sput-object v0, Lfsr;->u:Lfsr;

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1, v2}, Lfsj;->D(Lfpu;Lfjt;)Lfsj;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v0, Lfsr;->u:Lfsr;

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

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v2, Lfpl;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    return-object v0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0}, Lfsr;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    :goto_15
    add-int v0, v0, v1

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

    :goto_16
    sget-object v1, Lfpu;->b:Lfpu;

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
.end method

.method public static b(Ljava/lang/Class;)Lfsr;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    check-cast p0, Lfsr;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lfsr;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Lfsj;->n(Ljava/lang/Class;)Lfsj;

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

    nop

    nop

    :goto_4
    new-instance v0, Lfsr;

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

.method public static c(Lfli;)Lfsr;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Lfsj;->o(Lfli;)Lfsj;

    move-result-object p0

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

    :goto_1
    check-cast p0, Lfsr;

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

    :goto_2
    invoke-direct {v0}, Lfsr;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lfsr;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-super {p0, p1}, Lfsj;->equals(Ljava/lang/Object;)Z

    move-result p0

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

    :goto_8
    instance-of v0, p1, Lfsr;

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
.end method
