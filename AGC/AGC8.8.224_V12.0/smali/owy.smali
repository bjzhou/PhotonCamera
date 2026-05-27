.class public Lowy;
.super Loor;

# interfaces
.implements Loli;


# instance fields
.field public final e:Loku;


# direct methods
.method public constructor <init>(Lola;Loku;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Loor;-><init>(Lola;)V

    iput-object p2, p0, Lowy;->e:Loku;

    return-void
.end method


# virtual methods
.method public final cU()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final cV()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected f(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lowy;->e:Loku;

    invoke-static {v0}, Lolp;->g(Loku;)Loku;

    move-result-object v0

    iget-object v1, p0, Lowy;->e:Loku;

    invoke-static {p1, v1}, Lonm;->l(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lowi;->a(Loku;Ljava/lang/Object;)V

    return-void
.end method

.method public final g()Loli;
    .locals 2

    iget-object v0, p0, Lowy;->e:Loku;

    instance-of v1, v0, Loli;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected h(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lowy;->e:Loku;

    invoke-static {p1, v0}, Lonm;->l(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Loku;->e(Ljava/lang/Object;)V

    return-void
.end method
