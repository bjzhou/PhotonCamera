.class final Lrjt;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lrjv;


# direct methods
.method public constructor <init>(Lrjv;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lrjt;->a:Lrjv;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Leki;->b(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iget-object p0, p0, Lrjt;->a:Lrjv;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lrjt;->a:Lrjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lrjv;->h:Leki;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lrjv;->j:Lrjn;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Lrjv;->a()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method
