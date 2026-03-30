.class final Lbf;
.super Lbm;
.source "PG"


# instance fields
.field final synthetic a:Lbo;


# direct methods
.method public constructor <init>(Lbo;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lbf;->a:Lbo;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lbm;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 6

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    invoke-static {v4, p0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lbf;->a:Lbo;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v4, 0x195

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
    invoke-static {v4, v0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    iget-object v0, v0, Lbo;->ah:Leur;

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

    :goto_5
    const-string v1, "registryState"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    const/16 v4, 0x196

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    iget-object p0, p0, Lbf;->a:Lbo;

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

    :goto_a
    const v0, 0xc

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

    :goto_b
    iget-object p0, p0, Lbo;->ah:Leur;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_d
    goto/32 :goto_7

    nop

    :goto_e
    invoke-static {v0}, Lebv;->c(Leht;)V

    goto/32 :goto_1

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_1

    nop

    goto/32 :goto_1c

    nop

    :cond_1
    goto/32 :goto_5

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

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lbf;->a:Lbo;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    aput-object v0, v2, v4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    iget-object v0, p0, Lbf;->a:Lbo;

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

    :goto_15
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v4, 0x0

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

    :goto_18
    const/4 v2, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, v0, Lbo;->i:Landroid/os/Bundle;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_21

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1d
    new-array v2, v2, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x0

    nop

    :goto_21
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method
