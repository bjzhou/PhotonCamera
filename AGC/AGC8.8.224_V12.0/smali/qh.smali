.class public final Lqh;
.super Ljava/lang/Object;


# direct methods
.method static a(Lqi;Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0, p1}, Lqi;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lxw;)Lnou;
    .locals 3

    new-instance v0, Lxu;

    invoke-direct {v0}, Lxu;-><init>()V

    new-instance v1, Lxy;

    invoke-direct {v1, v0}, Lxy;-><init>(Lxu;)V

    iput-object v1, v0, Lxu;->b:Lxy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lxu;->a:Ljava/lang/Object;

    :try_start_0
    invoke-interface {p0, v0}, Lxw;->a(Lxu;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lxu;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v1, p0}, Lxy;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method
