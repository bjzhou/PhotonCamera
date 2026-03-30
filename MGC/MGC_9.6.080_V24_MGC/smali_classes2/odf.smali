.class public final Lodf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static volatile a:Lodf;


# instance fields
.field public final b:Landroid/content/Context;

.field public c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public volatile d:Locz;

.field private final e:Lodc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_e

    nop

    nop

    :goto_0
    new-instance p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    const-string v0, "GA/LogCatTransport"

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    sget p0, Locy;->a:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    new-instance p0, Landroid/util/LogPrinter;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lodf;->e:Lodc;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    new-instance p1, Lodc;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lodf;->b:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    invoke-direct {p1, p0}, Lodc;-><init>(Lodf;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, p1, v0}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a()V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    instance-of v0, v0, Lode;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_d
    const-string v1, "Call expected from worker thread"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final b(Ljava/lang/Runnable;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lodc;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lodf;->e:Lodc;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
