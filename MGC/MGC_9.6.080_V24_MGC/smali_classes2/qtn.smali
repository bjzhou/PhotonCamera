.class public final Lqtn;
.super Lqqy;
.source "PG"

# interfaces
.implements Lqpc;


# instance fields
.field public final d:Ltud;

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final f:Lqop;

.field private final g:Lsul;


# direct methods
.method public constructor <init>(Lqpa;Lsul;Ltud;Ltxm;Lqop;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p5, p0}, Lqop;->b(F)Lqtu;

    move-result-object p0

    nop

    goto/32 :goto_0

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

    :goto_3
    const/high16 p0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Lqtn;->d:Ltud;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lqtn;->e:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p5, p0, Lqtn;->f:Lqop;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    new-instance p0, Lqtm;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    invoke-direct {p0}, Lqtm;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    iput-object p2, p0, Lqtn;->g:Lsul;

    nop

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

    :goto_d
    invoke-direct {p0, v0}, Lqqy;-><init>([C)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, p2, p0, p4}, Lqpa;->a(Ljava/util/concurrent/Executor;Ltud;Ltxm;)Lqoz;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final U()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, v0}, Lsul;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_8

    nop

    nop

    :goto_3
    new-instance v0, Lqlc;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, p0, v1}, Lqlc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lqtn;->g:Lsul;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    const/16 v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x9

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop
.end method
