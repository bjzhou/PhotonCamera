.class public final Lfya;
.super Lpuq;
.source "PG"


# instance fields
.field private final a:Ltxm;

.field private final b:Lsui;

.field private final c:Lkol;

.field private d:J


# direct methods
.method public constructor <init>(Lsui;Lkol;Ltxm;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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

    :goto_1
    iput-object p2, p0, Lfya;->c:Lkol;

    nop

    goto/32 :goto_5

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
    const-wide/16 p1, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lfya;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iput-object p1, p0, Lfya;->b:Lsui;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-wide p1, p0, Lfya;->d:J

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(Lpro;)V
    .locals 7

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
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

    :goto_4
    const-string v1, "CONTROL_AF_MODE or CONTROL_AF_STATE"

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_b

    nop

    nop

    :goto_6
    const v0, 0x4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "ERROR"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    :try_start_0
    iget-object v0, p0, Lfya;->b:Lsui;

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lolx;->bl(Lsui;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lfxp;

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    invoke-interface {v0}, Lfxp;->i()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpro;->e()J

    move-result-wide v1

    nop

    nop

    nop

    iget-wide v3, p0, Lfya;->d:J

    nop

    nop

    invoke-interface {v0}, Lfxp;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    int-to-long v5, v0

    nop

    nop

    add-long/2addr v3, v5

    nop

    nop

    nop

    nop

    cmp-long v0, v1, v3

    nop

    nop

    nop

    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Integer;

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto :goto_a

    nop

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    const/4 v0, 0x2

    nop

    nop

    if-eq v1, v0, :cond_2

    nop

    nop

    const/4 v0, 0x4

    nop

    nop

    nop

    if-ne v1, v0, :cond_3

    nop

    nop

    :cond_2
    invoke-interface {p1}, Lpro;->e()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    iput-wide v0, p0, Lfya;->d:J

    nop

    nop

    nop

    iget-object p1, p0, Lfya;->c:Lkol;

    nop

    nop

    nop

    iget-object p0, p0, Lfya;->a:Ltxm;

    nop

    nop

    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Lkoj;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p0}, Lkol;->b(Lkoj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    :goto_d
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :catchall_0
    goto/32 :goto_7

    nop

    nop
.end method
