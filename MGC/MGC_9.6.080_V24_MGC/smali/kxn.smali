.class public Lkxn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpcm;


# static fields
.field private static final b:Lsdb;


# instance fields
.field public final a:Lsuu;

.field private final c:J

.field private d:Ljava/lang/Long;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    sput-object v0, Lkxn;->b:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    const-string v0, "kxn"

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

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(J)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkxn;->a:Lsuu;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lkxn;->e:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
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

    :goto_4
    iput-wide p1, p0, Lkxn;->c:J

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    new-instance p1, Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    check-cast p1, Lprk;

    nop

    nop

    goto/32 :goto_2

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
    invoke-virtual {p0, p1}, Lkxn;->b(Lprk;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final b(Lprk;)V
    .locals 7

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    check-cast v3, Lscz;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Lkxn;->e:Z

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_5
    if-lez v3, :cond_1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_6
    iget-wide v3, p0, Lkxn;->c:J

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v3, Lkxn;->b:Lsdb;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    const-wide/16 v3, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_9
    invoke-static {v2}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_b
    cmp-long v3, v5, v3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    const/16 v4, 0xc47

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

    :goto_e
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lkxn;->a:Lsuu;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

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

    :goto_12
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_14
    iput-object v0, p0, Lkxn;->d:Ljava/lang/Long;

    nop

    :goto_15
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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

    :goto_18
    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lkxn;->d:Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_1d
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_2
    goto/32 :goto_30

    nop

    :goto_1f
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    :goto_20
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    :goto_22
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {p1}, Lprk;->e()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_24
    sub-long/2addr v0, v2

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_25
    iget-object p0, p0, Lkxn;->a:Lsuu;

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

    :goto_26
    iput-boolean v2, p0, Lkxn;->e:Z

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-boolean v2, p0, Lkxn;->e:Z

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2a
    invoke-interface {v3, v1, v4, p1, v0}, Lscz;->G(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p1}, Lprk;->e()J

    move-result-wide v0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2c
    goto :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v1, "timeout waiting for %d at %d, after %dframes"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2f
    cmp-long v3, v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_32
    if-nez v0, :cond_3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p1, v2}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_36
    iget-object v2, p0, Lkxn;->d:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_37
    check-cast p1, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_38
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_39
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3b
    if-gez v3, :cond_5

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3c
    iget-wide v4, p0, Lkxn;->c:J

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop
.end method
