.class public final synthetic Lgew;
.super Ljava/lang/Object;

# interfaces
.implements Likj;


# instance fields
.field public final synthetic a:Lgea;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lgev;I)V
    .locals 0

    iput p2, p0, Lgew;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgew;->a:Lgea;

    return-void
.end method

.method public synthetic constructor <init>(Lgex;I)V
    .locals 0

    iput p2, p0, Lgew;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgew;->a:Lgea;

    return-void
.end method


# virtual methods
.method public final q(Liko;Lhyn;)V
    .locals 5

    iget p2, p0, Lgew;->b:I

    const/16 v0, 0x1d4c

    const/16 v1, 0x9c4

    const/4 v2, 0x0

    const/16 v3, 0x2710

    packed-switch p2, :pswitch_data_0

    iget-object p2, p0, Lgew;->a:Lgea;

    sget-object v4, Liko;->a:Liko;

    sget-object v4, Lika;->a:Lika;

    sget-object v4, Lgej;->a:Lgej;

    invoke-virtual {p1}, Liko;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    goto/16 :goto_4

    :pswitch_0
    iget-object p2, p0, Lgew;->a:Lgea;

    sget-object v4, Liko;->a:Liko;

    sget-object v4, Lika;->a:Lika;

    sget-object v4, Lgej;->a:Lgej;

    invoke-virtual {p1}, Liko;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_2

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x9c4

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x1d4c

    :goto_0
    check-cast p2, Lgex;

    iget-object v4, p2, Lgex;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v4

    if-ne v4, v3, :cond_1

    if-ne p1, v1, :cond_0

    iget-object p1, p2, Lgex;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object p1, p2, Lgex;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    const/16 v3, 0x9c4

    const/16 v4, 0x2710

    goto :goto_2

    :cond_0
    const/16 v4, 0x2710

    :cond_1
    if-nez v4, :cond_3

    if-ne p1, v0, :cond_2

    iget-object v0, p2, Lgex;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object v0, p2, Lgex;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move v3, p1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    if-ne v2, v0, :cond_4

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move v3, p1

    :goto_2
    sub-int p1, v3, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-gt p1, v1, :cond_6

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    iget-object p1, p2, Lgex;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, p1}, Lgex;->o(ILandroid/graphics/drawable/Drawable;)V

    iget-object p1, p2, Lgex;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, p1}, Lgex;->o(ILandroid/graphics/drawable/Drawable;)V

    return-void

    :cond_6
    :goto_3
    iget-object p1, p2, Lgex;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object p1, p2, Lgex;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void

    :pswitch_3
    const/16 p1, 0x9c4

    goto :goto_4

    :pswitch_4
    const/16 p1, 0x1d4c

    :goto_4
    check-cast p2, Lgev;

    iget-object v4, p2, Lgev;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v4

    if-ne v4, v3, :cond_8

    if-ne p1, v1, :cond_7

    iget-object p1, p2, Lgev;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object p1, p2, Lgev;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    const/16 v3, 0x9c4

    const/16 v4, 0x2710

    goto :goto_6

    :cond_7
    const/16 v4, 0x2710

    :cond_8
    if-nez v4, :cond_a

    if-ne p1, v0, :cond_9

    iget-object v0, p2, Lgev;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object v0, p2, Lgev;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move v3, p1

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    move v2, v4

    :goto_5
    if-ne v2, v0, :cond_b

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    move v3, p1

    :goto_6
    sub-int p1, v3, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-gt p1, v1, :cond_d

    if-nez p1, :cond_c

    goto :goto_7

    :cond_c
    iget-object p1, p2, Lgev;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, p1}, Lgev;->o(ILandroid/graphics/drawable/Drawable;)V

    iget-object p1, p2, Lgev;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, p1}, Lgev;->o(ILandroid/graphics/drawable/Drawable;)V

    return-void

    :cond_d
    :goto_7
    iget-object p1, p2, Lgev;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object p1, p2, Lgev;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
