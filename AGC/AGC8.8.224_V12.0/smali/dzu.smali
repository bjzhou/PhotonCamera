.class public final Ldzu;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Ljava/lang/AutoCloseable;

.field final synthetic b:Ldzv;


# direct methods
.method public constructor <init>(Ldzv;Ljava/lang/AutoCloseable;)V
    .locals 0

    iput-object p1, p0, Ldzu;->b:Ldzv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldzu;->a:Ljava/lang/AutoCloseable;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/AutoCloseable;
    .locals 1

    iget-object v0, p0, Ldzu;->a:Ljava/lang/AutoCloseable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final close()V
    .locals 4

    iget-object v0, p0, Ldzu;->a:Ljava/lang/AutoCloseable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v1

    iget-object v2, p0, Ldzu;->b:Ldzv;

    iget-object v2, v2, Ldzv;->c:Llbd;

    new-instance v3, Ldzs;

    invoke-direct {v3, v1, v0}, Ldzs;-><init>(Lnph;Lnph;)V

    invoke-interface {v2, v3}, Llbd;->execute(Ljava/lang/Runnable;)V

    iget-object v2, p0, Ldzu;->b:Ldzv;

    iget-object v2, v2, Ldzv;->d:Ljava/util/concurrent/Executor;

    new-instance v3, Ldzt;

    invoke-direct {v3, p0, v0, v1}, Ldzt;-><init>(Ldzu;Lnph;Lnph;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ldzu;->a:Ljava/lang/AutoCloseable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLFenceGuarded["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
