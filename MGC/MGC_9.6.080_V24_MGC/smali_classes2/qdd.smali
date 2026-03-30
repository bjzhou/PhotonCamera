.class public final Lqdd;
.super Lsts;
.source "PG"


# direct methods
.method private constructor <init>(Lsui;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lsts;-><init>(Lsui;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static e(Lsui;)Lqdd;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Lqdd;-><init>(Lsui;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    instance-of v0, p0, Lqdd;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    :goto_5
    new-instance v0, Lqdd;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lqdd;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    move-object p0, v0

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Ljava/lang/Class;Lrsk;Ljava/util/concurrent/Executor;)Lqdd;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lqrf;->n(Lsui;Ljava/lang/Class;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lqdd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Lqdd;-><init>(Lsui;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lsts;->a:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final d(Ljava/lang/Class;Lssx;Ljava/util/concurrent/Executor;)Lqdd;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lqrf;->o(Lsui;Ljava/lang/Class;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    :goto_2
    new-instance v0, Lqdd;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Lqdd;-><init>(Lsui;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lsts;->a:Lsui;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final f(Lrsk;Ljava/util/concurrent/Executor;)Lqdd;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lqdd;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Lqdd;-><init>(Lsui;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p1, p2}, Lqrf;->q(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lsts;->a:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final g(Lssx;Ljava/util/concurrent/Executor;)Lqdd;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    new-instance v0, Lqdd;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Lqdd;-><init>(Lsui;)V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iget-object p0, p0, Lsts;->a:Lsui;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-static {p0, p1, p2}, Lqrf;->r(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
