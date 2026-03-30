.class public Lldu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkuc;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lfyu;

.field public final c:Lpcm;

.field private final d:Lldm;

.field private final e:Lrss;

.field private final f:Lrss;

.field private final g:Lows;

.field private final h:Lpdf;

.field private final i:Lpik;

.field private final j:Lqpa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-string v0, "ldu"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lldu;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Lrss;Lpik;Lrss;Lows;Lfyu;Lpdf;Lqpa;Lpcm;Lnne;Lldm;)V
    .locals 0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lldu;->g:Lows;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p2, p0, p9, p3}, Lgff;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lldu;->f:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    check-cast p1, Lpgo;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p2, Lgff;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 p3, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p8, p0, Lldu;->c:Lpcm;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    iput-object p1, p0, Lldu;->e:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p5, p0, Lldu;->b:Lfyu;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p1, p2}, Lpgh;->l(Lpgg;)V

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2, p1, p3}, Lpik;->c(Lpgo;I)Lpgh;

    move-result-object p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p3}, Lrss;->h()Z

    move-result p1

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
    iput-object p10, p0, Lldu;->d:Lldm;

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

    nop

    nop

    :goto_12
    const/4 p3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    iput-object p2, p0, Lldu;->i:Lpik;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    invoke-virtual {p3}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    iput-object p6, p0, Lldu;->h:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p4, p1}, Lows;->d(Lpci;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p7, p0, Lldu;->j:Lqpa;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_14

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

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lldu;->d:Lldm;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lldm;->a:Loyd;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b()Loyd;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lldm;->b()Loyd;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lldu;->d:Lldm;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final c(Lkub;Llko;)V
    .locals 6

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v1, Llwm;

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

    nop

    nop

    :goto_1
    const-string v5, "mv-attachSession"

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2
    iget-object v1, p0, Lldu;->h:Lpdf;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    goto/32 :goto_3c

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v2, v3, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    goto/32 :goto_4a

    nop

    nop

    :goto_6
    move-object v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_36

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_d

    nop

    :goto_9
    const-string v3, "Capture session not a NightSightCaptureSession: %s"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1a

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_c
    sget-object v2, Lldu;->a:Lsdb;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_d
    goto/32 :goto_16

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v3, v1, Llwm;->d:Lrss;

    nop

    :goto_10
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v2, p0, Lldu;->j:Lqpa;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lldu;->h:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v1, Llwm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_18
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_19
    invoke-virtual {v2, p2}, Lqpa;->h(Llko;)Ljvm;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v3}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p0}, Lpdf;->g()V

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2}, Ljvm;->c()V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p0, Lldu;->h:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v4, "mv-beginMoments"

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_22
    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v1, v3}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v1}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_25
    iget-object v1, p0, Lldu;->d:Lldm;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_26
    if-eqz v2, :cond_2

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

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p1, p0, Lldu;->h:Lpdf;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v3, v4}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_29
    invoke-interface {v4, v5}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2a
    const v0, 0x4

    nop

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

    :goto_2b
    if-nez v4, :cond_3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v3, "captureImage"

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2d
    const-string v1, "mv-setup"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v3, p0, Lldu;->h:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_30
    iget-object v3, p0, Lldu;->h:Lpdf;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_31
    const/16 v3, 0xd43

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_32
    invoke-virtual {v2}, Ljvm;->b()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v1}, Lpdf;->g()V

    :goto_34
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    :goto_36
    iget-object v0, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_37
    iget-object v1, p0, Lldu;->h:Lpdf;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v4, p0, Lldu;->h:Lpdf;

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

    :goto_39
    invoke-virtual {v2}, Ljvm;->a()Lrss;

    move-result-object v3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto :goto_46

    nop

    nop

    :goto_3c
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3e
    invoke-interface {p1}, Lpdf;->g()V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p0, p0, Lldu;->h:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_40
    invoke-virtual {v1, p1, p2}, Lldm;->c(Lkub;Llko;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v1, p0, Lldu;->h:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_42
    instance-of v1, v0, Llwm;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_43
    const-string p2, "mv-endMoments"

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    :goto_45
    sget-object v1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_47
    invoke-interface {p1, p2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_48
    check-cast v2, Lscz;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const-string v4, "mv-startMicrovideo"

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v0

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

    :goto_4b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x5

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    :goto_3
    const-string v1, "delegate"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Lrrf;->c(Ljava/lang/Object;)Lrsr;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lldu;->d:Lldm;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lrsr;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_c
    invoke-virtual {v0, v1, p0}, Lrsr;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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
