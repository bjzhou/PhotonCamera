.class public final synthetic Lntq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lntu;

.field public final synthetic b:Z

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lntu;ZI)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lntq;->c:I

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
    iput-boolean p2, p0, Lntq;->b:Z

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

    :goto_4
    iput-object p1, p0, Lntq;->a:Lntu;

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 3

    goto/32 :goto_16

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    nop

    nop

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

    :goto_4
    iget-object v0, v0, Lntu;->l:Lnti;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    if-ne v0, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    :goto_6
    const v1, 0x16

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lntq;->a:Lntu;

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
    const-string v1, "/shutter_button_mode_changed"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    invoke-virtual {p0, v1, v0}, Lnti;->d(Ljava/lang/String;[B)V

    goto/32 :goto_29

    nop

    nop

    :goto_b
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lntu;->l:Lnti;

    nop

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

    :goto_d
    iget-boolean v2, v0, Lntu;->h:Z

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

    :goto_e
    if-nez v0, :cond_2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_25

    nop

    nop

    :goto_10
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x1

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

    :goto_13
    goto/32 :goto_2

    nop

    nop

    :goto_14
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lntu;->l:Lnti;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    const v0, 0x12

    nop

    nop

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

    :goto_17
    add-int v0, v0, v1

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

    :goto_18
    iget-boolean v0, p0, Lntq;->b:Z

    nop

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

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lntq;->a:Lntu;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v1, v0}, Lnti;->d(Ljava/lang/String;[B)V

    goto/32 :goto_1

    nop

    nop

    :goto_1d
    iget-boolean v0, p0, Lntq;->b:Z

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

    :goto_1e
    if-eqz v2, :cond_3

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

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

    :goto_20
    const-string v1, "/enter_cuttleface"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-boolean p0, p0, Lntq;->b:Z

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-string v1, "/exit_astro_mode"

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget v0, p0, Lntq;->c:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_14

    nop

    :goto_28
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

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

    :goto_29
    return-void

    nop

    :goto_2a
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lntq;->a:Lntu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v1, p0}, Lnti;->d(Ljava/lang/String;[B)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method
