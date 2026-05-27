.class public final Lach;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/res/Resources;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/Class;Lbkb;Lalt;Lalz;)Lalr;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lach;->d(Ljava/lang/String;Ljava/lang/Class;Lbkb;Lalt;Lalz;)Lalr;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/Class;Lbkb;Lalt;Lalz;)Lalr;
    .locals 2

    invoke-virtual {p2, p0}, Lbkb;->j(Ljava/lang/String;)Lalr;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of p0, p3, Lalv;

    if-eqz p0, :cond_0

    check-cast p3, Lalv;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, v0}, Lalv;->d(Lalr;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_2
    new-instance v0, Lamb;

    invoke-direct {v0, p4}, Lamb;-><init>(Lalz;)V

    sget-object p4, Lalu;->d:Laly;

    invoke-virtual {v0, p4, p0}, Lamb;->b(Laly;Ljava/lang/Object;)V

    :try_start_0
    invoke-interface {p3, p1, v0}, Lalt;->b(Ljava/lang/Class;Lalz;)Lalr;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p4

    invoke-interface {p3, p1}, Lalt;->a(Ljava/lang/Class;)Lalr;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lalr;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lalr;->d()V

    :cond_3
    return-object p1
.end method
