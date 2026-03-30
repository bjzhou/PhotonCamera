.class public final synthetic Ltce;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/googlex/gcam/hdrplus/PlanarMergedRawCallback;


# instance fields
.field public final synthetic a:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public synthetic constructor <init>(Landroidx/wear/ambient/AmbientMode$AmbientController;)V
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

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ltce;->a:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onImageView(IJJ)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p4}, Lind;->e()Lrss;

    move-result-object p4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eq p4, p5, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p5, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Ltce;->a:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, p4}, Lsgj;->A(Lcom/google/googlex/gcam/ShotMetadata;Lsxn;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_16

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    :goto_8
    invoke-virtual {p4}, Lind;->e()Lrss;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    invoke-interface {p4, p0, p2, p3, p1}, Lilm;->e(Linb;JLcom/google/googlex/gcam/ShotMetadata;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p4, p0, Linb;->r:Lmmw;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_b
    check-cast p0, Linb;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p4}, Lrss;->h()Z

    move-result p4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p5, Lcom/integrity/annotations/Obhj/bbLWXEJrNl;->aKrXTO:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p4, p0, Linb;->l:Lind;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget p4, p0, Linb;->u:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p4, p5}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    invoke-virtual {p4}, Lrss;->c()Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p4, Lilm;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    const/4 p5, 0x0

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    iget-object p4, p0, Linb;->l:Lind;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    invoke-static {p4}, Linb;->f(Lmmw;)Lsxn;

    move-result-object p4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_19
    invoke-direct {p1, p4, p5}, Lcom/google/googlex/gcam/ShotMetadata;-><init>(J)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 p5, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    invoke-static {p5}, Lrrf;->x(Z)V

    goto/32 :goto_17

    nop

    nop
.end method
