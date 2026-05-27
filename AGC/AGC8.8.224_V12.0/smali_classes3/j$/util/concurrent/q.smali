.class final Lj$/util/concurrent/q;
.super Lj$/util/concurrent/k;


# static fields
.field private static final h:Lj$/sun/misc/a;

.field private static final i:J


# instance fields
.field e:Lj$/util/concurrent/r;

.field volatile f:Lj$/util/concurrent/r;

.field volatile g:Ljava/lang/Thread;

.field volatile lockState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lj$/sun/misc/a;->h()Lj$/sun/misc/a;

    move-result-object v0

    sput-object v0, Lj$/util/concurrent/q;->h:Lj$/sun/misc/a;

    const-class v1, Lj$/util/concurrent/q;

    const-string v2, "lockState"

    invoke-virtual {v0, v1, v2}, Lj$/sun/misc/a;->j(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lj$/util/concurrent/q;->i:J

    return-void
.end method

.method constructor <init>(Lj$/util/concurrent/r;)V
    .locals 9

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lj$/util/concurrent/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lj$/util/concurrent/q;->f:Lj$/util/concurrent/r;

    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_9

    iget-object v2, p1, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    check-cast v2, Lj$/util/concurrent/r;

    iput-object v1, p1, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    iput-object v1, p1, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    if-nez v0, :cond_0

    iput-object v1, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lj$/util/concurrent/r;->i:Z

    :goto_1
    move-object v0, p1

    goto :goto_6

    :cond_0
    iget-object v3, p1, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    iget v4, p1, Lj$/util/concurrent/k;->a:I

    move-object v5, v0

    move-object v6, v1

    :goto_2
    iget-object v7, v5, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    iget v8, v5, Lj$/util/concurrent/k;->a:I

    if-le v8, v4, :cond_1

    const/4 v7, -0x1

    goto :goto_3

    :cond_1
    if-ge v8, v4, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    if-nez v6, :cond_3

    invoke-static {v3}, Lj$/util/concurrent/ConcurrentHashMap;->c(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_4

    :cond_3
    invoke-static {v6, v3, v7}, Lj$/util/concurrent/ConcurrentHashMap;->d(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    invoke-static {v3, v7}, Lj$/util/concurrent/q;->i(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    goto :goto_3

    :cond_5
    move v7, v8

    :goto_3
    if-gtz v7, :cond_6

    iget-object v8, v5, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    goto :goto_4

    :cond_6
    iget-object v8, v5, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    :goto_4
    if-nez v8, :cond_8

    iput-object v5, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    if-gtz v7, :cond_7

    iput-object p1, v5, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    goto :goto_5

    :cond_7
    iput-object p1, v5, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    :goto_5
    invoke-static {v0, p1}, Lj$/util/concurrent/q;->c(Lj$/util/concurrent/r;Lj$/util/concurrent/r;)Lj$/util/concurrent/r;

    move-result-object p1

    goto :goto_1

    :goto_6
    move-object p1, v2

    goto :goto_0

    :cond_8
    move-object v5, v8

    goto :goto_2

    :cond_9
    iput-object v0, p0, Lj$/util/concurrent/q;->e:Lj$/util/concurrent/r;

    return-void
.end method

.method static b(Lj$/util/concurrent/r;Lj$/util/concurrent/r;)Lj$/util/concurrent/r;
    .locals 8

    :goto_0
    if-eqz p1, :cond_1c

    if-ne p1, p0, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v0, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-boolean v1, p1, Lj$/util/concurrent/r;->i:Z

    return-object p1

    :cond_1
    iget-boolean v2, p1, Lj$/util/concurrent/r;->i:Z

    if-eqz v2, :cond_2

    iput-boolean v1, p1, Lj$/util/concurrent/r;->i:Z

    return-object p0

    :cond_2
    iget-object v2, v0, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, p1, :cond_e

    iget-object v2, v0, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    if-eqz v2, :cond_4

    iget-boolean v5, v2, Lj$/util/concurrent/r;->i:Z

    if-eqz v5, :cond_4

    iput-boolean v1, v2, Lj$/util/concurrent/r;->i:Z

    iput-boolean v4, v0, Lj$/util/concurrent/r;->i:Z

    invoke-static {p0, v0}, Lj$/util/concurrent/q;->g(Lj$/util/concurrent/r;Lj$/util/concurrent/r;)Lj$/util/concurrent/r;

    move-result-object p0

    iget-object v0, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    if-nez v0, :cond_3

    move-object v2, v3

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    iget-object v5, v2, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    iget-object v6, v2, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    if-eqz v6, :cond_6

    iget-boolean v7, v6, Lj$/util/concurrent/r;->i:Z

    if-nez v7, :cond_7

    :cond_6
    if-eqz v5, :cond_1b

    iget-boolean v7, v5, Lj$/util/concurrent/r;->i:Z

    if-nez v7, :cond_7

    goto/16 :goto_9

    :cond_7
    if-eqz v6, :cond_8

    iget-boolean v6, v6, Lj$/util/concurrent/r;->i:Z

    if-nez v6, :cond_b

    :cond_8
    if-eqz v5, :cond_9

    iput-boolean v1, v5, Lj$/util/concurrent/r;->i:Z

    :cond_9
    iput-boolean v4, v2, Lj$/util/concurrent/r;->i:Z

    invoke-static {p0, v2}, Lj$/util/concurrent/q;->h(Lj$/util/concurrent/r;Lj$/util/concurrent/r;)Lj$/util/concurrent/r;

    move-result-object p0

    iget-object v0, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    iget-object v3, v0, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    :goto_2
    move-object v2, v3

    :cond_b
    if-eqz v2, :cond_d

    if-nez v0, :cond_c

    const/4 p1, 0x0

    goto :goto_3

    :cond_c
    iget-boolean p1, v0, Lj$/util/concurrent/r;->i:Z

    :goto_3
    iput-boolean p1, v2, Lj$/util/concurrent/r;->i:Z

    iget-object p1, v2, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    if-eqz p1, :cond_d

    iput-boolean v1, p1, Lj$/util/concurrent/r;->i:Z

    :cond_d
    if-eqz v0, :cond_1a

    iput-boolean v1, v0, Lj$/util/concurrent/r;->i:Z

    invoke-static {p0, v0}, Lj$/util/concurrent/q;->g(Lj$/util/concurrent/r;Lj$/util/concurrent/r;)Lj$/util/concurrent/r;

    move-result-object p0

    goto :goto_8

    :cond_e
    if-eqz v2, :cond_10

    iget-boolean v5, v2, Lj$/util/concurrent/r;->i:Z

    if-eqz v5, :cond_10

    iput-boolean v1, v2, Lj$/util/concurrent/r;->i:Z

    iput-boolean v4, v0, Lj$/util/concurrent/r;->i:Z

    invoke-static {p0, v0}, Lj$/util/concurrent/q;->h(Lj$/util/concurrent/r;Lj$/util/concurrent/r;)Lj$/util/concurrent/r;

    move-result-object p0

    iget-object v0, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    if-nez v0, :cond_f

    move-object v2, v3

    goto :goto_4

    :cond_f
    iget-object v2, v0, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    :cond_10
    :goto_4
    if-nez v2, :cond_11

    :goto_5
    move-object p1, v0

    goto/16 :goto_0

    :cond_11
    iget-object v5, v2, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    iget-object v6, v2, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    if-eqz v5, :cond_12

    iget-boolean v7, v5, Lj$/util/concurrent/r;->i:Z

    if-nez v7, :cond_13

    :cond_12
    if-eqz v6, :cond_1b

    iget-boolean v7, v6, Lj$/util/concurrent/r;->i:Z

    if-nez v7, :cond_13

    goto :goto_9

    :cond_13
    if-eqz v5, :cond_14

    iget-boolean v5, v5, Lj$/util/concurrent/r;->i:Z

    if-nez v5, :cond_17

    :cond_14
    if-eqz v6, :cond_15

    iput-boolean v1, v6, Lj$/util/concurrent/r;->i:Z

    :cond_15
    iput-boolean v4, v2, Lj$/util/concurrent/r;->i:Z

    invoke-static {p0, v2}, Lj$/util/concurrent/q;->g(Lj$/util/concurrent/r;Lj$/util/concurrent/r;)Lj$/util/concurrent/r;

    move-result-object p0

    iget-object v0, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    if-nez v0, :cond_16

    goto :goto_6

    :cond_16
    iget-object v3, v0, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    :goto_6
    move-object v2, v3

    :cond_17
    if-eqz v2, :cond_19

    if-nez v0, :cond_18

    const/4 p1, 0x0

    goto :goto_7

    :cond_18
    iget-boolean p1, v0, Lj$/util/concurrent/r;->i:Z

    :goto_7
    iput-boolean p1, v2, Lj$/util/concurrent/r;->i:Z

    iget-object p1, v2, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    if-eqz p1, :cond_19

    iput-boolean v1, p1, Lj$/util/concurrent/r;->i:Z

    :cond_19
    if-eqz v0, :cond_1a

    iput-boolean v1, v0, Lj$/util/concurrent/r;->i:Z

    invoke-static {p0, v0}, Lj$/util/concurrent/q;->h(Lj$/util/concurrent/r;Lj$/util/concurrent/r;)Lj$/util/concurrent/r;

    move-result-object p0

    :cond_1a
    :goto_8
    move-object p1, p0

    move-object p0, p1

    goto/16 :goto_0

    :cond_1b
    :goto_9
    iput-boolean v4, v2, Lj$/util/concurrent/r;->i:Z

    goto :goto_5

    :cond_1c
    :goto_a
    return-object p0
.end method

.method static c(Lj$/util/concurrent/r;Lj$/util/concurrent/r;)Lj$/util/concurrent/r;
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p1, Lj$/util/concurrent/r;->i:Z

    :cond_0
    :goto_0
    iget-object v1, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iput-boolean v2, p1, Lj$/util/concurrent/r;->i:Z

    return-object p1

    :cond_1
    iget-boolean v3, v1, Lj$/util/concurrent/r;->i:Z

    if-eqz v3, :cond_a

    iget-object v3, v1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    if-nez v3, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v4, v3, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    const/4 v5, 0x0

    if-ne v1, v4, :cond_6

    iget-object v4, v3, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    if-eqz v4, :cond_3

    iget-boolean v6, v4, Lj$/util/concurrent/r;->i:Z

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    iget-object v4, v1, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    if-ne p1, v4, :cond_5

    invoke-static {p0, v1}, Lj$/util/concurrent/q;->g(Lj$/util/concurrent/r;Lj$/util/concurrent/r;)Lj$/util/concurrent/r;

    move-result-object p0

    iget-object p1, v1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    if-nez p1, :cond_4

    move-object v3, v5

    goto :goto_1

    :cond_4
    iget-object v3, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    :goto_1
    move-object v7, v1

    move-object v1, p1

    move-object p1, v7

    :cond_5
    if-eqz v1, :cond_0

    iput-boolean v2, v1, Lj$/util/concurrent/r;->i:Z

    if-eqz v3, :cond_0

    iput-boolean v0, v3, Lj$/util/concurrent/r;->i:Z

    invoke-static {p0, v3}, Lj$/util/concurrent/q;->h(Lj$/util/concurrent/r;Lj$/util/concurrent/r;)Lj$/util/concurrent/r;

    move-result-object p0

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_7

    iget-boolean v6, v4, Lj$/util/concurrent/r;->i:Z

    if-eqz v6, :cond_7

    :goto_2
    iput-boolean v2, v4, Lj$/util/concurrent/r;->i:Z

    iput-boolean v2, v1, Lj$/util/concurrent/r;->i:Z

    iput-boolean v0, v3, Lj$/util/concurrent/r;->i:Z

    move-object p1, v3

    goto :goto_0

    :cond_7
    iget-object v4, v1, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    if-ne p1, v4, :cond_9

    invoke-static {p0, v1}, Lj$/util/concurrent/q;->h(Lj$/util/concurrent/r;Lj$/util/concurrent/r;)Lj$/util/concurrent/r;

    move-result-object p0

    iget-object p1, v1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    if-nez p1, :cond_8

    move-object v3, v5

    goto :goto_3

    :cond_8
    iget-object v3, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    :goto_3
    move-object v7, v1

    move-object v1, p1

    move-object p1, v7

    :cond_9
    if-eqz v1, :cond_0

    iput-boolean v2, v1, Lj$/util/concurrent/r;->i:Z

    if-eqz v3, :cond_0

    iput-boolean v0, v3, Lj$/util/concurrent/r;->i:Z

    invoke-static {p0, v3}, Lj$/util/concurrent/q;->g(Lj$/util/concurrent/r;Lj$/util/concurrent/r;)Lj$/util/concurrent/r;

    move-result-object p0

    goto :goto_0

    :cond_a
    :goto_4
    return-object p0
.end method

.method private final d()V
    .locals 7

    sget-object v0, Lj$/util/concurrent/q;->h:Lj$/sun/misc/a;

    sget-wide v2, Lj$/util/concurrent/q;->i:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lj$/sun/misc/a;->c(Ljava/lang/Object;JII)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget v5, p0, Lj$/util/concurrent/q;->lockState:I

    and-int/lit8 v1, v5, -0x3

    if-nez v1, :cond_1

    sget-object v1, Lj$/util/concurrent/q;->h:Lj$/sun/misc/a;

    sget-wide v3, Lj$/util/concurrent/q;->i:J

    const/4 v6, 0x1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lj$/sun/misc/a;->c(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/concurrent/q;->g:Ljava/lang/Thread;

    goto :goto_1

    :cond_1
    and-int/lit8 v1, v5, 0x2

    if-nez v1, :cond_2

    sget-object v1, Lj$/util/concurrent/q;->h:Lj$/sun/misc/a;

    sget-wide v3, Lj$/util/concurrent/q;->i:J

    or-int/lit8 v6, v5, 0x2

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lj$/sun/misc/a;->c(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lj$/util/concurrent/q;->g:Ljava/lang/Thread;

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method static g(Lj$/util/concurrent/r;Lj$/util/concurrent/r;)Lj$/util/concurrent/r;
    .locals 3

    iget-object v0, p1, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    iput-object v1, p1, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    if-eqz v1, :cond_0

    iput-object p1, v1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    :cond_0
    iget-object v1, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    iput-object v1, v0, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    if-nez v1, :cond_1

    const/4 p0, 0x0

    iput-boolean p0, v0, Lj$/util/concurrent/r;->i:Z

    move-object p0, v0

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    if-ne v2, p1, :cond_2

    iput-object v0, v1, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    goto :goto_0

    :cond_2
    iput-object v0, v1, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    :goto_0
    iput-object p1, v0, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    iput-object v0, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    :cond_3
    return-object p0
.end method

.method static h(Lj$/util/concurrent/r;Lj$/util/concurrent/r;)Lj$/util/concurrent/r;
    .locals 3

    iget-object v0, p1, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    iput-object v1, p1, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    if-eqz v1, :cond_0

    iput-object p1, v1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    :cond_0
    iget-object v1, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    iput-object v1, v0, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    if-nez v1, :cond_1

    const/4 p0, 0x0

    iput-boolean p0, v0, Lj$/util/concurrent/r;->i:Z

    move-object p0, v0

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    if-ne v2, p1, :cond_2

    iput-object v0, v1, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    goto :goto_0

    :cond_2
    iput-object v0, v1, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    :goto_0
    iput-object p1, v0, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    iput-object v0, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    :cond_3
    return-object p0
.end method

.method static i(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    if-gt p0, p1, :cond_1

    const/4 p0, -0x1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method final a(ILjava/lang/Object;)Lj$/util/concurrent/k;
    .locals 11

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    iget-object v1, p0, Lj$/util/concurrent/q;->f:Lj$/util/concurrent/r;

    :cond_0
    :goto_0
    if-eqz v1, :cond_7

    iget v6, p0, Lj$/util/concurrent/q;->lockState:I

    and-int/lit8 v2, v6, 0x3

    if-eqz v2, :cond_3

    iget v2, v1, Lj$/util/concurrent/k;->a:I

    if-ne v2, p1, :cond_2

    iget-object v2, v1, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    if-eq v2, p2, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return-object v1

    :cond_2
    iget-object v1, v1, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    goto :goto_0

    :cond_3
    sget-object v8, Lj$/util/concurrent/q;->h:Lj$/sun/misc/a;

    sget-wide v9, Lj$/util/concurrent/q;->i:J

    add-int/lit8 v7, v6, 0x4

    move-object v2, v8

    move-object v3, p0

    move-wide v4, v9

    invoke-virtual/range {v2 .. v7}, Lj$/sun/misc/a;->c(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    :try_start_0
    iget-object v2, p0, Lj$/util/concurrent/q;->e:Lj$/util/concurrent/r;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v2, p1, p2, v0}, Lj$/util/concurrent/r;->b(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/r;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v8, p0, v9, v10}, Lj$/sun/misc/a;->f(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lj$/util/concurrent/q;->g:Ljava/lang/Thread;

    if-eqz p1, :cond_5

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_5
    return-object v0

    :catchall_0
    move-exception p1

    sget-object p2, Lj$/util/concurrent/q;->h:Lj$/sun/misc/a;

    sget-wide v2, Lj$/util/concurrent/q;->i:J

    invoke-virtual {p2, p0, v2, v3}, Lj$/sun/misc/a;->f(Ljava/lang/Object;J)I

    move-result p2

    if-ne p2, v1, :cond_6

    iget-object p2, p0, Lj$/util/concurrent/q;->g:Ljava/lang/Thread;

    if-eqz p2, :cond_6

    invoke-static {p2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_6
    throw p1

    :cond_7
    return-object v0
.end method

.method final e(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/r;
    .locals 15

    move-object v1, p0

    move/from16 v0, p1

    move-object/from16 v4, p2

    iget-object v2, v1, Lj$/util/concurrent/q;->e:Lj$/util/concurrent/r;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v2

    move-object v2, v8

    const/4 v3, 0x0

    :goto_0
    if-nez v10, :cond_0

    new-instance v9, Lj$/util/concurrent/r;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lj$/util/concurrent/r;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/r;Lj$/util/concurrent/r;)V

    iput-object v9, v1, Lj$/util/concurrent/q;->e:Lj$/util/concurrent/r;

    iput-object v9, v1, Lj$/util/concurrent/q;->f:Lj$/util/concurrent/r;

    goto/16 :goto_4

    :cond_0
    iget v5, v10, Lj$/util/concurrent/k;->a:I

    const/4 v11, 0x1

    if-le v5, v0, :cond_1

    const/4 v5, -0x1

    const/4 v12, -0x1

    goto :goto_1

    :cond_1
    if-ge v5, v0, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, v10, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    if-eq v5, v4, :cond_10

    if-eqz v5, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_5

    :cond_3
    if-nez v2, :cond_4

    invoke-static/range {p2 .. p2}, Lj$/util/concurrent/ConcurrentHashMap;->c(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-static {v2, v4, v5}, Lj$/util/concurrent/ConcurrentHashMap;->d(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_a

    :cond_5
    if-nez v3, :cond_9

    iget-object v3, v10, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v0, v4, v2}, Lj$/util/concurrent/r;->b(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/r;

    move-result-object v3

    if-nez v3, :cond_7

    :cond_6
    iget-object v3, v10, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v0, v4, v2}, Lj$/util/concurrent/r;->b(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/r;

    move-result-object v3

    if-eqz v3, :cond_8

    :cond_7
    return-object v3

    :cond_8
    const/4 v3, 0x1

    :cond_9
    invoke-static {v4, v5}, Lj$/util/concurrent/q;->i(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    move v12, v5

    goto :goto_1

    :cond_a
    move v12, v6

    :goto_1
    if-gtz v12, :cond_b

    iget-object v5, v10, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    goto :goto_2

    :cond_b
    iget-object v5, v10, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    :goto_2
    if-nez v5, :cond_f

    iget-object v13, v1, Lj$/util/concurrent/q;->f:Lj$/util/concurrent/r;

    new-instance v14, Lj$/util/concurrent/r;

    move-object v2, v14

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v13

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lj$/util/concurrent/r;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/r;Lj$/util/concurrent/r;)V

    iput-object v14, v1, Lj$/util/concurrent/q;->f:Lj$/util/concurrent/r;

    if-eqz v13, :cond_c

    iput-object v14, v13, Lj$/util/concurrent/r;->h:Lj$/util/concurrent/r;

    :cond_c
    if-gtz v12, :cond_d

    iput-object v14, v10, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    goto :goto_3

    :cond_d
    iput-object v14, v10, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    :goto_3
    iget-boolean v0, v10, Lj$/util/concurrent/r;->i:Z

    if-nez v0, :cond_e

    iput-boolean v11, v14, Lj$/util/concurrent/r;->i:Z

    goto :goto_4

    :cond_e
    invoke-direct {p0}, Lj$/util/concurrent/q;->d()V

    :try_start_0
    iget-object v0, v1, Lj$/util/concurrent/q;->e:Lj$/util/concurrent/r;

    invoke-static {v0, v14}, Lj$/util/concurrent/q;->c(Lj$/util/concurrent/r;Lj$/util/concurrent/r;)Lj$/util/concurrent/r;

    move-result-object v0

    iput-object v0, v1, Lj$/util/concurrent/q;->e:Lj$/util/concurrent/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v9, v1, Lj$/util/concurrent/q;->lockState:I

    :goto_4
    return-object v8

    :catchall_0
    move-exception v0

    iput v9, v1, Lj$/util/concurrent/q;->lockState:I

    throw v0

    :cond_f
    move-object v10, v5

    goto/16 :goto_0

    :cond_10
    :goto_5
    return-object v10
.end method

.method final f(Lj$/util/concurrent/r;)Z
    .locals 10

    iget-object v0, p1, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    check-cast v0, Lj$/util/concurrent/r;

    iget-object v1, p1, Lj$/util/concurrent/r;->h:Lj$/util/concurrent/r;

    if-nez v1, :cond_0

    iput-object v0, p0, Lj$/util/concurrent/q;->f:Lj$/util/concurrent/r;

    goto :goto_0

    :cond_0
    iput-object v0, v1, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    :goto_0
    if-eqz v0, :cond_1

    iput-object v1, v0, Lj$/util/concurrent/r;->h:Lj$/util/concurrent/r;

    :cond_1
    iget-object v0, p0, Lj$/util/concurrent/q;->f:Lj$/util/concurrent/r;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iput-object v2, p0, Lj$/util/concurrent/q;->e:Lj$/util/concurrent/r;

    return v1

    :cond_2
    iget-object v0, p0, Lj$/util/concurrent/q;->e:Lj$/util/concurrent/r;

    if-eqz v0, :cond_15

    iget-object v3, v0, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    if-eqz v3, :cond_15

    iget-object v3, v0, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    if-eqz v3, :cond_15

    iget-object v3, v3, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    if-nez v3, :cond_3

    goto/16 :goto_9

    :cond_3
    invoke-direct {p0}, Lj$/util/concurrent/q;->d()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p1, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    iget-object v4, p1, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    if-eqz v3, :cond_b

    if-eqz v4, :cond_b

    move-object v5, v4

    :goto_1
    iget-object v6, v5, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    if-eqz v6, :cond_4

    move-object v5, v6

    goto :goto_1

    :cond_4
    iget-boolean v6, v5, Lj$/util/concurrent/r;->i:Z

    iget-boolean v7, p1, Lj$/util/concurrent/r;->i:Z

    iput-boolean v7, v5, Lj$/util/concurrent/r;->i:Z

    iput-boolean v6, p1, Lj$/util/concurrent/r;->i:Z

    iget-object v6, v5, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    iget-object v7, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    if-ne v5, v4, :cond_5

    iput-object v5, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    iput-object p1, v5, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    goto :goto_3

    :cond_5
    iget-object v8, v5, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    iput-object v8, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    if-eqz v8, :cond_7

    iget-object v9, v8, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    if-ne v5, v9, :cond_6

    iput-object p1, v8, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    goto :goto_2

    :cond_6
    iput-object p1, v8, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    :cond_7
    :goto_2
    iput-object v4, v5, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    iput-object v5, v4, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    :goto_3
    iput-object v2, p1, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    iput-object v6, p1, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    if-eqz v6, :cond_8

    iput-object p1, v6, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    :cond_8
    iput-object v3, v5, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    iput-object v5, v3, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    iput-object v7, v5, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    if-nez v7, :cond_9

    move-object v0, v5

    goto :goto_4

    :cond_9
    iget-object v3, v7, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    if-ne p1, v3, :cond_a

    iput-object v5, v7, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    goto :goto_4

    :cond_a
    iput-object v5, v7, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    :goto_4
    if-eqz v6, :cond_d

    move-object v3, v6

    goto :goto_5

    :cond_b
    if-eqz v3, :cond_c

    goto :goto_5

    :cond_c
    if-eqz v4, :cond_d

    move-object v3, v4

    goto :goto_5

    :cond_d
    move-object v3, p1

    :goto_5
    if-eq v3, p1, :cond_10

    iget-object v4, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    iput-object v4, v3, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    if-nez v4, :cond_e

    move-object v0, v3

    goto :goto_6

    :cond_e
    iget-object v5, v4, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    if-ne p1, v5, :cond_f

    iput-object v3, v4, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    goto :goto_6

    :cond_f
    iput-object v3, v4, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    :goto_6
    iput-object v2, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    iput-object v2, p1, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    iput-object v2, p1, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    :cond_10
    iget-boolean v4, p1, Lj$/util/concurrent/r;->i:Z

    if-eqz v4, :cond_11

    goto :goto_7

    :cond_11
    invoke-static {v0, v3}, Lj$/util/concurrent/q;->b(Lj$/util/concurrent/r;Lj$/util/concurrent/r;)Lj$/util/concurrent/r;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lj$/util/concurrent/q;->e:Lj$/util/concurrent/r;

    if-ne p1, v3, :cond_14

    iget-object v0, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;

    if-eqz v0, :cond_14

    iget-object v3, v0, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    if-ne p1, v3, :cond_12

    iput-object v2, v0, Lj$/util/concurrent/r;->f:Lj$/util/concurrent/r;

    goto :goto_8

    :cond_12
    iget-object v3, v0, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    if-ne p1, v3, :cond_13

    iput-object v2, v0, Lj$/util/concurrent/r;->g:Lj$/util/concurrent/r;

    :cond_13
    :goto_8
    iput-object v2, p1, Lj$/util/concurrent/r;->e:Lj$/util/concurrent/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_14
    iput v1, p0, Lj$/util/concurrent/q;->lockState:I

    return v1

    :catchall_0
    move-exception p1

    iput v1, p0, Lj$/util/concurrent/q;->lockState:I

    throw p1

    :cond_15
    :goto_9
    return v1
.end method
