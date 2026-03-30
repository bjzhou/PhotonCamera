.class Lgyk;
.super Lgyy;
.source "PG"


# instance fields
.field final synthetic b:Lgyn;


# direct methods
.method public constructor <init>(Lgyn;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lgyy;-><init>()V

    goto/32 :goto_1

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
    iput-object p1, p0, Lgyk;->b:Lgyn;

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgyk;->b:Lgyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p0, v0, Lgyn;->h:Lgyy;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final e()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public f()V
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xb

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lgyk;->b:Lgyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/bottombar/BottomBar;->q(Z)V

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Lngo;->ak()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->p()V

    goto/32 :goto_f

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    iget-object v1, v0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lrbh;->q()V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    :goto_e
    iget-boolean v1, v0, Lglm;->g:Z

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lgyn;->f:Lngo;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    iget-object v0, p0, Lgyn;->j:Lrbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lgyn;->g:Lmyc;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_12
    invoke-static {}, Lnsn;->b()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    const v0, 0xa

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lgyn;->e:Lglm;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v2}, Lmyc;->d(Z)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, v0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
