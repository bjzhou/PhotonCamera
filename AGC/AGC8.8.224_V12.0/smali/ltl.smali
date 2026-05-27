.class public final Lltl;
.super Ljava/lang/Object;

# interfaces
.implements Lltc;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lltl;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Llto;Landroid/view/View;)V
    .locals 5

    iget v0, p0, Lltl;->a:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-static {p2}, Lcq;->f(Landroid/view/View;)Lbw;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, v1}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Outline;->getRadius()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getClipToOutline()Z

    move-result p2

    const-string v4, "clipToOutline"

    invoke-virtual {p1, v4, p2}, Llto;->b(Ljava/lang/CharSequence;Z)V

    sget-object p2, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    if-ne v0, p2, :cond_3

    const-string p2, "BACKGROUND"

    goto :goto_1

    :cond_3
    sget-object p2, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    if-ne v0, p2, :cond_4

    const-string p2, "BOUNDS"

    goto :goto_1

    :cond_4
    sget-object p2, Landroid/view/ViewOutlineProvider;->PADDED_BOUNDS:Landroid/view/ViewOutlineProvider;

    if-ne v0, p2, :cond_5

    const-string p2, "PADDED_BOUNDS"

    goto :goto_1

    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    const-string v0, "outlineProvider"

    invoke-virtual {p1, v0, p2}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    packed-switch v2, :pswitch_data_1

    const-string p2, "PATH"

    goto :goto_2

    :pswitch_1
    const-string p2, "ROUNDED_RECT"

    goto :goto_2

    :pswitch_2
    const-string p2, "NOT_EMPTY"

    goto :goto_2

    :pswitch_3
    const-string p2, "EMPTY"

    :goto_2
    const-string v0, "outline_mode"

    invoke-virtual {p1, v0, p2}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/graphics/Outline;->getAlpha()F

    move-result p2

    const-string v0, "outline_alpha"

    invoke-virtual {p1, v0, p2}, Llto;->c(Ljava/lang/CharSequence;F)V

    if-ne v2, v3, :cond_6

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, p2}, Landroid/graphics/Outline;->getRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v1}, Landroid/graphics/Outline;->getRadius()F

    move-result v0

    const-string v1, "outline_radius"

    invoke-virtual {p1, v1, v0}, Llto;->c(Ljava/lang/CharSequence;F)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "outline_rect"

    invoke-virtual {p1, v0, p2}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_6
    return-void

    :goto_3
    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not have a Fragment set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_8

    iget-object v1, v0, Lbw;->N:Landroid/view/View;

    if-ne v1, p2, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "fragment"

    invoke-virtual {p1, v1, p2}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object p2, v0, Lbw;->E:Ljava/lang/String;

    if-eqz p2, :cond_8

    const-string v0, "fragment_tag"

    invoke-virtual {p1, v0, p2}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
