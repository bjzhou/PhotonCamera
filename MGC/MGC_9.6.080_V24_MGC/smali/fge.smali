.class final Lfge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lfgp;

.field final synthetic c:Lfgg;


# direct methods
.method public constructor <init>(Lfgg;Landroid/os/Handler;Lfgp;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lfge;->a:Landroid/os/Handler;

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

    :goto_2
    iput-object p1, p0, Lfge;->c:Lfgg;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-object p3, p0, Lfge;->b:Lfgp;

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
.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    invoke-static {p2, v0}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_3
    iget-object p2, p2, Lfgg;->a:Lfgm;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    invoke-virtual {p2, v0}, Lfho;->c(I)V

    :goto_5
    goto/32 :goto_e

    nop

    nop

    :goto_6
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p2, p0, Lfge;->c:Lfgg;

    nop

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

    :goto_8
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p2, p2, Lfgm;->e:Lfho;

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

    nop

    :goto_a
    sget-object p2, Lfgm;->a:Lfht;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b
    iget-object p2, p0, Lfge;->c:Lfgg;

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
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    iget-object p2, p2, Lfgm;->e:Lfho;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    iget-object p2, p0, Lfge;->a:Landroid/os/Handler;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :goto_10
    goto/32 :goto_1d

    nop

    nop

    :goto_11
    invoke-virtual {p2}, Lfho;->a()I

    move-result p2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_12
    const-string v0, "onAutoFocus callback returning when not focusing"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_14
    if-ne p2, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_15
    const/4 v0, 0x2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, p0, p1, v1}, Lfgu;-><init>(Ljava/lang/Object;ZI)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    :goto_18
    goto/32 :goto_b

    nop

    nop

    :goto_19
    new-instance v0, Lfgu;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p2, p2, Lfgg;->a:Lfgm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 v0, 0x10

    nop

    goto/32 :goto_14

    nop

    nop
.end method
