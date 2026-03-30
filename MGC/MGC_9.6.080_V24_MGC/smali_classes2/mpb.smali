.class public final synthetic Lmpb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmpi;


# direct methods
.method public synthetic constructor <init>(Lmpi;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

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
    iput-object p1, p0, Lmpb;->a:Lmpi;

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
.end method


# virtual methods
.method public final run()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    iget-object v0, p0, Lmpi;->j:Lmpw;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Lmpw;->e(Z)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_8
    const/4 v1, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lneo;->e:Lneo;

    nop

    nop

    :goto_b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lmpw;->k()Z

    move-result v0

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

    nop

    nop

    :goto_d
    const-string v1, "Device temperature is too high to do recording."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lmpi;->q:Loiq;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xf

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

    :goto_11
    iget-object v0, p0, Lmpi;->j:Lmpw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Lmpw;->a()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/16 v1, 0x1204

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    sget-object v0, Lneo;->d:Lneo;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lmpi;->j:Lmpw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lmpi;->g:Lnep;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

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

    :goto_1a
    sget-object v0, Lmpi;->a:Lsdb;

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

    :goto_1b
    check-cast p0, Lmoq;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Loiq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1, v0}, Lnep;->d(Lneo;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, v0}, Lmoq;->j(I)Z

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Lmpb;->a:Lmpi;

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

    nop
.end method
