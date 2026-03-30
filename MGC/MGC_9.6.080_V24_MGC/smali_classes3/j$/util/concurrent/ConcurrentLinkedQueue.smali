.class public Lj$/util/concurrent/ConcurrentLinkedQueue;
.super Ljava/util/AbstractQueue;
.source "SourceFile"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/io/Serializable;
.implements Lj$/util/Collection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/concurrent/ConcurrentLinkedQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "Lj$/util/Collection<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final a:Lj$/com/android/tools/r8/b;

.field private static final b:Lj$/com/android/tools/r8/b;

.field static final c:Lj$/com/android/tools/r8/b;

.field static final d:Lj$/com/android/tools/r8/b;

.field private static final serialVersionUID:J = 0x2bafb2a664c708cL


# instance fields
.field volatile transient head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private volatile transient tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lj$/util/concurrent/ConcurrentLinkedQueue;

    const-class v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    :try_start_0
    const-string v2, "head"

    new-instance v3, Lj$/com/android/tools/r8/b;

    invoke-direct {v3, v0, v2, v1}, Lj$/com/android/tools/r8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lj$/util/concurrent/ConcurrentLinkedQueue;->a:Lj$/com/android/tools/r8/b;

    const-string v2, "tail"

    new-instance v3, Lj$/com/android/tools/r8/b;

    invoke-direct {v3, v0, v2, v1}, Lj$/com/android/tools/r8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lj$/util/concurrent/ConcurrentLinkedQueue;->b:Lj$/com/android/tools/r8/b;

    const-string v0, "item"

    const-class v2, Ljava/lang/Object;

    new-instance v3, Lj$/com/android/tools/r8/b;

    invoke-direct {v3, v1, v0, v2}, Lj$/com/android/tools/r8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lj$/util/concurrent/ConcurrentLinkedQueue;->c:Lj$/com/android/tools/r8/b;

    const-string v0, "next"

    new-instance v2, Lj$/com/android/tools/r8/b;

    invoke-direct {v2, v1, v0, v1}, Lj$/com/android/tools/r8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v2, Lj$/util/concurrent/ConcurrentLinkedQueue;->d:Lj$/com/android/tools/r8/b;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;-><init>()V

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    return-void
.end method

.method private a(Ljava/util/function/Predicate;)Z
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    const/4 v3, 0x0

    const/16 v4, 0x8

    move-object v5, v2

    move-object v7, v3

    const/16 v6, 0x8

    :goto_1
    if-eqz v2, :cond_a

    iget-object v8, v2, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    iget-object v9, v2, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    const/4 v11, 0x1

    goto :goto_2

    :cond_0
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_2

    invoke-interface {p1, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    sget-object v11, Lj$/util/concurrent/ConcurrentLinkedQueue;->c:Lj$/com/android/tools/r8/b;

    invoke-virtual {v11, v2, v9, v3}, Lj$/com/android/tools/r8/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v1, 0x1

    :cond_1
    const/4 v11, 0x0

    :cond_2
    if-nez v11, :cond_4

    if-eqz v8, :cond_4

    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    if-ne v2, v8, :cond_9

    goto :goto_0

    :cond_4
    :goto_3
    if-eq v5, v2, :cond_7

    sget-object v9, Lj$/util/concurrent/ConcurrentLinkedQueue;->d:Lj$/com/android/tools/r8/b;

    if-eqz v7, :cond_5

    invoke-virtual {v9, v7, v5, v2}, Lj$/com/android/tools/r8/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    goto :goto_4

    :cond_5
    sget-object v12, Lj$/util/concurrent/ConcurrentLinkedQueue;->a:Lj$/com/android/tools/r8/b;

    invoke-virtual {v12, p0, v5, v2}, Lj$/com/android/tools/r8/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v9, v5, v5}, Lj$/com/android/tools/r8/b;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_8

    move-object v5, v2

    :cond_7
    if-eqz v11, :cond_9

    :cond_8
    move-object v7, v2

    move-object v5, v8

    const/16 v6, 0x8

    :cond_9
    move-object v2, v8

    goto :goto_1

    :cond_a
    return v1
