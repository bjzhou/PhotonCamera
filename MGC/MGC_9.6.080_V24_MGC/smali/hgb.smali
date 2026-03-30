.class public final Lhgb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhfc;


# static fields
.field public static final a:Lhga;


# instance fields
.field public final b:Lhfa;

.field public final c:Lhfd;

.field public final d:Lpdk;

.field public e:Lhga;

.field public final f:Landroid/content/Context;

.field public final g:Lpdf;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Landroid/util/LruCache;

.field public final j:Lgvg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lhfy;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lhfy;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lhgb;->a:Lhga;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method public constructor <init>(Lhfa;Lgvg;Lhfd;Lpdk;Landroid/content/Context;Lpdf;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Lhgb;->f:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lhgb;->c:Lhfd;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4
    iput-object v0, p0, Lhgb;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    const v0, 0x12

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lhgb;->b:Lhfa;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_9
    const v1, 0x11

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p6, p0, Lhgb;->g:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lhgb;->i:Landroid/util/LruCache;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    new-instance p1, Landroid/util/LruCache;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_10
    invoke-direct {p1, p2}, Landroid/util/LruCache;-><init>(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_4

    nop

    nop

    :goto_12
    iput-object v0, p0, Lhgb;->e:Lhga;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    iput-object p2, p0, Lhgb;->j:Lgvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    const/16 p2, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_18

    nop

    nop

    :goto_17
    iput-object p4, p0, Lhgb;->d:Lpdk;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Lhgb;->a:Lhga;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final b(Z)V
    .locals 0

    goto/32 :goto_5

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
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Long;)V
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lhgb;->e:Lhga;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, v1, Lhen;->e:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    invoke-static {p1}, Lryb;->l(Ljava/lang/Object;)Lryb;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v2, v3}, Lhen;->f(J)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    const v1, 0x1d

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Lhen;->a()Lheo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lhey;->a()Lhez;

    move-result-object p1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    invoke-virtual {v0, p1}, Lhey;->b(Ljava/util/List;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    const/4 p1, 0x4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    invoke-interface {p0, p1}, Lhga;->b(Lhez;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    invoke-static {}, Lhez;->a()Lhey;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1, v2}, Lhey;->c(J)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v2, v3}, Lhen;->g(J)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_19
    invoke-static {}, Lheo;->a()Lhen;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method
