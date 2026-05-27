.class public final Lajr;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:I

.field private static final b:Lajq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lajq;->a:Lajq;

    sput-object v0, Lajr;->b:Lajq;

    return-void
.end method

.method public static final a(Lbw;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lajo;

    invoke-direct {v0, p0, p1}, Lajo;-><init>(Lbw;Ljava/lang/String;)V

    invoke-static {v0}, Lajr;->d(Lakb;)V

    invoke-static {p0}, Lajr;->b(Lbw;)Lajq;

    move-result-object p1

    iget-object v1, p1, Lajq;->b:Ljava/util/Set;

    sget-object v2, Lajp;->c:Lajp;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lajr;->e(Lajq;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, v0}, Lajr;->c(Lajq;Lakb;)V

    :cond_0
    return-void
.end method

.method public static final b(Lbw;)Lajq;
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lbw;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbw;->getParentFragmentManager()Lcq;

    :cond_0
    iget-object p0, p0, Lbw;->B:Lbw;

    goto :goto_0

    :cond_1
    sget-object p0, Lajr;->b:Lajq;

    return-object p0
.end method

.method public static final c(Lajq;Lakb;)V
    .locals 4

    iget-object v0, p1, Lakb;->a:Lbw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lajq;->b:Ljava/util/Set;

    sget-object v3, Lajp;->a:Lajp;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    iget-object p0, p0, Lajq;->b:Ljava/util/Set;

    sget-object v2, Lajp;->b:Lajp;

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lbd;

    const/16 v2, 0xc

    invoke-direct {p0, v1, p1, v2}, Lbd;-><init>(Ljava/lang/String;Lakb;I)V

    invoke-virtual {v0}, Lbw;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object p1

    iget-object p1, p1, Lcq;->i:Lce;

    iget-object p1, p1, Lce;->d:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public static final d(Lakb;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcq;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lakb;->a:Lbw;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static final e(Lajq;Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lajq;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    const/4 p1, 0x1

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lakb;

    invoke-static {v0, v1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lljr;->am(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return p1

    :cond_3
    return v1
.end method
