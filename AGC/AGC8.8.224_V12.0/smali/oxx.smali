.class public final Loxx;
.super Ljava/lang/Object;

# interfaces
.implements Ljon;


# instance fields
.field final synthetic a:Looz;


# direct methods
.method public constructor <init>(Looz;)V
    .locals 0

    iput-object p1, p0, Loxx;->a:Looz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljot;)V
    .locals 1

    invoke-virtual {p1}, Ljot;->b()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljox;

    iget-boolean v0, v0, Ljox;->c:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Loxx;->a:Looz;

    invoke-static {p1}, Lonm;->p(Looz;)V

    return-void

    :cond_0
    iget-object v0, p0, Loxx;->a:Looz;

    invoke-virtual {p1}, Ljot;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Loku;->e(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p1, p0, Loxx;->a:Looz;

    invoke-static {v0}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Loku;->e(Ljava/lang/Object;)V

    return-void
.end method
