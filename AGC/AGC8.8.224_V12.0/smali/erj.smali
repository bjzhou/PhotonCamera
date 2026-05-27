.class public final Lerj;
.super Ljava/lang/Object;

# interfaces
.implements Lcik;


# instance fields
.field private final a:Lcik;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldez;->c()Lkad;

    move-result-object v0

    :try_start_0
    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcik;

    iput-object p1, p0, Lerj;->a:Lcik;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lkad;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-interface {v0}, Lkad;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {p1, v0}, Lewq;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method


# virtual methods
.method public final bl()Lnou;
    .locals 2

    invoke-static {}, Ldez;->c()Lkad;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lerj;->a:Lcik;

    invoke-interface {v1}, Lcik;->bl()Lnou;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lkad;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-interface {v0}, Lkad;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v1, v0}, Lewq;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lerj;->a:Lcik;

    invoke-interface {v0}, Lcik;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
