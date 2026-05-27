.class public final Lovp;
.super Lolh;

# interfaces
.implements Lotu;
.implements Loli;


# instance fields
.field public final a:Lotu;

.field public final b:Lola;

.field public final c:I

.field private d:Lola;

.field private e:Lolh;


# direct methods
.method public constructor <init>(Lotu;Lola;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lovm;->a:Lovm;

    sget-object v1, Lolb;->a:Lolb;

    invoke-direct {p0, v0, v1}, Lolh;-><init>(Loku;Lola;)V

    iput-object p1, p0, Lovp;->a:Lotu;

    iput-object p2, p0, Lovp;->b:Lola;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lokz;->f:Lokz;

    invoke-interface {p2, p1, v0}, Lola;->fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lovp;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Loku;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-interface {p2}, Loku;->d()Lola;

    move-result-object v0

    invoke-static {v0}, Lolp;->S(Lola;)V

    iget-object v1, p0, Lovp;->d:Lola;

    if-eq v1, v0, :cond_2

    instance-of v2, v1, Lovl;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lovs;

    invoke-direct {v3, p0, v1}, Lovs;-><init>(Lovp;I)V

    invoke-interface {v0, v2, v3}, Lola;->fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget v2, p0, Lovp;->c:I

    if-ne v1, v2, :cond_0

    iput-object v0, p0, Lovp;->d:Lola;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lovp;->b:Lola;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flow invariant is violated:\n\t\tFlow was collected in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n\t\tbut emission happened in "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".\n\t\tPlease refer to \'flow\' documentation or use \'flowOn\' instead"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v1, Lovl;

    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, v1, Lovl;->a:Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n            Flow exception transparency is violated:\n                Previous \'emit\' call has thrown exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", but then emission attempt of value \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' has been detected.\n                Emissions from \'catch\' blocks are prohibited in order to avoid unspecified behaviour, \'Flow.catch\' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lolp;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    move-object v0, p2

    check-cast v0, Lolh;

    iput-object v0, p0, Lovp;->e:Lolh;

    sget-object v0, Lovr;->a:Lomp;

    iget-object v1, p0, Lovp;->a:Lotu;

    invoke-interface {v0, v1, p1, p0}, Lomp;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lolc;->a:Lolc;

    invoke-static {p1, v0}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lovp;->e:Lolh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    sget-object p2, Lolc;->a:Lolc;

    if-ne p1, p2, :cond_4

    return-object p1

    :cond_4
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :catchall_0
    move-exception p1

    new-instance v0, Lovl;

    invoke-interface {p2}, Loku;->d()Lola;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lovl;-><init>(Ljava/lang/Throwable;Lola;)V

    iput-object v0, p0, Lovp;->d:Lola;

    throw p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Lojf;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lovl;

    invoke-virtual {p0}, Lolh;->d()Lola;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lovl;-><init>(Ljava/lang/Throwable;Lola;)V

    iput-object v1, p0, Lovp;->d:Lola;

    :cond_0
    iget-object v0, p0, Lovp;->e:Lolh;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Loku;->e(Ljava/lang/Object;)V

    :cond_1
    sget-object p1, Lolc;->a:Lolc;

    return-object p1
.end method

.method public final cU()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Lola;
    .locals 1

    iget-object v0, p0, Lovp;->d:Lola;

    if-nez v0, :cond_0

    sget-object v0, Lolb;->a:Lolb;

    :cond_0
    return-object v0
.end method

.method public final g()Loli;
    .locals 2

    iget-object v0, p0, Lovp;->e:Lolh;

    instance-of v1, v0, Loli;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()V
    .locals 0

    invoke-super {p0}, Lolh;->h()V

    return-void
.end method
