.class public final Labn;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Action$Builder;->setAuthenticationRequired(Z)Landroid/app/Notification$Action$Builder;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setForegroundServiceBehavior(I)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lafv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lafv;-><init>(Landroid/view/View;Loku;)V

    invoke-static {v0}, Lonm;->d(Lomo;)Looc;

    move-result-object p0

    invoke-interface {p0}, Looc;->a()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Labn;->d(Landroid/view/View;)Lbkb;

    move-result-object v0

    invoke-virtual {v0}, Lbkb;->m()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final d(Landroid/view/View;)Lbkb;
    .locals 3

    const v0, 0x7f0b0294

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbkb;

    if-nez v1, :cond_0

    new-instance v1, Lbkb;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lbkb;-><init>([B[B[B)V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v1
.end method
