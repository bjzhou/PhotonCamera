.class public Lknw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public b:Lows;

.field public c:Lsui;

.field public d:Lkbb;

.field public e:Lkog;

.field private final f:Lpet;

.field private final g:Lnjb;

.field private final h:Lhsp;

.field private final i:Lpoi;

.field private final j:Lhoh;

.field private final k:Lmhz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "knw"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lknw;->a:Lsdb;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Lpet;Lmhz;Lpoi;Lnjb;Lhoh;Lhsp;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lknw;->i:Lpoi;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput-object p5, p0, Lknw;->j:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    iput-object p1, p0, Lknw;->f:Lpet;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lknw;->b:Lows;

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

    nop

    :goto_6
    iput-object p4, p0, Lknw;->g:Lnjb;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    iput-object p2, p0, Lknw;->k:Lmhz;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Lpet;->a()Lows;

    move-result-object p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p6, p0, Lknw;->h:Lhsp;

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
.end method

.method public static bridge synthetic b(Lknw;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    const/4 v0, 0x0

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

    :goto_2
    iput-object v0, p0, Lknw;->c:Lsui;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lhco;Lkob;Lnne;)Lkbe;
    .locals 4

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_27

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, p3}, Lows;->d(Lpci;)V

    goto/32 :goto_14

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, p2, p0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2, p1, v2}, Lkob;->b(Lkbb;Lsui;)Lsui;

    move-result-object p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, p0, p2, v2}, Lflm;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lknw;->c:Lsui;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lknw;->h:Lhsp;

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

    :goto_b
    invoke-virtual {v1, p3}, Lows;->d(Lpci;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, p0, Lknw;->i:Lpoi;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_d
    new-instance p3, Lgig;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v3, p0, Lknw;->i:Lpoi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p3}, Lows;->close()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object v0

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    const-string v2, "CaptureCameraDeviceOpener : "

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v3, v2, p1}, Lhsp;->b(Lpnv;Lhoh;Lpog;)Lpnx;

    move-result-object p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    iget-object v2, p0, Lknw;->g:Lnjb;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

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

    :goto_16
    iget-object v1, p0, Lknw;->f:Lpet;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_17
    invoke-virtual {v1, p3}, Lpet;->b(Ljava/lang/String;)Lpci;

    move-result-object p3

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

    :goto_18
    iget-object v2, p0, Lknw;->j:Lhoh;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_19
    invoke-direct {v0, v1}, Lkbe;-><init>(Ljava/lang/Runnable;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v1, p0, Lknw;->b:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1b
    new-instance v1, Lflm;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1}, Lpet;->a()Lows;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    :goto_1e
    iput-object p1, p0, Lknw;->d:Lkbb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Lhco;->a()Lpog;

    move-result-object p1

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

    nop

    :goto_20
    const-string p0, "CCDevMngr"

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_21
    invoke-direct {p3}, Lgig;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_22
    iput-object p3, p0, Lknw;->e:Lkog;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_23
    const v0, 0x5

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p0}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

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

    :goto_25
    iget-object v1, p0, Lknw;->k:Lmhz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2b

    nop

    nop

    :goto_28
    invoke-virtual {v2, p3}, Lpoi;->f(Lpnx;)Lkog;

    move-result-object p3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_29
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v0, Lkbe;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p2, p0, p3, v0, v1}, Lknv;-><init>(Lknw;Lgig;Lkbe;Lows;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v2}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p3, p0, Lknw;->b:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v1, p1, p3}, Lmhz;->x(Lpnx;Lnne;)Lkbb;

    move-result-object p1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v2, 0x2

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_32
    new-instance p2, Lknv;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_33
    iget-object p3, p1, Lkbb;->a:Lpnx;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method
