.class public final Losy;
.super Loti;

# interfaces
.implements Lotg;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Loti;-><init>()V

    iput-object p1, p0, Losy;->a:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic cX()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final d(Ljava/lang/Object;)Loxb;
    .locals 0

    sget-object p1, Lopb;->a:Loxb;

    return-object p1
.end method

.method public final e()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Losy;->a:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    new-instance v0, Losz;

    invoke-direct {v0}, Losz;-><init>()V

    :cond_0
    return-object v0
.end method

.method public final f()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Losy;->a:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    new-instance v0, Lota;

    invoke-direct {v0}, Lota;-><init>()V

    :cond_0
    return-object v0
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h(Losy;)V
    .locals 0

    sget-boolean p1, Lopw;->a:Z

    return-void
.end method

.method public final i()Loxb;
    .locals 1

    sget-object v0, Lopb;->a:Loxb;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lopx;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Losy;->a:Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closed@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
