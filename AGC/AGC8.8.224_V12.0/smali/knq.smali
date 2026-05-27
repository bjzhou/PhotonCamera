.class public final Lknq;
.super Ljava/lang/Object;

# interfaces
.implements Lknm;


# instance fields
.field public final a:Lj$/util/concurrent/ConcurrentHashMap;

.field public volatile b:Lknm;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lknq;->a:Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lknq;->b:Lknm;

    return-void
.end method

.method private final d(Ljava/lang/String;[Lknh;Lkte;)Lkte;
    .locals 1

    iget-object v0, p0, Lknq;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p3}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkte;

    if-nez v0, :cond_0

    return-object p3

    :cond_0
    iget-object p3, v0, Lkte;->c:Ljava/lang/Object;

    check-cast p3, [Lknh;

    invoke-static {p1, p3, p2}, Lktf;->d(Ljava/lang/String;[Lknh;[Lknh;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final varargs b(Ljava/lang/String;[Lknh;)Lkte;
    .locals 2

    iget-object v0, p0, Lknq;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkte;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lkte;->c:Ljava/lang/Object;

    check-cast v1, [Lknh;

    invoke-static {p1, v1, p2}, Lktf;->d(Ljava/lang/String;[Lknh;[Lknh;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkte;

    sget-object v1, Lknk;->b:Lknk;

    invoke-static {p2, v1}, Lknf;->c([Lknh;Loiw;)Lknf;

    move-result-object v1

    invoke-direct {v0, p1, p2, p0, v1}, Lkte;-><init>(Ljava/lang/String;[Lknh;Lknm;Lknf;)V

    invoke-direct {p0, p1, p2, v0}, Lknq;->d(Ljava/lang/String;[Lknh;Lkte;)Lkte;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final varargs c(Ljava/lang/String;[Lknh;)Lkte;
    .locals 2

    iget-object v0, p0, Lknq;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkte;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lkte;->c:Ljava/lang/Object;

    check-cast v1, [Lknh;

    invoke-static {p1, v1, p2}, Lktf;->d(Ljava/lang/String;[Lknh;[Lknh;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkte;

    sget-object v1, Lknk;->a:Lknk;

    invoke-static {p2, v1}, Lknf;->c([Lknh;Loiw;)Lknf;

    move-result-object v1

    invoke-direct {v0, p1, p2, p0, v1}, Lkte;-><init>(Ljava/lang/String;[Lknh;Lknm;Lknf;)V

    invoke-direct {p0, p1, p2, v0}, Lknq;->d(Ljava/lang/String;[Lknh;Lkte;)Lkte;

    move-result-object v0

    :goto_0
    return-object v0
.end method
