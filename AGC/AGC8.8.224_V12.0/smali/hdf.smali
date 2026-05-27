.class public final Lhdf;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lhdy;

.field public final b:Lhdz;

.field public c:Lhec;

.field public d:Z

.field public e:Z

.field public final f:Ljuf;

.field private final g:Ljava/util/EnumSet;


# direct methods
.method public constructor <init>(Lhdy;Lhdz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhdf;->a:Lhdy;

    iput-object p2, p0, Lhdf;->b:Lhdz;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhdf;->d:Z

    iput-boolean p1, p0, Lhdf;->e:Z

    const-class p1, Lhde;

    invoke-static {p1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lhdf;->g:Ljava/util/EnumSet;

    iget-boolean v0, p2, Lhdz;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lhde;->d:Lhde;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v0, p2, Lhdz;->e:Z

    if-nez v0, :cond_1

    sget-object v0, Lhde;->f:Lhde;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object p2, p2, Lhdz;->f:Ljvs;

    invoke-interface {p2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lhde;->e:Lhde;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    :cond_2
    new-instance p1, Ljuf;

    invoke-direct {p1}, Ljuf;-><init>()V

    iput-object p1, p0, Lhdf;->f:Ljuf;

    return-void
.end method


# virtual methods
.method public final a(Lkli;)V
    .locals 2

    iget-boolean v0, p0, Lhdf;->d:Z

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lhdf;->a:Lhdy;

    instance-of v1, v0, Lhdx;

    if-eqz v1, :cond_0

    check-cast v0, Lhdx;

    invoke-interface {v0, p1}, Lhdx;->c(Lkli;)V

    :cond_0
    return-void
.end method

.method public final b(Lhde;Z)V
    .locals 1

    iget-object v0, p0, Lhdf;->g:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eq p2, v0, :cond_2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lhdf;->g:Ljava/util/EnumSet;

    invoke-virtual {p2, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lhdf;->g:Ljava/util/EnumSet;

    invoke-virtual {p2, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-boolean p1, p0, Lhdf;->d:Z

    invoke-static {p1}, Lmoz;->p(Z)V

    iget-object p1, p0, Lhdf;->g:Ljava/util/EnumSet;

    invoke-virtual {p1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p1

    iget-boolean p2, p0, Lhdf;->e:Z

    if-eq p2, p1, :cond_2

    iput-boolean p1, p0, Lhdf;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lhdf;->a:Lhdy;

    invoke-interface {p1}, Lhdy;->w()V

    return-void

    :cond_1
    iget-object p1, p0, Lhdf;->a:Lhdy;

    invoke-interface {p1}, Lhdy;->v()V

    iget-object p1, p0, Lhdf;->c:Lhec;

    invoke-interface {p1}, Lhec;->a()V

    return-void

    :cond_2
    return-void
.end method

.method public final c(Z)V
    .locals 1

    iget-boolean v0, p0, Lhdf;->d:Z

    invoke-static {v0}, Lmoz;->p(Z)V

    sget-object v0, Lhde;->a:Lhde;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lhdf;->b(Lhde;Z)V

    return-void
.end method

.method public final d(Lika;)V
    .locals 2

    iget-boolean v0, p0, Lhdf;->d:Z

    invoke-static {v0}, Lmoz;->p(Z)V

    sget-object v0, Lhde;->b:Lhde;

    iget-object v1, p0, Lhdf;->b:Lhdz;

    iget-object v1, v1, Lhdz;->b:Lmwn;

    invoke-virtual {v1, p1}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lhdf;->b(Lhde;Z)V

    return-void
.end method

.method public final e(Lklv;)V
    .locals 2

    iget-boolean v0, p0, Lhdf;->d:Z

    invoke-static {v0}, Lmoz;->p(Z)V

    sget-object v0, Lhde;->c:Lhde;

    iget-object v1, p0, Lhdf;->b:Lhdz;

    iget-object v1, v1, Lhdz;->c:Lmwn;

    invoke-virtual {v1, p1}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lhdf;->b(Lhde;Z)V

    return-void
.end method

.method public final f(Z)V
    .locals 2

    iget-boolean v0, p0, Lhdf;->d:Z

    invoke-static {v0}, Lmoz;->p(Z)V

    sget-object v0, Lhde;->d:Lhde;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhdf;->b:Lhdz;

    iget-boolean p1, p1, Lhdz;->d:Z

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v0, v1}, Lhdf;->b(Lhde;Z)V

    return-void
.end method

.method public final g(Z)V
    .locals 2

    sget-object v0, Lhde;->f:Lhde;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhdf;->b:Lhdz;

    iget-boolean p1, p1, Lhdz;->e:Z

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v0, v1}, Lhdf;->b(Lhde;Z)V

    return-void
.end method

.method public final h(Z)V
    .locals 1

    sget-object v0, Lhde;->g:Lhde;

    invoke-virtual {p0, v0, p1}, Lhdf;->b(Lhde;Z)V

    return-void
.end method
