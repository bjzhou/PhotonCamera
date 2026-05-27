.class final Lj$/util/concurrent/d;
.super Lj$/util/concurrent/a;

# interfaces
.implements Ljava/util/Iterator;


# direct methods
.method constructor <init>([Lj$/util/concurrent/k;IILj$/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lj$/util/concurrent/a;-><init>([Lj$/util/concurrent/k;IILj$/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lj$/util/concurrent/p;->b:Lj$/util/concurrent/k;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    iget-object v2, v0, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    iput-object v0, p0, Lj$/util/concurrent/a;->j:Lj$/util/concurrent/k;

    invoke-virtual {p0}, Lj$/util/concurrent/p;->a()Lj$/util/concurrent/k;

    new-instance v0, Lj$/util/concurrent/j;

    iget-object v3, p0, Lj$/util/concurrent/a;->i:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/concurrent/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
