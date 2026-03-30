.class final Lriz;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lrjc;


# direct methods
.method public constructor <init>(Lrjc;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Lriz;->a:Lrjc;

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lrjc;->a()V

    goto/32 :goto_8

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Leki;->b(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lrjc;->h:Leki;

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
    iget-object p0, p0, Lrjc;->j:Lrjn;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lriz;->a:Lrjc;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lriz;->a:Lrjc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method
