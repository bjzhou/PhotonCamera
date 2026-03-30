.class public final Lpqe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final a:[Ljava/util/Comparator;


# direct methods
.method public constructor <init>([Ljava/util/Comparator;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

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

    nop

    :goto_2
    iput-object p1, p0, Lpqe;->a:[Ljava/util/Comparator;

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
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    array-length v0, p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p1, Lpqc;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_4
    check-cast p1, Lpqc;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    array-length v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lpqe;->a:[Ljava/util/Comparator;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    aget-object v3, p1, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    array-length v1, p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_c
    const v0, 0xf

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    if-lt v1, v2, :cond_2

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    :goto_e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_31

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    :goto_12
    const v1, 0xc

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    :goto_16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eq v0, v1, :cond_4

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_18
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move v0, v2

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

    :goto_1a
    const-string p1, " to "

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1d
    aget-object v4, p2, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    aget-object v2, p0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    throw p0

    nop

    :goto_20
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_22
    const-string v2, "Unable to compare "

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_23
    goto :goto_29

    nop

    :goto_24
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return v0

    nop

    :goto_26
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_27
    check-cast p2, Lpqc;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move v1, v0

    nop

    :goto_29
    goto/32 :goto_2d

    nop

    nop

    :goto_2a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const-string p1, " because the lengths are different from "

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2d
    array-length v2, p0

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

    :goto_2e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_31
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p2, p2, Lpqc;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_33
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method
