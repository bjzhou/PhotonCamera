.class Lmtz;
.super Lmty;
.source "PG"


# instance fields
.field final synthetic a:Lmup;


# direct methods
.method public constructor <init>(Lmup;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmtz;->a:Lmup;

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
    invoke-direct {p0}, Lmty;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lmtz;->a:Lmup;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v1, Lnne;->s:Lnne;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lmtz;->a:Lmup;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, v0, Lmup;->d:Lndu;

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

    :goto_8
    iput-boolean v0, p0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->d:Z

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, v1}, Lnxc;->S(Z)V

    goto/32 :goto_18

    nop

    nop

    :goto_a
    iget-object v0, p0, Lmtz;->a:Lmup;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0, v1}, Lndu;->x(Lnne;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lmup;->z()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, v0, Lmup;->d:Lndu;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0}, Lndu;->k()V

    goto/32 :goto_5

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lmtz;->a:Lmup;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lmup;->w()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lmup;->v()Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x15

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lmtz;->a:Lmup;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v1, Lnne;->s:Lnne;

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

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Lmup;->I(Lnne;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, v0, Lmup;->c:Lnxc;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lmtz;->a:Lmup;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lmtz;->a:Lmup;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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

    nop

    :goto_1
    invoke-virtual {p0}, Lmup;->v()Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    move-result-object p0

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lmtz;->a:Lmup;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public d()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public e()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public h()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public j()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public k()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public l()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public n()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public o()V
    .locals 0

    goto/32 :goto_0

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

    nop

    nop
.end method

.method public p()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public q()V
    .locals 0

    goto/32 :goto_0

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

    nop
.end method

.method public r()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public s()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public t()V
    .locals 0

    goto/32 :goto_0

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
.end method
