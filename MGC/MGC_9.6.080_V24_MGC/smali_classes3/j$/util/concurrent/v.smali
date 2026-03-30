.class final Lj$/util/concurrent/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

.field private b:Ljava/lang/Object;

.field private c:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

.field final synthetic d:Lj$/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/concurrent/v;->d:Lj$/util/concurrent/ConcurrentLinkedQueue;

    :goto_0
    iget-object v0, p1, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v1, v0

    :goto_1
    iget-object v2, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iput-object v1, p0, Lj$/util/concurrent/v;->a:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v2, p0, Lj$/util/concurrent/v;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_0
    iget-object v2, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v2, :cond_1

    :goto_2
    invoke-virtual {p1, v0, v1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->f(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V

    return-void

    :cond_1
    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lj$/util/concurrent/v;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lj$/util/concurrent/v;->a:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-eqz v0, :cond_5

    iput-object v0, p0, Lj$/util/concurrent/v;->c:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    iget-object v1, p0, Lj$/util/concurrent/v;->d:Lj$/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v0, v2, :cond_0

    iget-object v2, v1, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v2, :cond_4

    iget-object v1, v2, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lj$/util/concurrent/v;->d:Lj$/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v2, v4, :cond_2

    iget-object v3, v3, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_3

    sget-object v4, Lj$/util/concurrent/ConcurrentLinkedQueue;->d:Lj$/com/android/tools/r8/b;

    invoke-virtual {v4, v0, v2, v3}, Lj$/com/android/tools/r8/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    move-object v2, v3

    goto :goto_0

    :cond_4
    :goto_2
    iput-object v2, p0, Lj$/util/concurrent/v;->a:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    iget-object v0, p0, Lj$/util/concurrent/v;->b:Ljava/lang/Object;

    iput-object v1, p0, Lj$/util/concurrent/v;->b:Ljava/lang/Object;

    return-object v0

    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lj$/util/concurrent/v;->c:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    iput-object v1, p0, Lj$/util/concurrent/v;->c:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
