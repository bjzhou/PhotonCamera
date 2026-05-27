.class final Lkzr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lkye;

.field final synthetic b:Llaa;

.field final synthetic c:Lkye;

.field final synthetic d:Llaa;


# direct methods
.method public constructor <init>(Llaa;Lkye;Llaa;Lkye;)V
    .locals 0

    iput-object p1, p0, Lkzr;->d:Llaa;

    iput-object p2, p0, Lkzr;->a:Lkye;

    iput-object p3, p0, Lkzr;->b:Llaa;

    iput-object p4, p0, Lkzr;->c:Lkye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lkzr;->d:Llaa;

    iget-object v0, v0, Llaa;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lkzr;->a:Lkye;

    iget-object v2, p0, Lkzr;->b:Llaa;

    invoke-static {v0, v1, v2}, Llaa;->k(Ljava/lang/Object;Lkye;Llaa;)V

    return-void

    :cond_0
    iget-object v0, p0, Lkzr;->d:Llaa;

    iget-object v0, v0, Llaa;->b:Lkzd;

    iget-object v1, p0, Lkzr;->c:Lkye;

    iget-object v2, p0, Lkzr;->b:Llaa;

    :try_start_0
    invoke-interface {v1, v0}, Lkye;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Llaa;->l(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkzd; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object v0

    invoke-virtual {v2, v0}, Llaa;->m(Lkzd;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v2, v0}, Llaa;->m(Lkzd;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lkzr;->d:Llaa;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkzr;->a:Lkye;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lkzr;->c:Lkye;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "then["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
