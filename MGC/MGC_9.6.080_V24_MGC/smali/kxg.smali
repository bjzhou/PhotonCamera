.class public final synthetic Lkxg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# instance fields
.field private final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lkxg;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 1

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ljava/lang/Double;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lkxh;->a(Lpnu;)D

    move-result-wide p0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    sget-object p0, Llpp;->a:Lj$/time/Duration;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    const/4 v0, 0x1

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

    :goto_7
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    if-ne p0, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9
    check-cast p1, Landroid/util/Pair;

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

    :goto_a
    return-wide p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    :goto_c
    invoke-static {p1}, Lkxh;->b(Lpnu;)D

    move-result-wide p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-wide p0

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    return-wide p0

    nop

    nop

    :goto_11
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    if-ne p0, v0, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    return-wide p0

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p1, Lpnu;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget p0, p0, Lkxg;->a:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p1, Lpnu;

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

    :goto_18
    if-ne p0, v0, :cond_3

    nop

    goto/32 :goto_f

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    nop

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

    :goto_1b
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1c
    return-wide p0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop
.end method
