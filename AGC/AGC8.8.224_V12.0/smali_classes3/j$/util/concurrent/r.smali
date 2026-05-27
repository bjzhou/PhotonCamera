.class final Lj$/util/concurrent/r;
.super Lj$/util/concurrent/k;


# instance fields
.field e:Lj$/util/concurrent/r;

.field f:Lj$/util/concurrent/r;

.field g:Lj$/util/concurrent/r;

.field h:Lj$/util/concurrent/r;

.field i:Z


# direct methods
.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/r;Lj$/util/concurrent/r;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lj$/util/concurrent/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/k;)V

    iput-object p5, p0, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    return-void
.end method


# virtual methods
.method final a(ILjava/lang/Object;)Lj$/util/concurrent/k;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lj$/util/concurrent/r;->b(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/r;

    move-result-object p1

    return-object p1
.end method

.method final b(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/r;
    .locals 5

    if-eqz p2, :cond_b

    move-object v0, p0

    :cond_0
    iget-object v1, v0, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    iget-object v2, v0, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    iget v3, v0, Lj$/util/concurrent/k;->a:I

    if-le v3, p1, :cond_1

    goto :goto_1

    :cond_1
    if-ge v3, p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    if-eq v3, p2, :cond_a

    if-eqz v3, :cond_3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    if-nez v1, :cond_4

    :goto_0
    move-object v0, v2

    goto :goto_2

    :cond_4
    if-nez v2, :cond_6

    :cond_5
    :goto_1
    move-object v0, v1

    goto :goto_2

    :cond_6
    if-nez p3, :cond_7

    invoke-static {p2}, Lj$/util/concurrent/ConcurrentHashMap;->c(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p3

    if-eqz p3, :cond_9

    :cond_7
    invoke-static {p3, p2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->d(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_9

    if-gez v0, :cond_8

    goto :goto_1

    :cond_8
    move-object v1, v2

    goto :goto_1

    :cond_9
    invoke-virtual {v2, p1, p2, p3}, Lj$/util/concurrent/r;->b(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/r;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    :goto_2
    if-nez v0, :cond_0

    goto :goto_4

    :cond_a
    :goto_3
    return-object v0

    :cond_b
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method
