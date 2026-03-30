.class public final synthetic Ljyk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpcm;


# instance fields
.field public final synthetic a:Lkyw;

.field public final synthetic b:Z

.field public final synthetic c:Lkyf;

.field public final synthetic d:Lhoh;

.field public final synthetic e:Lknu;

.field public final synthetic f:Lfdo;


# direct methods
.method public synthetic constructor <init>(Lkyw;Lkyf;Lfdo;ZLhoh;Lknu;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Ljyk;->c:Lkyf;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p6, p0, Ljyk;->e:Lknu;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object p3, p0, Ljyk;->f:Lfdo;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean p4, p0, Ljyk;->b:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p5, p0, Ljyk;->d:Lhoh;

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

    :goto_7
    iput-object p1, p0, Ljyk;->a:Lkyw;

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x13

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    goto/32 :goto_24

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Lkyw;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lknu;->b()V

    :goto_8
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_9
    const-string v0, "micro_tutorial_dismiss"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Ljyk;->c:Lkyf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Lkyf;->B()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_d
    if-eqz p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    goto :goto_8

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    if-eqz p1, :cond_4

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_20

    nop

    nop

    :goto_12
    invoke-virtual {p1, v0}, Lfdo;->G(Ljava/lang/String;)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_13
    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->B(Lkyq;)Z

    move-result p1

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

    :goto_14
    if-eqz p1, :cond_6

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2b

    nop

    nop

    :goto_15
    iget-object p0, p0, Ljyk;->e:Lknu;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    iget-object v0, p0, Ljyk;->a:Lkyw;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Ljyk;->f:Lfdo;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_30

    nop

    nop

    :goto_1a
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result v0

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

    :goto_1b
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1, v0}, Lkyw;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_20
    iget-object v0, p1, Lkyf;->t:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p1, p1, Lkyf;->u:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_4

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2c

    nop

    nop

    :goto_26
    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->B(Lkyq;)Z

    move-result p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->B(Lkyq;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_28
    iget-object p1, p1, Lkyf;->t:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-boolean v0, p1, Lkyf;->A:Z

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x6

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-boolean p1, p0, Ljyk;->b:Z

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2c
    iget-object p1, p0, Ljyk;->d:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v0, Lhmq;->aT:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object v1, Lkyq;->r:Lkyq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2f
    if-nez v0, :cond_a

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v0, Lhmz;->r:Lhmn;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method
