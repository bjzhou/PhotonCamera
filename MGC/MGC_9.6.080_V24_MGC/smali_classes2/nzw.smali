.class public final Lnzw;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Llb;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Loac;


# direct methods
.method public constructor <init>(Loac;Llb;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lnzw;->b:Landroid/view/ViewPropertyAnimator;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lnzw;->a:Llb;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lnzw;->c:Loac;

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
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0}, Loac;->x(Llb;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lnzw;->c:Loac;

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

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lnzw;->a:Llb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lnzw;->c:Loac;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_a

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iget-object v0, p0, Lnzw;->a:Llb;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0}, Lki;->k(Llb;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lnzw;->c:Loac;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    iget-object p1, p0, Lnzw;->b:Landroid/view/ViewPropertyAnimator;

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

    :goto_8
    iget-object v0, p0, Lnzw;->a:Llb;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    iget-object p0, p0, Lnzw;->c:Loac;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    iget-object p1, p0, Lnzw;->c:Loac;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Loac;->C()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lnzw;->a:Llb;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    iget-object p1, p1, Loac;->o:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0}, Loac;->x(Llb;)V

    goto/32 :goto_6

    nop

    nop

    nop

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

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method
