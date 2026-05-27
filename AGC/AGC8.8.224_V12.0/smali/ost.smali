.class public Lost;
.super Loor;

# interfaces
.implements Loss;


# instance fields
.field public final b:Loss;


# direct methods
.method public constructor <init>(Lola;Loss;)V
    .locals 0

    invoke-direct {p0, p1}, Loor;-><init>(Lola;)V

    iput-object p2, p0, Lost;->b:Loss;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final B(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p0, p1}, Lori;->K(Lori;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    iget-object v0, p0, Lost;->b:Loss;

    invoke-interface {v0, p1}, Loss;->r(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {p0, p1}, Lori;->E(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Loku;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(Loku;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lost;->b:Loss;

    invoke-interface {v0, p1}, Loss;->c(Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lolc;->a:Lolc;

    return-object p1
.end method

.method public final k()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final m()Losg;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final q(Ljava/lang/Object;Loku;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lost;->b:Loss;

    invoke-interface {v0, p1, p2}, Loss;->q(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    invoke-virtual {p0}, Lori;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lorb;

    invoke-virtual {p0}, Lori;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lorb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lora;)V

    :cond_1
    invoke-virtual {p0, p1}, Lori;->B(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lost;->b:Loss;

    invoke-interface {v0, p1}, Loss;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final w(Lomk;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final x(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Lost;->b:Loss;

    invoke-interface {v0, p1}, Loss;->x(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
