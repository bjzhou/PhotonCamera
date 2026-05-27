.class public final Ljvj;
.super Ljava/lang/Object;

# interfaces
.implements Ljve;


# instance fields
.field private final a:Lkbc;


# direct methods
.method public constructor <init>(Lkbc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljvj;->a:Lkbc;

    return-void
.end method


# virtual methods
.method public final a(Lkad;)V
    .locals 2

    instance-of v0, p1, Ljvi;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lkad;->close()V

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Ljvi;

    invoke-interface {v0}, Ljvi;->b()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Ljvj;->a:Lkbc;

    invoke-interface {v1, v0}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {p1}, Lkad;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ljvj;->a:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ljvj;->a:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    throw p1
.end method

.method public final b(Ljava/lang/Iterable;)V
    .locals 2

    const-string v0, "Lifetime#close"

    :try_start_0
    iget-object v1, p0, Ljvj;->a:Lkbc;

    invoke-interface {v1, v0}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkad;

    invoke-virtual {p0, v0}, Ljvj;->a(Lkad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljvj;->a:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ljvj;->a:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
