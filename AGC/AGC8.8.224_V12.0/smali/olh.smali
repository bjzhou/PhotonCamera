.class public abstract Lolh;
.super Lolf;


# instance fields
.field private final a:Lola;

.field public transient n:Loku;


# direct methods
.method public constructor <init>(Loku;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Loku;->d()Lola;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lolh;-><init>(Loku;Lola;)V

    return-void
.end method

.method public constructor <init>(Loku;Lola;)V
    .locals 0

    invoke-direct {p0, p1}, Lolf;-><init>(Loku;)V

    iput-object p2, p0, Lolh;->a:Lola;

    return-void
.end method


# virtual methods
.method public d()Lola;
    .locals 1

    iget-object v0, p0, Lolh;->a:Lola;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method protected h()V
    .locals 3

    iget-object v0, p0, Lolh;->n:Loku;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {p0}, Lolh;->d()Lola;

    move-result-object v1

    sget-object v2, Lokw;->a:Lokv;

    invoke-interface {v1, v2}, Lola;->get(Loky;)Lokx;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lokw;

    invoke-interface {v1, v0}, Lokw;->b(Loku;)V

    :cond_0
    sget-object v0, Lolg;->a:Lolg;

    iput-object v0, p0, Lolh;->n:Loku;

    return-void
.end method
