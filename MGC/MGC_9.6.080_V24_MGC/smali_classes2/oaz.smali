.class public final Loaz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# instance fields
.field public a:Landroid/support/v7/widget/RecyclerView;

.field private final b:Ljava/lang/Runnable;

.field private final c:Ldux;

.field private d:Lobf;


# direct methods
.method public constructor <init>(Ldux;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Loaz;->b:Ljava/lang/Runnable;

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

    :goto_1
    new-instance v0, Lnue;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Loaz;->c:Ldux;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    invoke-direct {v0, p0, v1}, Lnue;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0xd

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;)Lobf;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    iput-boolean p0, v0, Lobf;->a:Z

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    const v1, 0x6

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lobf;

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

    :goto_e
    iput-boolean p0, v0, Lobf;->b:Z

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    invoke-direct {v0, v1, p0}, Lobf;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto/32 :goto_7

    nop

    nop
.end method


# virtual methods
.method public final onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-wide/16 v0, 0x50

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v0, p1

    nop

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

    :goto_6
    const/high16 v0, 0x400000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v1, v0}, Ldux;->accept(Ljava/lang/Object;)V

    :goto_8
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    :goto_a
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_23

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    :goto_f
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    :goto_10
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    :goto_13
    mul-float/2addr p2, p0

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

    :goto_14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_16
    iget-object v1, p0, Loaz;->c:Ldux;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Loaz;->d:Lobf;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, v2, p0}, Landroid/view/View;->scrollBy(II)V

    :goto_1a
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_e

    nop

    nop

    :goto_1c
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    return p0

    nop

    :goto_20
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v0}, Loaz;->a(Landroid/support/v7/widget/RecyclerView;)Lobf;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return v2

    nop

    :goto_23
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_24
    if-eq v0, v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

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

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    neg-float p2, p2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_2c

    nop

    nop

    :goto_2a
    const/16 v1, 0x8

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object v0, p0, Loaz;->a:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2c
    iget-object p0, p0, Loaz;->b:Ljava/lang/Runnable;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v1, p0, Loaz;->d:Lobf;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2e
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

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

    :goto_30
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result p0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Loaz;->b:Ljava/lang/Runnable;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop
.end method
