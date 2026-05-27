.class public abstract Lapn;
.super Laqa;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 0

    invoke-direct {p0, p1}, Laqa;-><init>(Lapt;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Laqa;->e()Larf;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lapn;->b(Larf;Ljava/lang/Object;)V

    invoke-virtual {v0}, Larf;->a()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Laqa;->g(Larf;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Laqa;->g(Larf;)V

    throw p1
.end method

.method protected abstract b(Larf;Ljava/lang/Object;)V
.end method
