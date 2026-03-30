.class final Llcn;
.super Lpuq;
.source "PG"


# instance fields
.field final synthetic a:Llxa;


# direct methods
.method public constructor <init>(Llxa;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Llcn;->a:Llxa;

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

    :goto_1
    invoke-direct {p0, p1, p1, p1}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method


# virtual methods
.method public final a(Lpro;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Llcn;->a:Llxa;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Lpro;->e()J

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Llxa;->j()Llxm;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    iget v0, v0, Llxm;->a:I

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

    :goto_5
    sget-object v0, Lnyl;->h:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    iget-object p0, p0, Llcn;->a:Llxa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    sget-object v0, Lnyl;->j:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lnyl;->i:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0, p1, v0}, Llxa;->T(Lpro;Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method
