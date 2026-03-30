.class public final Luev;
.super Lues;
.source "PG"


# instance fields
.field public final b:Lugj;

.field private final e:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Luad;Ljava/lang/Thread;Lugj;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Luev;->b:Lugj;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, v0}, Lues;-><init>(Luad;Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Luev;->e:Ljava/lang/Thread;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iget-object p0, p0, Luev;->e:Ljava/lang/Thread;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Luev;->e:Ljava/lang/Thread;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method protected final k()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
