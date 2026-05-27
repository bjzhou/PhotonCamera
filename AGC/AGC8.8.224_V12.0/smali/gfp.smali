.class public final Lgfp;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lkab;Z)I
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz p1, :cond_3

    sget-object p1, Lkab;->a:Lkab;

    if-ne p0, p1, :cond_0

    return v2

    :cond_0
    sget-object p1, Lkab;->b:Lkab;

    if-ne p0, p1, :cond_1

    return v3

    :cond_1
    sget-object p1, Lkab;->c:Lkab;

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    sget-object p1, Lkab;->a:Lkab;

    if-ne p0, p1, :cond_4

    return v3

    :cond_4
    sget-object p1, Lkab;->b:Lkab;

    if-ne p0, p1, :cond_5

    return v2

    :cond_5
    sget-object p1, Lkab;->c:Lkab;

    if-ne p0, p1, :cond_6

    return v0

    :cond_6
    return v1
.end method

.method public static b(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static c(Landroid/view/WindowManager;)I
    .locals 0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lkab;->a:Lkab;

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x10e

    invoke-static {p0}, Lkab;->d(I)Lkab;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    const/16 p0, 0xb4

    invoke-static {p0}, Lkab;->d(I)Lkab;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x5a

    invoke-static {p0}, Lkab;->d(I)Lkab;

    move-result-object p0

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x0

    invoke-static {p0}, Lkab;->d(I)Lkab;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lkab;->a()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
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
