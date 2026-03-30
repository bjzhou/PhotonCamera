.class public final Ljjl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmiu;


# instance fields
.field public final a:Ltud;

.field private final b:Ltud;

.field private final c:Ltud;

.field private final d:Ltud;

.field private final e:Loyn;

.field private final f:Lowu;

.field private final g:Lpdf;

.field private final h:Lfdn;


# direct methods
.method public constructor <init>(Lfdn;Ltud;Ltud;Ltud;Ltud;Loyn;Lowu;Lpdf;)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p8, p0, Ljjl;->g:Lpdf;

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

    :goto_1
    iput-object p3, p0, Ljjl;->a:Ltud;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p5, p0, Ljjl;->d:Ltud;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Ljjl;->b:Ltud;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p6, p0, Ljjl;->e:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Ljjl;->h:Lfdn;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    iput-object p7, p0, Ljjl;->f:Lowu;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p4, p0, Ljjl;->c:Ltud;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 4

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_21

    nop

    nop

    :goto_2
    iget-object v0, p0, Ljjl;->c:Ltud;

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

    :goto_3
    invoke-virtual {v0, p0}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x10

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Ljjl;->g:Lpdf;

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
    iget-object v0, p0, Ljjl;->h:Lfdn;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string p0, "EssentialUiInit#wire"

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

    nop

    :goto_9
    invoke-interface {v0}, Ltud;->a()Ljava/lang/Object;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Lhco;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ltud;->a()Ljava/lang/Object;

    move-result-object v0

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

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v2, Ljhr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_11
    iget-object v0, p0, Ljjl;->b:Ltud;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/16 v3, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_14
    invoke-interface {v1, p0, v2}, Lpdf;->c(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v0}, Ltud;->a()Ljava/lang/Object;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Lhco;->f(Lpog;)V

    :goto_17
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Lfdn;->h()Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Ljjl;->g:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1a
    const-string v1, "EssentialUiInit#prewarm"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0, v1}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_1d

    nop

    nop

    :goto_1d
    iget-object v0, p0, Ljjl;->f:Lowu;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Ljjl;->g:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1f
    sget-object v1, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1

    nop

    nop

    :goto_21
    iget-object v0, p0, Ljjl;->g:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Ljjl;->e:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_23
    const-string v1, "EssentialUiInit#start"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_24
    iget-object v0, p0, Ljjl;->d:Ltud;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_25
    invoke-direct {v2, p0, v3}, Ljhr;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_26
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v0}, Lfwt;->j(Landroid/content/Intent;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2a
    sget-object v1, Llyi;->f:Llyi;

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
.end method
