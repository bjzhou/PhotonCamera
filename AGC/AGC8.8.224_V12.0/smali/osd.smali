.class public final Losd;
.super Lose;

# interfaces
.implements Loqa;


# instance fields
.field private volatile _immediate:Losd;

.field public final c:Landroid/os/Handler;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Losd;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Losd;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lose;-><init>()V

    iput-object p1, p0, Losd;->c:Landroid/os/Handler;

    iput-object p2, p0, Losd;->d:Ljava/lang/String;

    iput-boolean p3, p0, Losd;->e:Z

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    move-object p3, p0

    :goto_0
    iput-object p3, p0, Losd;->_immediate:Losd;

    iget-object p3, p0, Losd;->_immediate:Losd;

    if-nez p3, :cond_1

    new-instance p3, Losd;

    invoke-direct {p3, p1, p2, v0}, Losd;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p3, p0, Losd;->_immediate:Losd;

    :cond_1
    iput-object p3, p0, Losd;->f:Losd;

    return-void
.end method

.method private final h(Lola;Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The task was rejected, the handler underlying the dispatcher \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' was closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lolp;->R(Lola;Ljava/util/concurrent/CancellationException;)V

    sget-object v0, Loqf;->b:Lopq;

    invoke-virtual {v0, p1, p2}, Lopq;->d(Lola;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Looz;)V
    .locals 4

    new-instance v0, Llkq;

    const/16 v1, 0xb

    invoke-direct {v0, p1, p0, v1}, Llkq;-><init>(Looz;Losd;I)V

    iget-object v1, p0, Losd;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lapk;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Lapk;-><init>(Losd;Ljava/lang/Runnable;I)V

    invoke-interface {p1, v1}, Looz;->a(Lomk;)V

    return-void

    :cond_0
    check-cast p1, Lopa;

    iget-object p1, p1, Lopa;->b:Lola;

    invoke-direct {p0, p1, v0}, Losd;->h(Lola;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Lola;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Losd;->c:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Losd;->h(Lola;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final e(Lola;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p0, Losd;->e:Z

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Losd;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Losd;

    if-eqz v0, :cond_0

    check-cast p1, Losd;

    iget-object p1, p1, Losd;->c:Landroid/os/Handler;

    iget-object v0, p0, Losd;->c:Landroid/os/Handler;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f(JLjava/lang/Runnable;Lola;)Loqh;
    .locals 1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Losd;->c:Landroid/os/Handler;

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Losc;

    invoke-direct {p1, p0, p3}, Losc;-><init>(Losd;Ljava/lang/Runnable;)V

    return-object p1

    :cond_0
    invoke-direct {p0, p4, p3}, Losd;->h(Lola;Ljava/lang/Runnable;)V

    sget-object p1, Lorn;->a:Lorn;

    return-object p1
.end method

.method public final synthetic g()Lork;
    .locals 1

    iget-object v0, p0, Losd;->f:Losd;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Losd;->c:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lork;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Losd;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Losd;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Losd;->e:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".immediate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
