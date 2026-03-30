.class public Ljer;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkuc;


# static fields
.field public static final a:Lsdb;


# instance fields
.field private final b:Lljk;

.field private final c:Lkuc;

.field private final d:Loyd;

.field private final e:Lows;

.field private final f:Ljfk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    sput-object v0, Ljer;->a:Lsdb;

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

    nop

    nop

    :goto_2
    const-string v0, "jer"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lljk;Loyd;Lows;Lrss;Ljel;Loyd;Loyd;Ltxm;Lisp;Lkuc;)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    :goto_0
    new-array p2, p4, [Loyd;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    add-int/lit8 p4, p4, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p7, Lgir;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3
    const v0, 0x20

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_4
    aput-object p7, p2, p10

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p3, p5}, Lows;->d(Lpci;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p2, Ljep;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_27

    nop

    nop

    :goto_8
    iput-object p2, p0, Ljer;->d:Loyd;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_9
    new-array p4, p4, [Loyd;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p7, p2}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object p2

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_b
    check-cast p4, Lrsx;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p3, p2}, Lows;->d(Lpci;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_f
    new-instance p2, Ljeo;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p2, v1, v2}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p2

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

    :goto_11
    check-cast p4, Ljfk;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p4, p0, Ljer;->f:Ljfk;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_13
    check-cast p8, Llhq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p8}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p8

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

    :goto_15
    sget-object p8, Lstd;->a:Lstd;

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p9}, Lisp;->b()Ljava/lang/Integer;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    aput-object p9, p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p2, p4, p10}, Ljep;-><init>(II)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p7, p8, p4, p2}, Lgir;-><init>(Loyd;Loyd;Loyd;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 p2, 0x4

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_1d
    iget-object p4, p4, Lrsx;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0, p1, p5, p2, p4}, Lixc;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_20
    new-instance p9, Loxv;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_21
    iput-object p1, p0, Ljer;->b:Lljk;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance p0, Lixc;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p3, p2}, Lows;->d(Lpci;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_24
    const/4 p4, 0x2

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

    :goto_25
    const/4 p10, 0x0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_26
    new-instance v1, Ljeo;

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_27
    new-instance v2, Ljuf;

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_28
    sget-object v2, Lstd;->a:Lstd;

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

    :goto_29
    invoke-static {p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_2a
    iput-object p3, p0, Ljer;->e:Lows;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v1, p9, p10}, Ljeo;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    :goto_2d
    invoke-static {p2, p4}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object p4

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2e
    invoke-static {p2}, Loyi;->c([Loyd;)Loyd;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_17

    nop

    :goto_30
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance p4, Linn;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_33
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_34
    invoke-direct {p4, p7}, Linn;-><init>(I)V

    goto/32 :goto_2d

    nop

    nop

    :goto_35
    invoke-direct {p2, p8, p4}, Ljeo;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_15

    nop

    nop

    :goto_36
    const/16 p7, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {p4}, Loyi;->c([Loyd;)Loyd;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_38
    invoke-interface {p1, p5}, Lpgh;->l(Lpgg;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object p10, p0, Ljer;->c:Lkuc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3b
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-direct {v2, v1, p1, p9, v0}, Ljuf;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lpgh;Loxv;I)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    aput-object p6, p4, v0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3e
    invoke-interface {p1}, Lljk;->f()Lpgh;

    move-result-object p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {p7, p2, p8}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {p1, v2}, Lpgh;->l(Lpgg;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_42
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const v2, 0x7fffffff

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {p8}, Llhq;->b()Loyd;

    move-result-object p8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_45
    invoke-direct {p9, v1}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 p4, 0x0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_47
    aput-object p2, p4, p10

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p3, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(Llxm;Lljj;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljfk;->a(Llxm;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-interface {p2}, Lljj;->a()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ljer;->f:Ljfk;

    nop

    nop

    goto/32 :goto_0

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

    nop
.end method


# virtual methods
.method public final a()Loyd;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ljer;->d:Loyd;

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

.method public final b()Loyd;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ljer;->c:Lkuc;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lkuc;->b()Loyd;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop
.end method

.method public final c(Lkub;Llko;)V
    .locals 6

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Lljj;->a()V

    goto/32 :goto_9

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    :goto_4
    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p2, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {p2}, Llxa;->j()Llxm;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2, v0}, Ljer;->da190e616797844b591057d0190e7728m(Llxm;Lljj;)V

    throw v1

    nop

    nop

    nop

    :catch_1
    iget-object p2, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {p2}, Llxa;->j()Llxm;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2, v0}, Ljer;->da190e616797844b591057d0190e7728m(Llxm;Lljj;)V

    new-instance p0, Ljava/lang/InterruptedException;

    nop

    nop

    nop

    nop

    const-string p2, "Error executing capture command."

    nop

    nop

    invoke-direct {p0, p2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Lljj;->a()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1}, Lkub;->close()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0}, Lljk;->a()Lljj;

    move-result-object v0

    nop

    :try_start_1
    iget-object v1, p0, Ljer;->f:Ljfk;

    nop

    nop

    new-instance v2, Lsuu;

    nop

    invoke-direct {v2}, Lsuu;-><init>()V

    iget-object v3, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Llxa;->j()Llxm;

    move-result-object v3

    nop

    nop

    iget v3, v3, Llxm;->a:I

    nop

    nop

    iget-object v3, v1, Ljfk;->b:Ljfy;

    nop

    nop

    invoke-interface {v3, p2, v2}, Ljfy;->j(Llko;Lsuu;)Lpci;

    move-result-object v3

    nop

    nop

    nop

    nop

    iput-object v3, v1, Ljfk;->i:Lpci;

    nop

    iget-object v3, v1, Ljfk;->i:Lpci;

    nop

    nop

    nop

    nop

    const-string v4, "Motion Blur processor not available."

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_1

    nop

    nop

    move v3, v5

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    :cond_1
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v3, v4}, Lrrf;->y(ZLjava/lang/Object;)V

    new-instance v3, Lixb;

    nop

    nop

    const/16 v4, 0x10

    nop

    nop

    invoke-direct {v3, v1, p2, v4}, Lixb;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v1, v1, Ljfk;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3, v1}, Lsuu;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Ljer;->e:Lows;

    nop

    nop

    nop

    new-instance v3, Ljdw;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v2, v4}, Ljdw;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Lows;->d(Lpci;)V

    iget-object v1, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    new-instance v3, Ljeq;

    nop

    nop

    nop

    invoke-direct {v3, v2}, Ljeq;-><init>(Ljava/util/concurrent/Future;)V

    invoke-interface {v1, v3}, Llxa;->w(Llxk;)V

    iget-object v1, p0, Ljer;->c:Lkuc;

    nop

    new-instance v3, Lled;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v5}, Lled;-><init>(I)V

    invoke-interface {v1, v3, p2}, Lkuc;->c(Lkub;Llko;)V

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    iget-object v0, p0, Ljer;->b:Lljk;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1}, Lkub;->close()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Lktq;->b()Lktp;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p2, Llko;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method
