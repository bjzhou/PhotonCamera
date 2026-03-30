.class public Lcom/google/android/material/progressindicator/CircularProgressIndicator;
.super Lriq;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x7f040145

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_2

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p2, p3, v1}, Lekv;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lekv;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p3, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->a:Lrir;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v1, Lrjc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    iget-object p2, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->a:Lrir;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lriq;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    check-cast p2, Lrjd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    invoke-direct {p1, p2}, Lris;-><init>(Lrjd;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lrjn;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p3, Lrjd;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v1, p2, p3}, Lrjc;-><init>(Landroid/content/Context;Lrjd;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p2, p3, p1}, Lrjf;-><init>(Landroid/content/Context;Lrir;Lrjl;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_28

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p2, p3, p1, v1}, Lrjn;-><init>(Landroid/content/Context;Lrir;Lrjl;Lrjm;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_12
    iget v1, p3, Lrjd;->l:I

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object p2

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

    :goto_14
    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_15
    invoke-direct {p0, p1, p2, p3, v0}, Lriq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v1, p3}, Lrix;-><init>(Lrjd;)V

    :goto_17
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object p2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Lrjf;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x5

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

    :goto_1c
    goto :goto_17

    nop

    :goto_1d
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1f
    check-cast p3, Lrjd;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v1, Lrix;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_21
    iget-object p3, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->a:Lrir;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_23
    iput-object p2, v0, Lrjn;->c:Landroid/graphics/drawable/Drawable;

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

    :goto_24
    new-instance p1, Lris;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, v0}, Lriq;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    :goto_27
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_29

    nop

    nop

    :goto_29
    const v0, 0x7f1508dd

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2a
    const p3, 0x7f08032c

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Lrir;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Lrjd;

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

    :goto_2
    invoke-direct {p0, p1, p2}, Lrjd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
