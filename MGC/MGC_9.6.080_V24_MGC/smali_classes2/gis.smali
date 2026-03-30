.class public Lgis;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lsuu;

.field public final c:Lsuu;

.field public final d:Lsui;

.field public final e:Lsui;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "gis"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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

    :goto_3
    sput-object v0, Lgis;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lsuu;Lfwv;)V
    .locals 4

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_0
    sget-object v1, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v1, Lfzd;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1}, Lsuu;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v1, v2}, Lgjc;->a(Lsui;Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v2, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    const-wide/16 v1, 0xfa0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3f

    nop

    nop

    :goto_8
    invoke-direct {v2, v1}, Ljbm;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lfzd;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_a
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v1, Lstd;->a:Lstd;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v2, v1}, Lkjj;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

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

    nop

    :goto_e
    invoke-direct {p1, v1}, Lfzd;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v2, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_11
    const-string v1, "Interactivity"

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_12
    const-string v2, "FirstPreviewFrame"

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

    :goto_13
    const/16 v1, 0xe

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

    :goto_14
    invoke-static {v0, v1, v2}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v2, Ljbm;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2}, Lsuu;->isDone()Z

    move-result p1

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

    :goto_19
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_1a
    if-eqz p1, :cond_0

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

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p2, p1}, Lsuu;->f(Lsui;)Z

    :goto_1c
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0, v1, v2, v3, p1}, Lsgj;->V(Lsui;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lsui;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1e
    invoke-direct {v0, v1}, Lfzd;-><init>(I)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object p1, p0, Lgis;->e:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_20
    invoke-static {p1, v1}, Lgjc;->a(Lsui;Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    :goto_21
    invoke-static {v0, p1, v1}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_22
    invoke-static {p1, v2, v0, v1}, Lsrv;->i(Lsui;Ljava/lang/Class;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_24
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3e

    nop

    :goto_25
    invoke-virtual {p3}, Lfwv;->i()Lows;

    move-result-object p1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance p1, Lfzd;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v1, p0, Lgis;->c:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2a
    const-class v3, Ljava/lang/Throwable;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_2b
    invoke-static {v0, v1}, Lgjc;->a(Lsui;Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2c
    new-array v2, v2, [Lsui;

    nop

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

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2e
    new-instance v1, Lfzd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_2f
    new-instance v1, Lsuu;

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

    :goto_30
    sget-object v1, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_31
    aput-object v1, v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput-object v0, p0, Lgis;->b:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_33
    const/16 v2, 0xc

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_34
    const v0, 0x8

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_35
    iput-object v0, p0, Lgis;->d:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_36
    aput-object v0, v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_37
    const/16 v1, 0xf

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v2}, Lsgj;->ac([Lsui;)Lkjj;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v1, 0x0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3a
    const-class v2, Ljava/lang/Throwable;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_3b
    new-instance v0, Lsuu;

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

    :goto_3c
    invoke-direct {v1, v2}, Lfzd;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/16 v2, 0xd

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {p1, v3, v1, v2}, Lsrv;->i(Lsui;Ljava/lang/Class;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_41
    sget-object v1, Lwireless/android/learning/acmi/p11/metadata/eGU/nQGhNZMKfLcyQ;->GIhiGouLiplewaU:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_42
    invoke-direct {v1, v2}, Lfzd;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgis;->d:Lsui;

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

    :goto_1
    invoke-interface {v0}, Lsui;->isDone()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lgis;->d:Lsui;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, v0}, Lsui;->cancel(Z)Z

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
