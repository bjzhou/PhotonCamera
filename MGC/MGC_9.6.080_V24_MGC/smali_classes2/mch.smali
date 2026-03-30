.class public final synthetic Lmch;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lrss;

.field public final synthetic b:Lmcc;

.field public final synthetic c:Lows;

.field public final synthetic d:Z

.field public final synthetic e:Ltxm;

.field public final synthetic f:Llgc;

.field public final synthetic g:Lkxj;

.field public final synthetic h:Lpik;

.field public final synthetic i:Lkug;


# direct methods
.method public synthetic constructor <init>(Lpik;Lrss;Lmcc;Lows;ZLtxm;Llgc;Lkug;Lkxj;)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p7, p0, Lmch;->f:Llgc;

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

    :goto_1
    iput-object p8, p0, Lmch;->i:Lkug;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Lmch;->c:Lows;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p9, p0, Lmch;->g:Lkxj;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p5, p0, Lmch;->d:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lmch;->a:Lrss;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Lmch;->b:Lmcc;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lmch;->h:Lpik;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    iput-object p6, p0, Lmch;->e:Ltxm;

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
.method public final run()V
    .locals 7

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Lphh;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v1, Lphh;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    const/4 v3, 0x3

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3
    invoke-virtual {v3, v1}, Lows;->d(Lpci;)V

    goto/32 :goto_d

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_5
    iget-object v0, p0, Lmch;->a:Lrss;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_6
    goto/32 :goto_17

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

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

    :goto_8
    invoke-virtual {v1}, Lphw;->s()Lpip;

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

    nop

    :goto_9
    const/16 v5, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v6}, Lpia;->c()Lpnu;

    move-result-object v6

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v5, Lmds;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    invoke-interface {v6}, Lpnu;->g()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_d
    iget-boolean v5, p0, Lmch;->d:Z

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v1, Lphw;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v5, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v3, p0, Lmch;->c:Lows;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_12
    invoke-interface {v1, v3}, Lpgh;->l(Lpgg;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Lmch;->e:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v3, Lgff;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v3, v4, v0, v5}, Lgff;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1a
    const v0, 0xb

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

    nop

    :goto_1b
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1c
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1d
    iget-object v2, p0, Lmch;->h:Lpik;

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

    nop

    :goto_1e
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v4, p0, Lmch;->b:Lmcc;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_20
    invoke-virtual {v2, v1}, Lpik;->d(Lphh;)Lpgo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_21
    invoke-virtual {v4, v1, p0, v0, v2}, Lmcc;->b(Lj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;Ljava/util/UUID;)Lpci;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_22
    invoke-static {v5}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v1

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

    :goto_23
    invoke-virtual {v3, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lmch;->f:Llgc;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_25
    iget-object v6, v2, Lpik;->a:Lpia;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v5, v2, v1, v0, v6}, Lmds;-><init>(Lpik;Lpgo;Lphh;I)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto :goto_31

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    :goto_2a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2, v1, v3}, Lpik;->c(Lpgo;I)Lpgh;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lmch;->i:Lkug;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2d
    new-instance v5, Lmdr;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lmch;->g:Lkxj;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v5, v2, v1, v0}, Lmdr;-><init>(Lpik;Ltxm;Llgc;)V

    :goto_31
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop
.end method
