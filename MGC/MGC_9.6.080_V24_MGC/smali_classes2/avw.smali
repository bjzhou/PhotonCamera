.class final Lavw;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lavx;


# direct methods
.method public constructor <init>(Lavx;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    nop

    nop

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
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lavw;->a:Lavx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Laog;->a(Ljava/lang/String;)V

    :goto_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v0, 0x29

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3
    const-string v2, ", it is out of bounds [0, "

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Laul;

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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_6
    const v1, 0x7

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

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0}, Luaz;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, v0, Lavx;->a:Luaz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Laul;->e()I

    move-result v0

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

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

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

    :goto_11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    if-ge p1, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    const/4 p0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lavw;->a:Lavx;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    if-gez p1, :cond_2

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

    :cond_2
    goto/32 :goto_25

    nop

    nop

    :goto_1a
    sget-object v2, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->BuTmS:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lavw;->a:Lavx;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    :goto_1d
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1e
    check-cast p1, Ljava/lang/Number;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    :goto_20
    invoke-static {v0, v2, p1, v1, p0}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lbzy;->z()Lufs;

    move-result-object v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x0

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

    :goto_23
    return-object p0

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_28

    nop

    nop

    :goto_25
    invoke-interface {v0}, Laul;->e()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v1, Lavv;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 p1, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_29
    invoke-direct {v1, p0, p1, v2}, Lavv;-><init>(Lavx;ILtzy;)V

    goto/32 :goto_15

    nop

    nop

    :goto_2a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop
.end method
