.class final Lsta;
.super Lstb;
.source "PG"


# instance fields
.field final synthetic a:Lstc;

.field private final c:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Lstc;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1, p3}, Lstb;-><init>(Lstc;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lsta;->a:Lstc;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lsta;->c:Ljava/util/concurrent/Callable;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lsta;->c:Ljava/util/concurrent/Callable;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lsta;->c:Ljava/util/concurrent/Callable;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lsta;->a:Lstc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lssk;->e(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
