.class public final Lnzz;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Llb;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Loac;


# direct methods
.method public constructor <init>(Loac;Llb;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lnzz;->a:Llb;

    nop

    goto/32 :goto_4

    nop

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

    :goto_2
    iput-object p1, p0, Lnzz;->c:Loac;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lnzz;->b:Landroid/view/ViewPropertyAnimator;

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lnzz;->c:Loac;

    nop

    nop

    nop

    goto/32 :goto_5

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

    :goto_2
    invoke-virtual {p0}, Loac;->C()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lnzz;->b:Landroid/view/ViewPropertyAnimator;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lnzz;->a:Llb;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lnzz;->c:Loac;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p1, Loac;->r:Ljava/util/ArrayList;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    iget-object v0, p0, Lnzz;->a:Llb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lnzz;->a:Llb;

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

    :goto_a
    iget-object p1, p0, Lnzz;->c:Loac;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0}, Lki;->k(Llb;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, v0}, Loac;->y(Llb;)V

    goto/32 :goto_0

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lnzz;->c:Loac;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_e

    nop

    nop
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method
