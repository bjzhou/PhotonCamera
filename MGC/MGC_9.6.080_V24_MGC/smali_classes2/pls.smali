.class public final Lpls;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final a:Lpnx;

.field public final b:Lpfg;

.field public final c:Lpjs;

.field public final d:Z

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Lum;

.field public final g:Lhdk;

.field private final h:Ljava/util/concurrent/Executor;

.field private final i:Lugy;


# direct methods
.method public constructor <init>(Lpnx;Lum;Lpfg;Lpjs;Lhdk;Ljava/util/concurrent/Executor;Z)V
    .locals 0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p6, p0, Lpls;->h:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lpls;->f:Lum;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lpls;->i:Lugy;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lpls;->a:Lpnx;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-direct {p3, p0, p4, p2}, Lplr;-><init>(Lpls;Ltzy;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    const/4 p4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    iput-object p5, p0, Lpls;->g:Lhdk;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_10

    nop

    nop

    :goto_a
    const/4 p5, 0x3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1, p4, p2, p3, p5}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    move-result-object p1

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

    nop

    :goto_d
    invoke-static {p1}, Lufv;->i(Luad;)Lufs;

    move-result-object p1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    :goto_f
    iput-boolean p7, p0, Lpls;->d:Z

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    iput-object p1, p0, Lpls;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p6}, Luch;->J(Ljava/util/concurrent/Executor;)Lufp;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p3, p0, Lpls;->b:Lpfg;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p2, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    new-instance p3, Lplr;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p4, p0, Lpls;->c:Lpjs;

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

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

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Luch;->I(Lugy;)V

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lpls;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    const v1, 0x1e

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_f
    const/4 v1, 0x1

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

    :goto_10
    iget-object p0, p0, Lpls;->i:Lugy;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method
