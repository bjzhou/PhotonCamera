.class public final Ldnf;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    const-class v0, Ldnf;

    invoke-static {v0}, Lkak;->a(Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 6

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method

.method public static c()Lfwx;
    .locals 2

    new-instance v0, Lfwx;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lfwx;-><init>(I)V

    return-object v0
.end method

.method public static d(Ldxo;)V
    .locals 0

    iget-object p0, p0, Ldxo;->a:Ldxl;

    invoke-virtual {p0}, Ldxl;->b()Lgrw;

    return-void
.end method

.method public static final e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ZFFI)V
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v0

    sub-float v1, v0, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    div-float/2addr p3, v0

    invoke-virtual {p0, p3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    mul-float p4, p4, v0

    float-to-int p3, p4

    const/4 p4, 0x3

    if-ge p3, p4, :cond_0

    const/4 p3, 0x3

    :cond_0
    invoke-virtual {p2, p3, p5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    :cond_1
    move-object p2, p1

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    float-to-int p3, p4

    invoke-virtual {p2, p3, p5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_2
    :goto_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static f(Ldsx;)Ldva;
    .locals 1

    new-instance v0, Ldva;

    invoke-direct {v0, p0}, Ldva;-><init>(Ldsx;)V

    return-object v0
.end method

.method public static g(Ldne;Llpg;)Z
    .locals 0

    invoke-virtual {p0}, Ldne;->g()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Llpg;->a:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static h(Ldne;Ldhi;Llpg;)V
    .locals 0

    invoke-static {p0, p2}, Ldnf;->g(Ldne;Llpg;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Ldie;->a:Ldhj;

    invoke-interface {p1}, Ldhi;->d()V

    :cond_0
    return-void
.end method