.end method

.method private d(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)Lj$/util/concurrent/ConcurrentLinkedQueue$Node;
    .locals 2

    if-nez p4, :cond_1

    if-ne p2, p3, :cond_0

    return-object p1

    :cond_0
    move-object p4, p3

    :cond_1
    sget-object v0, Lj$/util/concurrent/ConcurrentLinkedQueue;->d:Lj$/com/android/tools/r8/b;

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1, p2, p4}, Lj$/com/android/tools/r8/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0

    :cond_2
    sget-object v1, Lj$/util/concurrent/ConcurrentLinkedQueue;->a:Lj$/com/android/tools/r8/b;

    invoke-virtual {v1, p0, p2, p4}, Lj$/com/android/tools/r8/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-virtual {v0, p2, p2}, Lj$/com/android/tools/r8/b;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    if-eqz p1, :cond_5

    sget-object p2, Lj$/util/concurrent/ConcurrentLinkedQueue;->c:Lj$/com/android/tools/r8/b;

    invoke-virtual {p2, p1}, Lj$/com/android/tools/r8/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, p3

    :cond_5
    :goto_1
    return-object p1
.end method

.method private e([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    move-object v0, p1

    :goto_0
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->b()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget-object v4, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v4, :cond_2

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    goto :goto_2

    :cond_0
    array-length v5, v0

    if-ne v3, v5, :cond_1

    add-int/lit8 v5, v3, 0x4

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :cond_1
    :goto_2
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3

    move v3, v5

    :cond_2
    iget-object v4, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v1, v4, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v4

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    new-array p1, v2, [Ljava/lang/Object;

    return-object p1

    :cond_5
    if-eqz p1, :cond_8

    array-length v1, p1

    if-gt v3, v1, :cond_8

    if-eq p1, v0, :cond_6

    invoke-static {v0, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    array-length v0, p1

    if-ge v3, v0, :cond_7

    const/4 v0, 0x0

    aput-object v0, p1, v3

    :cond_7
    return-object p1

    :cond_8
    array-length p1, v0

    if-ne v3, p1, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v3, v2}, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lj$/util/concurrent/ConcurrentLinkedQueue;->d:Lj$/com/android/tools/r8/b;

    invoke-virtual {v2, v1, v3}, Lj$/com/android/tools/r8/b;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    move-object v1, v3

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;-><init>()V

    move-object v1, v0

    :cond_2
    iput-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->b()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 6

    if-eq p1, p0, :cond_a

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v3}, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_0

    move-object v1, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lj$/util/concurrent/ConcurrentLinkedQueue;->d:Lj$/com/android/tools/r8/b;

    invoke-virtual {v3, v2, v4}, Lj$/com/android/tools/r8/b;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    move-object v2, v4

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    iget-object p1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v3, p1

    :cond_3
    :goto_2
    iget-object v4, p1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v4, :cond_5

    sget-object v4, Lj$/util/concurrent/ConcurrentLinkedQueue;->d:Lj$/com/android/tools/r8/b;

    invoke-virtual {v4, p1, v0, v1}, Lj$/com/android/tools/r8/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object p1, Lj$/util/concurrent/ConcurrentLinkedQueue;->b:Lj$/com/android/tools/r8/b;

    invoke-virtual {p1, p0, v3, v2}, Lj$/com/android/tools/r8/b;->l(Lj$/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    iget-object v1, v2, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v1, :cond_4

    invoke-virtual {p1, p0, v0, v2}, Lj$/com/android/tools/r8/b;->l(Lj$/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    if-ne p1, v4, :cond_7

    iget-object p1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-eq v3, p1, :cond_6

    move-object v3, p1

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    :goto_3
    move-object v5, v3

    move-object v3, p1

    move-object p1, v5

    goto :goto_2

    :cond_7
    if-eq p1, v3, :cond_9

    iget-object p1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-eq v3, p1, :cond_8

    move-object v4, p1

    goto :goto_4

    :cond_8
    move-object v3, p1

    :cond_9
    move-object p1, v3

    :goto_4
    move-object v3, p1

    move-object p1, v4

    goto :goto_2

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method final b()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;
    .locals 4

    :goto_0
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v1, v0

    :goto_1
    iget-object v2, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_3

    iget-object v3, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v3

    goto :goto_1

    :cond_3
    :goto_3
    invoke-virtual {p0, v0, v1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->f(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    return-object v1
.end method

.method final c(Ljava/util/function/Consumer;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    :goto_1
    if-eqz p2, :cond_4

    iget-object v2, p2, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    iget-object v3, p2, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v3, :cond_0

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_2
    move-object v1, p2

    move-object p2, v2

    goto :goto_1

    :cond_0
    move-object v3, p2

    :goto_3
    if-eqz v2, :cond_3

    iget-object v4, v2, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v4, :cond_1

    goto :goto_4

    :cond_1
    if-ne v3, v2, :cond_2

    iget-object p2, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_3

    :cond_3
    :goto_4
    invoke-direct {p0, v1, p2, v3, v2}, Lj$/util/concurrent/ConcurrentLinkedQueue;->d(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object p2

    goto :goto_2

    :cond_4
    return-void
.end method

.method public clear()V
    .locals 1

    new-instance v0, Lj$/util/concurrent/t;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->a(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_6

    iget-object v3, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    iget-object v4, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v4, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    move-object v2, v1

    :goto_2
    move-object v1, v3

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_3
    if-eqz v3, :cond_5

    iget-object v5, v3, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v5, :cond_3

    goto :goto_4

    :cond_3
    if-ne v4, v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v4, v3, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_3

    :cond_5
    :goto_4
    invoke-direct {p0, v2, v1, v4, v3}, Lj$/util/concurrent/ConcurrentLinkedQueue;->d(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    goto :goto_2

    :cond_6
    return v0
.end method

.method final f(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V
    .locals 1

    if-eq p1, p2, :cond_0

    sget-object v0, Lj$/util/concurrent/ConcurrentLinkedQueue;->a:Lj$/com/android/tools/r8/b;

    invoke-virtual {v0, p0, p1, p2}, Lj$/com/android/tools/r8/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lj$/util/concurrent/ConcurrentLinkedQueue;->d:Lj$/com/android/tools/r8/b;

    invoke-virtual {p2, p1, p1}, Lj$/com/android/tools/r8/b;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-virtual {p0, p1, v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->c(Ljava/util/function/Consumer;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->b()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lj$/util/concurrent/v;

    invoke-direct {v0, p0}, Lj$/util/concurrent/v;-><init>(Lj$/util/concurrent/ConcurrentLinkedQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    new-instance v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v1, p1

    :cond_0
    :goto_0
    iget-object v2, p1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v2, :cond_2

    sget-object v2, Lj$/util/concurrent/ConcurrentLinkedQueue;->d:Lj$/com/android/tools/r8/b;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v0}, Lj$/com/android/tools/r8/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eq p1, v1, :cond_1

    sget-object p1, Lj$/util/concurrent/ConcurrentLinkedQueue;->b:Lj$/com/android/tools/r8/b;

    invoke-virtual {p1, p0, v1, v0}, Lj$/com/android/tools/r8/b;->l(Lj$/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-eq v1, p1, :cond_3

    move-object v1, p1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    :goto_1
    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    goto :goto_0

    :cond_4
    if-eq p1, v1, :cond_6

    iget-object p1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-eq v1, p1, :cond_5

    move-object v2, p1

    goto :goto_2

    :cond_5
    move-object v1, p1

    :cond_6
    move-object p1, v1

    :goto_2
    move-object v1, p1

    move-object p1, v2

    goto :goto_0
.end method

.method public final synthetic parallelStream()Lj$/util/stream/Stream;
    .locals 1

    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$parallelStream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v1, v0

    :goto_1
    iget-object v2, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-nez v2, :cond_2

    iget-object v3, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v3

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p0, v0, v1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->f(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V

    return-object v2
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v1, v0

    :goto_1
    iget-object v2, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    sget-object v4, Lj$/util/concurrent/ConcurrentLinkedQueue;->c:Lj$/com/android/tools/r8/b;

    invoke-virtual {v4, v1, v2, v3}, Lj$/com/android/tools/r8/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v1, v0, :cond_1

    iget-object v3, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-eqz v3, :cond_0

    move-object v1, v3

    :cond_0
    invoke-virtual {p0, v0, v1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->f(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V

    :cond_1
    return-object v2

    :cond_2
    iget-object v2, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v2, :cond_3

    invoke-virtual {p0, v0, v1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->f(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V

    return-object v3

    :cond_3
    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    const/4 v2, 0x0

    move-object v3, v2

    :goto_1
    if-eqz v1, :cond_6

    iget-object v4, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    iget-object v5, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v5, :cond_2

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lj$/util/concurrent/ConcurrentLinkedQueue;->c:Lj$/com/android/tools/r8/b;

    invoke-virtual {v6, v1, v5, v2}, Lj$/com/android/tools/r8/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v3, v1, v1, v4}, Lj$/util/concurrent/ConcurrentLinkedQueue;->d(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    const/4 p1, 0x1

    return p1

    :cond_1
    move-object v3, v1

    :goto_2
    move-object v1, v4

    goto :goto_1

    :cond_2
    move-object v5, v1

    :goto_3
    if-eqz v4, :cond_5

    iget-object v6, v4, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    if-ne v5, v4, :cond_4

    goto :goto_0

    :cond_4
    iget-object v5, v4, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    goto :goto_3

    :cond_5
    :goto_4
    invoke-direct {p0, v3, v1, v5, v4}, Lj$/util/concurrent/ConcurrentLinkedQueue;->d(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v3

    goto :goto_2

    :cond_6
    return v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/concurrent/s;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/util/concurrent/s;-><init>(Ljava/util/Collection;I)V

    invoke-direct {p0, v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->a(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public final removeIf(Ljava/util/function/Predicate;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->a(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/concurrent/s;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj$/util/concurrent/s;-><init>(Ljava/util/Collection;I)V

    invoke-direct {p0, v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->a(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 3

    :goto_0
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->b()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1

    :cond_2
    :goto_2
    return v1
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/concurrent/u;

    invoke-direct {v0, p0}, Lj$/util/concurrent/u;-><init>(Lj$/util/concurrent/ConcurrentLinkedQueue;)V

    return-object v0
.end method

.method public final synthetic stream()Lj$/util/stream/Stream;
    .locals 1

    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->e([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Collection$-CC;->$default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->e([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->b()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget-object v5, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v5, :cond_2

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_2

    :cond_0
    array-length v6, v0

    if-ne v3, v6, :cond_1

    mul-int/lit8 v6, v3, 0x2

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_1
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    aput-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    move v3, v6

    :cond_2
    iget-object v5, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v1, v5, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v5

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    const-string v0, "[]"

    return-object v0

    :cond_5
    mul-int/lit8 v1, v3, 0x2

    add-int/2addr v1, v4

    new-array v1, v1, [C

    const/16 v4, 0x5b

    aput-char v4, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_7

    if-lez v5, :cond_6

    add-int/lit8 v6, v4, 0x1

    const/16 v7, 0x2c

    aput-char v7, v1, v4

    add-int/lit8 v4, v4, 0x2

    const/16 v7, 0x20

    aput-char v7, v1, v6

    :cond_6
    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v2, v7, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v4, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    const/16 v0, 0x5d

    aput-char v0, v1, v4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
