.class public Lgwg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgvz;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lgwh;

.field public c:J

.field private final d:Lnjb;

.field private final e:Lhco;

.field private final f:Lowr;

.field private final g:Lgqc;

.field private final h:Loyd;

.field private final i:Loyd;

.field private final j:Lhoh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "gwg"

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

    :goto_2
    sput-object v0, Lgwg;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method public constructor <init>(Lgsn;Lgqf;Lnjb;Lhco;Lgwh;Loyd;Loyd;Lhoh;)V
    .locals 0

    goto/32 :goto_6

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
    iput-object p1, p0, Lgwg;->f:Lowr;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p5, p0, Lgwg;->b:Lgwh;

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

    :goto_3
    iput-object p1, p0, Lgwg;->g:Lgqc;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Lgqf;->a()Lgqc;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Lgwg;->d:Lnjb;

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

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p7, p0, Lgwg;->i:Loyd;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    iput-object p6, p0, Lgwg;->h:Loyd;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    iput-object p4, p0, Lgwg;->e:Lhco;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lgsn;->b()Lowr;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p8, p0, Lgwg;->j:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Llxn;)Lsui;
    .locals 6

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xe

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-int/2addr v3, v4

    nop

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

    :goto_2
    invoke-virtual {v2, v4}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3
    iget-object v3, p0, Lgwg;->e:Lhco;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    :goto_5
    invoke-virtual {v3}, Lrss;->h()Z

    move-result v5

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6
    iget-object v3, v3, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    check-cast v3, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lgwg;->f:Lowr;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v2, p0, Lgwg;->i:Loyd;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v3, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v3, Lkog;

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

    :goto_d
    invoke-virtual {p0, v2, v3}, Lgwg;->b(Lpog;Lpcg;)Lsui;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Lhco;->a()Lpog;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v4, Lhmq;->bA:Lhmn;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    invoke-virtual {v3, v4}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v3, Lpcg;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v3}, Lhco;->d()Lrss;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v3}, Lpoh;->g()I

    move-result v4

    nop

    nop

    :goto_15
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_18
    const/16 v4, 0x5a

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

    :goto_19
    sget-object v4, Lpog;->a:Lpog;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1b
    if-nez v5, :cond_4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    :goto_1c
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-wide v0, p0, Lgwg;->c:J

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget-object v2, Lpog;->a:Lpog;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_22
    check-cast v3, Loxv;

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

    :goto_23
    new-instance v0, Lsuu;

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

    :goto_24
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    rsub-int v3, v3, 0x168

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_28
    iget-object v3, p0, Lgwg;->g:Lgqc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_15

    nop

    nop

    :goto_2a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2b
    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2d
    new-instance v3, Lgwf;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2e
    iget-object v3, v3, Lgqc;->t:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v0, 0xd

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_30
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_31
    rem-int/lit16 v3, v3, 0x168

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_26

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_25

    nop

    nop

    :goto_35
    invoke-static {v2, v3, p0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v3, p0, Lgwg;->h:Loyd;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_37
    iget v3, v3, Lpcg;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_38
    invoke-direct {v3, p0, v0, v1, p1}, Lgwf;-><init>(Lgwg;Lsuu;Lpog;Llxn;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v3}, Lpcg;->b(I)Lpcg;

    move-result-object v3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_2c

    nop

    nop

    :goto_3d
    if-nez v2, :cond_5

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v1, p0, Lgwg;->e:Lhco;

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

    :goto_3f
    invoke-interface {v3}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_40
    iget-object v3, p0, Lgwg;->j:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public final b(Lpog;Lpcg;)Lsui;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lrss;->h()Z

    move-result p1

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

    :goto_1
    const v1, 0x1a

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    const v0, 0xb

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x1

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

    nop

    :goto_5
    iget-object p0, p0, Lnjh;->a:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lnjh;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_9
    sget-object v0, Lpog;->a:Lpog;

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

    :goto_a
    return-object p0

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
    iget-object p0, p0, Lgwg;->d:Lnjb;

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

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eq p1, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_10
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    :goto_14
    const/4 p1, 0x0

    nop

    :goto_15
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move p1, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, p1, v1, p2}, Lnjb;->e(ZILpcg;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    const-string p1, "Can\'t take screen snapshot."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1d
    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1e
    goto :goto_15

    nop

    :goto_1f
    goto/32 :goto_14

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method
