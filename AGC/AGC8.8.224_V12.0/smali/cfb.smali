.class public final Lcfb;
.super Ljava/lang/Object;

# interfaces
.implements Lfyz;


# instance fields
.field private final a:Lcea;

.field private final b:Lnou;

.field private final c:Lfyz;


# direct methods
.method public constructor <init>(Lfyz;Lcea;Lnou;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcfb;->a:Lcea;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcfb;->b:Lnou;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcfb;->c:Lfyz;

    return-void
.end method


# virtual methods
.method public final a(Lgkr;)Lfyy;
    .locals 4

    new-instance v0, Lcfa;

    iget-object v1, p0, Lcfb;->a:Lcea;

    iget-object v2, p0, Lcfb;->b:Lnou;

    iget-object v3, p0, Lcfb;->c:Lfyz;

    invoke-interface {v3, p1}, Lfyz;->a(Lgkr;)Lfyy;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcfa;-><init>(Lcea;Lnou;Lfyy;)V

    return-object v0
.end method

.method public final b(Lgkr;)Lfyy;
    .locals 3

    iget-object v0, p0, Lcfb;->c:Lfyz;

    invoke-interface {v0, p1}, Lfyz;->b(Lgkr;)Lfyy;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcfa;

    iget-object v1, p0, Lcfb;->a:Lcea;

    iget-object v2, p0, Lcfb;->b:Lnou;

    invoke-direct {v0, v1, v2, p1}, Lcfa;-><init>(Lcea;Lnou;Lfyy;)V

    return-object v0
.end method
