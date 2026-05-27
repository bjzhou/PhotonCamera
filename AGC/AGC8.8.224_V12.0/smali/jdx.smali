.class public final Ljdx;
.super Ljdt;


# instance fields
.field public final b:Ljez;


# direct methods
.method public constructor <init>(Ljez;Lkgd;[B[B)V
    .locals 0

    const/4 p3, 0x4

    const/4 p4, 0x0

    invoke-direct {p0, p3, p2, p4, p4}, Ljdt;-><init>(ILkgd;[B[B)V

    iput-object p1, p0, Ljdx;->b:Ljez;

    return-void
.end method


# virtual methods
.method public final a(Ljen;)Z
    .locals 1

    iget-object p1, p1, Ljen;->e:Ljava/util/Map;

    iget-object v0, p0, Ljdx;->b:Ljez;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldja;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljen;)[Ljca;
    .locals 1

    iget-object p1, p1, Ljen;->e:Ljava/util/Map;

    iget-object v0, p0, Ljdx;->b:Ljez;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldja;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Ldja;->c:Ljava/lang/Object;

    check-cast p1, Lkxq;

    iget-object p1, p1, Lkxq;->b:Ljava/lang/Object;

    check-cast p1, [Ljca;

    return-object p1
.end method

.method public final c(Ljen;)V
    .locals 3

    iget-object v0, p1, Ljen;->e:Ljava/util/Map;

    iget-object v1, p0, Ljdx;->b:Ljez;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    if-eqz v0, :cond_0

    iget-object v1, v0, Ldja;->b:Ljava/lang/Object;

    iget-object p1, p1, Ljen;->b:Ljcz;

    iget-object v2, p0, Ljdx;->a:Lkgd;

    check-cast v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v1, v1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v1, Ljfg;

    iget-object v1, v1, Ljfg;->b:Ljfh;

    invoke-interface {v1, p1, v2}, Ljfh;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, v0, Ldja;->c:Ljava/lang/Object;

    check-cast p1, Lkxq;

    iget-object p1, p1, Lkxq;->c:Ljava/lang/Object;

    check-cast p1, Ljfb;

    invoke-virtual {p1}, Ljfb;->a()V

    return-void

    :cond_0
    iget-object p1, p0, Ljdx;->a:Lkgd;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkgd;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic g(Ligo;Z)V
    .locals 0

    return-void
.end method
