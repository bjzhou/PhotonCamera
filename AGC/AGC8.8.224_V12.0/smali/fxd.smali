.class public final Lfxd;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfxd;->a:Loiw;

    iput-object p2, p0, Lfxd;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lgui;
    .locals 3

    iget-object v0, p0, Lfxd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lfxd;->b:Loiw;

    check-cast v1, Ldwh;

    invoke-virtual {v1}, Ldwh;->a()Landroid/content/Context;

    sget-object v1, Ldho;->bD:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lguj;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lguj;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v1, Lguj;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lguj;-><init>(I)V

    :goto_0
    invoke-interface {v0}, Ldhi;->f()V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfxd;->a()Lgui;

    move-result-object v0

    return-object v0
.end method
