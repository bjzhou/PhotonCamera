.class public final Ltdl;
.super Ltdn;
.source "PG"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ltdn;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object v0, p0, Ltdl;->a:Ljava/util/ArrayList;

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
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_3

    nop

    nop

    :goto_0
    instance-of v1, p1, Ltdl;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_a

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xc

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    return v0

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9
    move v0, v2

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    const v1, 0x4

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p1, Ltdl;->a:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_f
    if-nez p0, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    :goto_10
    if-ne p1, p0, :cond_3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p1, Ltdl;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Ltdl;->a:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    return v2

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    :goto_19
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ltdl;->a:Ljava/util/ArrayList;

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

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

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

    :goto_1
    return-object p0

    nop

    :goto_2
    iget-object p0, p0, Ltdl;->a:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
