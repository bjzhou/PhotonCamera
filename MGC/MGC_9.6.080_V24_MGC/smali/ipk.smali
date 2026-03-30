.class public final Lipk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lphh;

.field public final b:Lpik;

.field private final c:Loyd;

.field private final d:Loyd;

.field private final e:Lows;

.field private final f:Ljava/util/concurrent/Executor;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m(Loyd;ZLjava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iget-object p2, p0, Lipk;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p3, Lipj;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lows;->d(Lpci;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1, p3, p2}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iget-object p0, p0, Lipk;->e:Lows;

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

    :goto_6
    invoke-direct {p3, p0, p2}, Lipj;-><init>(Lipk;Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpik;Ljava/util/Map;Loyd;Loyd;Lows;Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lipk;->c:Loyd;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    sget-object p1, Llhv;->b:Llhv;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

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

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lipk;->a:Lphh;

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    iput-object p5, p0, Lipk;->e:Lows;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p1, Lphh;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lipk;->b:Lpik;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    iput-object p6, p0, Lipk;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    iput-object p4, p0, Lipk;->d:Loyd;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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
.end method


# virtual methods
.method public final run()V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    const-string v2, "standby"

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

    nop

    nop

    :goto_1
    iget-object v0, p0, Lipk;->c:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lipk;->d:Loyd;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v0, v1, v2}, Lipk;->166277962e993c138a6b1f0c9b571cc0m(Loyd;ZLjava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    const-string v2, "delayed"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, v0, v1, v2}, Lipk;->166277962e993c138a6b1f0c9b571cc0m(Loyd;ZLjava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x1

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

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
