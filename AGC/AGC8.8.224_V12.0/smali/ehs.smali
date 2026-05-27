.class public final Lehs;
.super Lejo;

# interfaces
.implements Lhiv;


# instance fields
.field public final a:Lhiu;

.field public final b:Lhiw;

.field public final c:Lhiw;


# direct methods
.method public constructor <init>(Liff;Lcom/google/android/apps/camera/bottombar/BottomBarController;Lgeh;Leik;Ljew;[B[B)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lejo;-><init>(Liff;Lcom/google/android/apps/camera/bottombar/BottomBarController;Lgeh;Leik;Ljew;[B[B)V

    new-instance p1, Lehq;

    invoke-direct {p1, p0}, Lehq;-><init>(Lehs;)V

    new-instance p2, Lhiw;

    const/4 p3, 0x0

    new-array p4, p3, [Lhis;

    invoke-direct {p2, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p2, p0, Lehs;->b:Lhiw;

    new-instance p1, Lehr;

    invoke-direct {p1, p0}, Lehr;-><init>(Lehs;)V

    new-instance p4, Lhiw;

    new-array p5, p3, [Lhis;

    invoke-direct {p4, p1, p5}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p4, p0, Lehs;->c:Lhiw;

    new-instance p1, Lhiu;

    invoke-direct {p1, p2, p3}, Lhiu;-><init>(Lhiw;Z)V

    iput-object p1, p0, Lehs;->a:Lhiu;

    invoke-virtual {p1}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lehs;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lehs;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lejl;

    invoke-virtual {v0}, Lejl;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lehs;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lehs;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lejl;

    invoke-virtual {v0}, Lejl;->b()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lehs;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Lehs;->b:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lehs;->c:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    invoke-super {p0}, Lejo;->f()V

    iget-object v0, p0, Lehs;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    invoke-super {p0}, Lejo;->g()V

    iget-object v0, p0, Lehs;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method
