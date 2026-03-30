.class public Llfh;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Loyd;

.field public final c:Lnne;

.field public final d:Z

.field public final e:Z

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;

.field public g:Ljava/lang/String;

.field public final h:Lhon;

.field public final i:Lhst;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Llfh;->a:Lsdb;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    const-string v0, "lfh"

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

.method public constructor <init>(Loyd;Lhst;Lhon;Lnne;Lpnu;Loyd;Lows;Lhoh;)V
    .locals 2

    goto/32 :goto_1e

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Llfh;->b:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Llfh;->f:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Llfh;->i:Lhst;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    sget-object p2, Lhne;->y:Lhmn;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    const/4 p3, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    :goto_8
    iput-object p3, p0, Llfh;->h:Lhon;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9
    iput-boolean p3, p0, Llfh;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p8, p2}, Lhoh;->p(Lhmn;)Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p8, p2}, Lhoh;->p(Lhmn;)Z

    move-result p2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    sget-object p2, Lhni;->w:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    if-nez p2, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_12
    sget-object v1, Lkmj;->a:Lkmj;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p6, p2, p0}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_14
    const/16 p3, 0x12

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

    nop

    :goto_15
    iput-object p4, p0, Llfh;->c:Lnne;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    const/4 p4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p2, p3}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p2, Ljyl;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1c
    sget-object p3, Lpog;->a:Lpog;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 p3, 0x0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-boolean p2, p0, Llfh;->d:Z

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_22
    invoke-virtual {p7, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    :goto_24
    invoke-direct {p2, p0, p1, p3, p4}, Ljyl;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_26

    nop

    nop

    :goto_25
    if-nez p2, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object p0, Lstd;->a:Lstd;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {p5}, Lpnu;->l()Lpog;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
