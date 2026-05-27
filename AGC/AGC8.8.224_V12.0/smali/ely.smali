.class public final Lely;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lelx;)Landroid/os/PowerManager;
    .locals 1

    sget-object v0, Lelx;->j:Llpu;

    invoke-interface {p0, v0}, Lelx;->a(Llpu;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static b(Lelx;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    sget-object v0, Lelx;->c:Llpu;

    invoke-interface {p0, v0}, Lelx;->a(Llpu;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
