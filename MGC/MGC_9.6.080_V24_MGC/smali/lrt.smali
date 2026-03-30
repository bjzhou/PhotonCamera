.class final Llrt;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "PG"


# instance fields
.field final synthetic a:Llrw;


# direct methods
.method public constructor <init>(Llrw;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Llrt;->a:Llrw;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_1
    iget-object p0, p0, Llrt;->a:Llrw;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Llrw;->c:Landroid/graphics/drawable/AnimatedVectorDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean p1, p0, Llrw;->b:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_1

    nop

    nop
.end method
