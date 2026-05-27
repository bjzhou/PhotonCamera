.class public final synthetic Ldsr;
.super Ljava/lang/Object;

# interfaces
.implements Lcik;


# instance fields
.field public final synthetic a:Lkbc;

.field public final synthetic b:Loiw;

.field public final synthetic c:Lkli;

.field public final synthetic d:Lcea;

.field public final synthetic e:Ljuf;


# direct methods
.method public synthetic constructor <init>(Lkbc;Loiw;Lkli;Lcea;Ljuf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsr;->a:Lkbc;

    iput-object p2, p0, Ldsr;->b:Loiw;

    iput-object p3, p0, Ldsr;->c:Lkli;

    iput-object p4, p0, Ldsr;->d:Lcea;

    iput-object p5, p0, Ldsr;->e:Ljuf;

    return-void
.end method


# virtual methods
.method public final bl()Lnou;
    .locals 6

    iget-object v0, p0, Ldsr;->a:Lkbc;

    iget-object v1, p0, Ldsr;->b:Loiw;

    iget-object v2, p0, Ldsr;->c:Lkli;

    iget-object v3, p0, Ldsr;->d:Lcea;

    iget-object v4, p0, Ldsr;->e:Ljuf;

    const-string v5, "FCFrameConsumer.Startup"

    invoke-interface {v0, v5}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldsq;

    invoke-virtual {v1, v2, v3}, Ldsq;->a(Lkli;Lcea;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ldei;

    const/16 v3, 0x11

    invoke-direct {v2, v1, v3}, Ldei;-><init>(Ldsq;I)V

    invoke-virtual {v4, v2}, Ljuf;->d(Lkad;)V

    invoke-interface {v0}, Lkbc;->f()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ldez;->d(Lcik;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
