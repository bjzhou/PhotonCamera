.class public final Lcuw;
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

    iput-object p1, p0, Lcuw;->a:Loiw;

    iput-object p2, p0, Lcuw;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ljxv;
    .locals 3

    iget-object v0, p0, Lcuw;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lcuw;->b:Loiw;

    sget-object v2, Ldgu;->P:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast v1, Lcuy;

    invoke-virtual {v1}, Lcuy;->a()Lcux;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljxq;

    invoke-direct {v0}, Ljxq;-><init>()V

    :goto_0
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcuw;->a()Ljxv;

    move-result-object v0

    return-object v0
.end method
