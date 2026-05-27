.class public final Ljdv;
.super Ljdt;


# instance fields
.field public final b:Ldja;


# direct methods
.method public constructor <init>(Ldja;Lkgd;[B[B[B)V
    .locals 0

    const/4 p3, 0x3

    const/4 p4, 0x0

    invoke-direct {p0, p3, p2, p4, p4}, Ljdt;-><init>(ILkgd;[B[B)V

    iput-object p1, p0, Ljdv;->b:Ldja;

    return-void
.end method


# virtual methods
.method public final a(Ljen;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljen;)[Ljca;
    .locals 0

    iget-object p1, p0, Ljdv;->b:Ldja;

    iget-object p1, p1, Ldja;->c:Ljava/lang/Object;

    check-cast p1, Lkxq;

    iget-object p1, p1, Lkxq;->b:Ljava/lang/Object;

    check-cast p1, [Ljca;

    return-object p1
.end method

.method public final c(Ljen;)V
    .locals 3

    iget-object v0, p0, Ljdv;->b:Ldja;

    iget-object v0, v0, Ldja;->c:Ljava/lang/Object;

    iget-object v1, p1, Ljen;->b:Ljcz;

    iget-object v2, p0, Ljdv;->a:Lkgd;

    check-cast v0, Lkxq;

    invoke-virtual {v0, v1, v2}, Lkxq;->b(Ljcu;Lkgd;)V

    iget-object v0, p0, Ljdv;->b:Ldja;

    iget-object v0, v0, Ldja;->c:Ljava/lang/Object;

    check-cast v0, Lkxq;

    invoke-virtual {v0}, Lkxq;->a()Ljez;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Ljen;->e:Ljava/util/Map;

    iget-object v1, p0, Ljdv;->b:Ldja;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final bridge synthetic g(Ligo;Z)V
    .locals 0

    return-void
.end method
