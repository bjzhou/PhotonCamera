.class public final Lipu;
.super Lpuq;
.source "PG"


# instance fields
.field private final a:Lpcm;

.field private final b:Lpcm;

.field private final c:I

.field private d:I

.field private e:J

.field private final f:Lmjv;


# direct methods
.method public constructor <init>(Loxv;Loxv;Lhoh;Lows;Lmjv;)V
    .locals 2

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p2, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

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

    :goto_6
    new-instance p1, Lhjc;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

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
    iput v0, p0, Lipu;->d:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput p1, p0, Lipu;->c:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p1, Lhml;->c:Lhmo;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lipu;->b:Lpcm;

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

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_f
    iput-object p2, p0, Lipu;->a:Lpcm;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    iput-wide v0, p0, Lipu;->e:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p3, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/16 p2, 0x11

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p4, p1}, Lows;->d(Lpci;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    invoke-direct {p1, p0, p2}, Lhjc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_15

    nop

    nop

    :goto_17
    const v0, 0x1c

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_18
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

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

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    const v1, 0xa

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

    :goto_1b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1c
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object p5, p0, Lipu;->f:Lmjv;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpro;)V
    .locals 7

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v2, p0, Lipu;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    const v0, 0x7

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, v3}, Lpcm;->a(Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_30

    nop

    :goto_7
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Lnyo;->q:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_a
    iget-wide v3, p0, Lipu;->e:J

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p1, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lipu;->a:Lpcm;

    nop

    nop

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

    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_10
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_2a

    nop

    nop

    :goto_13
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_2

    nop

    goto/32 :goto_17

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p0, p1}, Lpcm;->a(Ljava/lang/Object;)V

    :goto_17
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eq p1, v0, :cond_3

    nop

    goto/32 :goto_2e

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1c
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1f
    iput-wide v3, p0, Lipu;->e:J

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_0

    nop

    nop

    :goto_21
    sget-object v0, Lnyo;->d:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    cmp-long v0, v3, v5

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

    nop

    :goto_23
    iget-object p0, p0, Lipu;->b:Lpcm;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_24
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_25
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move v1, v2

    nop

    nop

    :goto_27
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Lipu;->i()V

    :goto_2a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_6
    goto/32 :goto_6

    nop

    :goto_2c
    const v1, 0x2

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

    :goto_2d
    goto :goto_27

    nop

    nop

    :goto_2e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 8

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2
    iput v6, v7, Lskd;->f:I

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1b

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

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

    nop

    :goto_7
    sget-object v6, Lskc;->al:Lskc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8
    iput-wide v2, p0, Lipu;->e:J

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    :goto_a
    iget-object v4, v1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x2

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v6}, Ltkb;->o()V

    :goto_e
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_10
    iput v6, v7, Lskd;->b:I

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    or-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    or-int/lit16 v5, v5, 0x2000

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    or-int/lit8 v7, v7, 0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    iget-object v4, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v5, v4, Lskd;->d:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_19
    iget v0, p0, Lipu;->d:I

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v7, :cond_1

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

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-wide v0, p0, Lipu;->e:J

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput v7, v5, Lslr;->b:I

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

    nop

    :goto_1d
    iget-object v7, v1, Ltkb;->b:Ltkg;

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

    :goto_1e
    iput v0, p0, Lipu;->d:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1f
    iget-wide v6, p0, Lipu;->e:J

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_20
    iget v1, p0, Lipu;->c:I

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-object v5, v4, Lskd;->ao:Lslr;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_23
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz v7, :cond_2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v6, Lslr;->a:Lslr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v4, :cond_3

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_42

    nop

    nop

    :goto_28
    long-to-int v4, v4

    nop

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

    nop

    :goto_29
    invoke-virtual {v6}, Ltkg;->m()Ltkb;

    move-result-object v6

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

    :goto_2a
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v5, Lslr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2c
    iget v7, v5, Lslr;->b:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v5, v6, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2f
    iget-object v7, v6, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v4, Lskd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_31
    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v6}, Ltkb;->i()Ltkg;

    move-result-object v5

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

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_34
    iput v4, v5, Lslr;->c:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_35
    sget-object v1, Lskd;->a:Lskd;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v7, v1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    check-cast v5, Lslr;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object p0, p0, Lipu;->a:Lpcm;

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

    :goto_3b
    sub-long/2addr v4, v6

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iput v5, v4, Lskd;->d:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3d
    iget v6, v6, Lskc;->aG:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v0, p0, Lipu;->f:Lmjv;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3f
    iget v6, v7, Lskd;->b:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_40
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_41
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_43
    goto/32 :goto_a

    nop

    nop

    :goto_44
    const v0, 0x7

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

    :goto_45
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_46
    if-eq v0, v1, :cond_5

    nop

    goto/32 :goto_48

    nop

    nop

    :cond_5
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_47
    invoke-interface {p0, v0}, Lpcm;->a(Ljava/lang/Object;)V

    :goto_48
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_49
    check-cast v7, Lskd;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop
.end method
