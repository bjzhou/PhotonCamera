.class final Lfku;
.super Ljava/lang/Object;

# interfaces
.implements Lfkx;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lfku;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lfkq;
    .locals 1

    iget v0, p0, Lfku;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lfkq;->i:Lfkq;

    return-object v0

    :pswitch_0
    sget-object v0, Lfkq;->o:Lfkq;

    return-object v0

    :pswitch_1
    sget-object v0, Lfkq;->f:Lfkq;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lgrw;Lgrw;)Z
    .locals 5

    iget v0, p0, Lfku;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget p1, p1, Lgrw;->j:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_4

    return v2

    :pswitch_0
    iget p1, p1, Lgrw;->s:I

    iget p2, p2, Lgrw;->s:I

    if-eq p1, p2, :cond_0

    return v2

    :cond_0
    return v1

    :pswitch_1
    iget-object p1, p1, Lgrw;->o:Landroid/graphics/Rect;

    iget-object p2, p2, Lgrw;->o:Landroid/graphics/Rect;

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-double v3, v0

    int-to-double p1, p1

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-float p1, p1

    const p2, 0x358637bd    # 1.0E-6f

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
