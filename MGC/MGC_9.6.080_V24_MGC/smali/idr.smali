.class public final synthetic Lidr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpcm;


# instance fields
.field public final synthetic a:Loyd;

.field public final synthetic b:Ltud;

.field public final synthetic c:Llyv;

.field public final synthetic d:Llyv;

.field public final synthetic e:Lidu;

.field public final synthetic f:Lhoh;

.field public final synthetic g:Lpic;


# direct methods
.method public synthetic constructor <init>(Lhoh;Loyd;Lpic;Ltud;Llyv;Llyv;Lidu;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p2, p0, Lidr;->a:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    iput-object p5, p0, Lidr;->c:Llyv;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lidr;->f:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-object p7, p0, Lidr;->e:Lidu;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Lidr;->b:Ltud;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p3, p0, Lidr;->g:Lpic;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    iput-object p6, p0, Lidr;->d:Llyv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_1a

    nop

    nop

    :goto_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v3, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_4
    if-eq v3, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lidr;->f:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_7
    iget-object v0, p0, Lidr;->g:Lpic;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result v0

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

    nop

    :goto_c
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2, v1, p1}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_f
    invoke-virtual {p1, v0}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->r()Z

    move-result v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lidr;->a:Loyd;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v3, p0, Lidr;->c:Llyv;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v1, Llyr;->m:Llzf;

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/2addr v3, p1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_4
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v0, Lhlz;->d:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_24
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_5
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_25
    check-cast p1, Ljava/lang/Integer;

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

    nop

    :goto_26
    if-eqz v0, :cond_6

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lidr;->b:Ltud;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_28
    sget-object v1, Lnne;->b:Lnne;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0, p1}, Lidu;->a(Z)V

    :goto_2a
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2b
    iget-object v2, p0, Lidr;->d:Llyv;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

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

    :goto_2d
    if-ge v3, v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_7
    goto/32 :goto_d

    nop

    nop

    :goto_2e
    invoke-interface {v0}, Ltud;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2f
    const/4 p1, 0x1

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

    nop

    :goto_30
    invoke-virtual {v0}, Lpic;->M()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_41

    nop

    nop

    :goto_32
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v0, :cond_8

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_35

    nop

    nop

    :goto_34
    if-nez v0, :cond_9

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object v1, Llyr;->o:Llzf;

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

    :goto_36
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v2, v1, p0}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    :goto_39
    goto/32 :goto_9

    nop

    nop

    :goto_3a
    invoke-virtual {v3, v1}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3d
    check-cast v0, Lnne;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object v0, Lhmq;->aT:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_40
    sget-object v0, Lhlz;->c:Lhmo;

    nop

    :goto_41
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p0, p0, Lidr;->e:Lidu;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_43
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    sget-object v0, Lhlz;->f:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop
.end method
