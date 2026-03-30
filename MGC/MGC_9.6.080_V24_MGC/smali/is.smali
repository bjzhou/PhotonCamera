.class public final Lis;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Llb;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/ViewPropertyAnimator;

.field final synthetic d:Lix;


# direct methods
.method public constructor <init>(Lix;Llb;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Lis;->c:Landroid/view/ViewPropertyAnimator;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lis;->b:Landroid/view/View;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iput-object p1, p0, Lis;->d:Lix;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lis;->a:Llb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lis;->b:Landroid/view/View;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Lki;->k(Llb;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p1, Lix;->d:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Lis;->d:Lix;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lix;->a()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lis;->d:Lix;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lis;->d:Lix;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lis;->a:Llb;

    nop

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

    :goto_b
    iget-object p1, p0, Lis;->c:Landroid/view/ViewPropertyAnimator;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lis;->a:Llb;

    nop

    nop

    goto/32 :goto_9

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

    :goto_0
    return-void

    nop
.end method
