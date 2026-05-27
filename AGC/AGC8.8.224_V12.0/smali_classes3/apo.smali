.class public abstract Lapo;
.super Laqa;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 0

    invoke-direct {p0, p1}, Laqa;-><init>(Lapt;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Laqa;->e()Larf;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lapo;->b(Larf;Ljava/lang/Object;)V

    invoke-virtual {v0}, Larf;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Laqa;->g(Larf;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Laqa;->g(Larf;)V

    throw p1
.end method

.method protected abstract b(Larf;Ljava/lang/Object;)V
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Laqa;->e()Larf;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lapo;->b(Larf;Ljava/lang/Object;)V

    invoke-virtual {v0}, Larf;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Laqa;->g(Larf;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Laqa;->g(Larf;)V

    throw p1
.end method
