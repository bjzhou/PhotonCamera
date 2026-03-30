.class public final Lgmo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final a:Lgmq;

.field public final b:Lgnl;

.field public final c:Ljava/util/concurrent/Executor;

.field public d:Lgqg;

.field public e:Lugy;

.field public f:Lsui;

.field public final g:Lows;

.field public volatile h:I

.field public i:Lnrb;

.field public final j:Liof;

.field public final k:Liof;

.field private final l:Lgze;


# direct methods
.method public constructor <init>(Liof;Lgmq;Liof;Lgnl;Lgze;Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Lgmo;->l:Lgze;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lgmo;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lgmo;->b:Lgnl;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object p1, p0, Lgmo;->k:Liof;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Lows;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1}, Lows;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lgmo;->g:Lows;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p6, p0, Lgmo;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    iput-object p3, p0, Lgmo;->j:Liof;

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

    :goto_c
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    :goto_d
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    :goto_e
    iput-object p2, p0, Lgmo;->a:Lgmq;

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

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c

    nop

    nop

    :goto_11
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ltzy;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, v4}, Lgnl;->b(Lgqg;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v1, v0, Lgmn;->d:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    invoke-static {v5}, Luch;->b(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    return-object v1

    nop

    nop

    :goto_4
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v2}, Lgze;->a(Lpck;)Lrss;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Lgmn;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v1, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lgmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v5}, Luch;->b(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_b
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    :goto_c
    const v1, 0x17

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_d
    and-int v3, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_e
    goto/16 :goto_2d

    nop

    nop

    :goto_f
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v5, "config"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object v0, p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sub-int/2addr v1, v2

    nop

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

    :goto_17
    const/high16 v2, -0x80000000

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

    :goto_18
    iget-object p1, p1, Lgsz;->a:Lpak;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move-object p0, v6

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1c
    iget-object v2, v2, Lgqg;->d:Lozg;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1d
    iput v1, v0, Lgmn;->d:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x16

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1f
    invoke-static {p0, v0}, Lucg;->r(Lsui;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_4

    nop

    :goto_21
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_23
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object v2, v4

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    throw p0

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v2, v0, Lgmn;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2a
    if-eq v2, v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_3
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v2, p0, Lgmo;->b:Lgnl;

    nop

    nop

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

    :goto_2c
    move-object v4, p0

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v2, p0, Lgmo;->d:Lgqg;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, p1}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_30
    sget-object p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/KvcD/IYYyjJUHLbynRQ;->fXLDXiVBKFoXGJ:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_4
    goto/32 :goto_20

    nop

    :goto_32
    iget-object p0, v0, Lgmn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_33
    iput-object p1, v0, Lgmn;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_36
    if-nez v0, :cond_5

    nop

    goto/32 :goto_12

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    :goto_37
    invoke-virtual {v2}, Lozg;->b()Lpck;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_38
    if-eqz v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p0, p0, Lgmo;->d:Lgqg;

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

    :goto_3a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3b
    move-object v6, p1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-direct {v0, p0, p1}, Lgmn;-><init>(Lgmo;Ltzy;)V

    :goto_3d
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {p1}, Lpak;->b()Lrss;

    move-result-object p1

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_3f
    instance-of v0, p1, Lgmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_40
    check-cast p1, Lgsz;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_41
    if-ne p0, v1, :cond_7

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_7
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_42
    move-object p1, p0

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

    :goto_43
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iput v3, v0, Lgmn;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_45
    iget-object p1, v0, Lgmn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_46
    return-object p0

    nop

    :goto_47
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_4b
    check-cast p0, Lrss;

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

    nop

    :goto_4c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_33

    nop

    nop

    :goto_4d
    iget-object p1, p0, Lgmo;->l:Lgze;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_4e
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final b(I)V
    .locals 0

    goto/32 :goto_1

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
    iput p1, p0, Lgmo;->h:I

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
.end method

.method public final close()V
    .locals 3

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Lsui;->isDone()Z

    move-result v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Lugy;->q()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lows;->close()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Lgmo;->h:I

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_4
    const-string v1, "viewfinderSinkFuture"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_5
    if-eq v0, v1, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, v1}, Lsui;->cancel(Z)Z

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    move-object v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lgmo;->e:Lugy;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_1a

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lgmo;->i:Lnrb;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_30

    nop

    :goto_12
    iget-object p0, p0, Lgmo;->e:Lugy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v1}, Luch;->b(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Lnrb;->close()V

    :goto_17
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_18
    invoke-static {v1}, Luch;->b(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v2}, Luch;->I(Lugy;)V

    :goto_1a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1b
    move-object v0, v2

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lgmo;->f:Lsui;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v1, Lcom/google/android/apps/camera/ui/eduimageview/JrT/cUhjhcVVea;->smQzrNFqf:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, v1}, Lgmo;->b(I)V

    goto/32 :goto_38

    nop

    nop

    :goto_22
    goto :goto_2b

    nop

    nop

    :goto_23
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_24
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_27
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    :goto_28
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop

    :goto_29
    iget-object v0, p0, Lgmo;->f:Lsui;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move-object v2, p0

    nop

    :goto_2b
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2c
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2d
    if-eqz v0, :cond_6

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

    :cond_6
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz p0, :cond_7

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v1}, Luch;->b(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_32
    invoke-static {v1}, Luch;->b(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_33
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_8
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_35
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_37
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v0, p0, Lgmo;->g:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
