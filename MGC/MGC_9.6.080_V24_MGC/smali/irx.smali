.class public final synthetic Lirx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrsk;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lirx;->a:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lirx;->b:F

    nop

    nop

    nop

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget p0, p0, Lirx;->b:F

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    if-lez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    cmpg-float p0, p1, p0

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
    if-gez v0, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_e
    iget v1, p0, Lirx;->a:F

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

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

    :goto_11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    const/4 v1, 0x1

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_15
    cmpl-float v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method
