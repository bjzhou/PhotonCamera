.class public final Ljeh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lbx;Lohx;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Ljeh;->c:I

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
    iput-object p1, p0, Ljeh;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Ljeh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-void

    nop
.end method

.method public constructor <init>(Lezm;Landroid/view/View;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljeh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Ljeh;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput p3, p0, Ljeh;->c:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Ljeh;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    check-cast p1, Lohx;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iget-object p1, p1, Lbo;->R:Landroid/view/View;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Lohx;->e()V

    goto/32 :goto_16

    nop

    nop

    :goto_6
    iget p1, p0, Ljeh;->c:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Ljeh;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    check-cast p0, Lezm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, p0}, Ldf;->c(Landroid/view/ViewGroup;Lcj;)Ldf;

    move-result-object p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p1, Landroid/view/ViewGroup;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Ljeh;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lbx;->a:Lcj;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p0, Lbx;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Ldf;->g()V

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    if-ne p1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lezm;->n()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p1, Lohx;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_17
    check-cast p1, Lbo;

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Ljeh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    if-ne p1, v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Ljeh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    iget p1, p0, Ljeh;->c:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Lezm;->i()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p1, Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p1, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lezm;->i()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Ljeh;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p1, Lezm;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p1, Lezm;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    iget-object p1, p0, Ljeh;->a:Ljava/lang/Object;

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
.end method
