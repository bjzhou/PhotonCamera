.class Livf;
.super Livd;
.source "PG"


# instance fields
.field final synthetic b:Livg;


# direct methods
.method public constructor <init>(Livg;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Livd;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Livf;->b:Livg;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 7

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iget-object v3, v2, Lglm;->c:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    iget-object v0, p0, Livf;->b:Livg;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v3, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->q(Z)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x10

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Livf;->b:Livg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_5
    move v1, v6

    nop

    nop

    :goto_6
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Livf;->b:Livg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2a

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    :goto_b
    if-eq v4, v5, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v3, v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setClickable(Z)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Liud;->k()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->g()Landroid/widget/ImageButton;

    move-result-object v2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0, v1}, Lndu;->v(Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v5, Lnbh;->c:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_13
    xor-int/lit8 v1, v1, 0x1

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lkyf;->m()V

    goto/32 :goto_16

    nop

    nop

    :goto_16
    iget-object v0, p0, Livf;->b:Livg;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_17
    iget-object v3, v2, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v1, v2}, Lryh;->n(Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object v1

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

    nop

    :goto_19
    sget-object v1, Lglk;->c:Lglk;

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

    :goto_1a
    if-nez v0, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Livg;->d:Lngo;

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1c
    iget-object v0, v2, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

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

    :goto_1d
    invoke-interface {v0, v1}, Lndu;->j(Z)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->o(Lryh;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, v0, Livg;->g:Lndu;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, v0, Livg;->f:Liud;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v2, v0, Livg;->e:Lglm;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_23
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_8

    nop

    :goto_24
    iget-object v4, v3, Lcom/google/android/apps/camera/bottombar/BottomBar;->t:Lnbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_25
    if-ne v4, v5, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Livf;->b:Livg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_27
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_28
    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, v0, Livg;->h:Lkyf;

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

    :goto_2c
    const/4 v6, 0x1

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

    :goto_2d
    sget-object v5, Lnbh;->b:Lnbh;

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

    :goto_2e
    invoke-interface {p0}, Lngo;->U()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, v0, Livg;->g:Lndu;

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

    :goto_30
    const v1, 0x9

    nop

    goto/32 :goto_22

    nop

    nop
.end method

.method public final b()V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    :goto_0
    iget-object v0, v0, Livg;->h:Lkyf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    const v1, 0x10

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

    :goto_2
    invoke-virtual {v2, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->q(Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

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

    :goto_4
    iget-object v0, p0, Livf;->b:Livg;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Livg;->d:Lngo;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    invoke-virtual {v2, v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setClickable(Z)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Livf;->b:Livg;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    const v0, 0x12

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

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Lngo;->o()V

    goto/32 :goto_10

    nop

    nop

    :goto_b
    iget-object v0, v0, Livg;->g:Lndu;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    iget-object v2, v0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, v0, Lglm;->c:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

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

    :goto_e
    iget-object v0, p0, Livf;->b:Livg;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    goto/32 :goto_1d

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, v0, Livg;->g:Lndu;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, v0, Livg;->e:Lglm;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v2, v0, Lglm;->c:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0, v1}, Lndu;->v(Z)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Livf;->b:Livg;

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

    :goto_18
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v2, Lglk;->b:Lglk;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Lkyf;->l()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->o(Lryh;)V

    goto/32 :goto_7

    nop

    nop

    :goto_1c
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Livf;->b:Livg;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0, v1}, Lndu;->j(Z)V

    goto/32 :goto_1e

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_22
    invoke-static {v2, v1}, Lryh;->n(Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object v1

    nop

    goto/32 :goto_3

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

    :goto_0
    return-void

    nop
.end method
