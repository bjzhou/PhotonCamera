.class final Lbkp;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ldne;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "x"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "y"

    aput-object v2, v0, v1

    invoke-static {v0}, Ldne;->J([Ljava/lang/String;)Ldne;

    move-result-object v0

    sput-object v0, Lbkp;->a:Ldne;

    return-void
.end method

.method static a(Lblh;)F
    .locals 2

    invoke-virtual {p0}, Lblh;->q()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    sparse-switch v1, :sswitch_data_0

    invoke-static {v0}, Lbze;->M(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown value for token of type "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    invoke-virtual {p0}, Lblh;->a()D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :sswitch_1
    invoke-virtual {p0}, Lblh;->h()V

    invoke-virtual {p0}, Lblh;->a()D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    invoke-virtual {p0}, Lblh;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lblh;->n()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lblh;->j()V

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method static b(Lblh;)I
    .locals 8

    invoke-virtual {p0}, Lblh;->h()V

    invoke-virtual {p0}, Lblh;->a()D

    move-result-wide v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double v0, v0, v2

    invoke-virtual {p0}, Lblh;->a()D

    move-result-wide v4

    mul-double v4, v4, v2

    invoke-virtual {p0}, Lblh;->a()D

    move-result-wide v6

    mul-double v6, v6, v2

    :goto_0
    invoke-virtual {p0}, Lblh;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lblh;->n()V

    goto :goto_0

    :cond_0
    double-to-int v2, v6

    double-to-int v3, v4

    double-to-int v0, v0

    invoke-virtual {p0}, Lblh;->j()V

    const/16 p0, 0xff

    invoke-static {p0, v0, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method static c(Lblh;F)Landroid/graphics/PointF;
    .locals 4

    invoke-virtual {p0}, Lblh;->q()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sparse-switch v0, :sswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lblh;->q()I

    move-result p0

    invoke-static {p0}, Lbze;->M(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unknown point starts with "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_0
    invoke-virtual {p0}, Lblh;->a()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lblh;->a()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_0
    invoke-virtual {p0}, Lblh;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lblh;->n()V

    goto :goto_0

    :cond_0
    mul-float v0, v0, p1

    mul-float v1, v1, p1

    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :sswitch_1
    invoke-virtual {p0}, Lblh;->i()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lblh;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lbkp;->a:Ldne;

    invoke-virtual {p0, v2}, Lblh;->r(Ldne;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0}, Lblh;->m()V

    invoke-virtual {p0}, Lblh;->n()V

    goto :goto_1

    :pswitch_0
    invoke-static {p0}, Lbkp;->a(Lblh;)F

    move-result v1

    goto :goto_1

    :pswitch_1
    invoke-static {p0}, Lbkp;->a(Lblh;)F

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lblh;->k()V

    mul-float v0, v0, p1

    mul-float v1, v1, p1

    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :sswitch_2
    invoke-virtual {p0}, Lblh;->h()V

    invoke-virtual {p0}, Lblh;->a()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lblh;->a()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_2
    invoke-virtual {p0}, Lblh;->q()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lblh;->n()V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lblh;->j()V

    mul-float v0, v0, p1

    mul-float v1, v1, p1

    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static d(Lblh;F)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lblh;->h()V

    :goto_0
    invoke-virtual {p0}, Lblh;->q()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lblh;->h()V

    invoke-static {p0, p1}, Lbkp;->c(Lblh;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lblh;->j()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lblh;->j()V

    return-object v0
.end method
