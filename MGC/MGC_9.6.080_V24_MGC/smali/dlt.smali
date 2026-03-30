.class public final Ldlt;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a(Landroid/graphics/Typeface;Ldlg;Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v1, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2
    move-object p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    sget-object v1, Ldlx;->a:Ljava/lang/ThreadLocal;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, v0, p1, p2}, Ldqb;->b(Ljava/util/List;Ljava/lang/CharSequence;Lubk;I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setFontVariationSettings(Ljava/lang/String;)Z

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz p0, :cond_1

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_a
    sget-object v0, Ldlx;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_e
    goto/32 :goto_1b

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    new-instance p1, Ldlw;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_11
    check-cast v1, Landroid/graphics/Paint;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_12
    iget-object p0, p1, Ldlg;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_14
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    nop

    :goto_18
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p1, Ldlg;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p2}, Ldow;->a(Landroid/content/Context;)Ldpb;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p1}, Ldlw;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v2, Ldlx;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1e
    const/4 v0, 0x0

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
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v1, :cond_3

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

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_21

    nop

    :goto_25
    const/16 p2, 0x1f

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
