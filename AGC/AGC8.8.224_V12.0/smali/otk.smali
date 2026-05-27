.class public final Lotk;
.super Loti;


# instance fields
.field public final a:Looz;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Looz;)V
    .locals 0

    invoke-direct {p0}, Loti;-><init>()V

    iput-object p1, p0, Lotk;->b:Ljava/lang/Object;

    iput-object p2, p0, Lotk;->a:Looz;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lotk;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lotk;->a:Looz;

    invoke-interface {v0}, Looz;->l()V

    return-void
.end method

.method public final h(Losy;)V
    .locals 1

    iget-object v0, p0, Lotk;->a:Looz;

    invoke-virtual {p1}, Losy;->f()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Loku;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public final i()Loxb;
    .locals 2

    iget-object v0, p0, Lotk;->a:Looz;

    sget-object v1, Lojk;->a:Lojk;

    invoke-interface {v0, v1}, Looz;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-boolean v0, Lopw;->a:Z

    sget-object v0, Lopb;->a:Loxb;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lopx;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lopx;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lotk;->b:Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
