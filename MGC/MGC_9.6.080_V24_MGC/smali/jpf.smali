.class public final synthetic Ljpf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljpg;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    goto/32 :goto_1

    nop

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ljpf;->a:Landroid/os/Bundle;

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

    nop

    nop
.end method


# virtual methods
.method public final a(Ljpv;)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_2
    goto/32 :goto_17

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

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_4
    instance-of v0, p1, Lfxc;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/32 :goto_c

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_2

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

    :goto_a
    const v1, 0x9

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    invoke-static {p1}, Ljph;->f(Ljpv;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Ljpf;->a:Landroid/os/Bundle;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    move-object v1, p1

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

    :goto_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    :goto_10
    const-string v2, "PermissionsCheckerImpl.permissionsRequestCount"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v1, Lfxc;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    iget-object v1, v1, Lfxc;->d:Ljava/util/concurrent/atomic/AtomicInteger;

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

    nop

    nop

    :goto_13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    new-instance v0, Landroid/os/Bundle;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    :goto_18
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
