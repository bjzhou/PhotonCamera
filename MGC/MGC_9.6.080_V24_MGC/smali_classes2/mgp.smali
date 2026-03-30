.class public final synthetic Lmgp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldym;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lmgp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lmgp;->b:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(ZF)V
    .locals 7

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lmgs;->requestLayout()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

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

    :goto_2
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lejl;->g:Lejp;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->d()Lnne;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_9
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, p1, p2, v5, v6}, Lejp;->x(JJ)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-wide p1, p0, Lejl;->a:J

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_f
    iget-object p0, p0, Lmgp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    iget-object v0, p0, Lejl;->g:Lejp;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lmgp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p0, Lndz;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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

    :goto_14
    if-ne p1, v0, :cond_2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3e

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v0, Lnne;->a:Lnne;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_50

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1, p1, v3}, Lmjv;->x(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1d
    goto/32 :goto_2d

    nop

    nop

    :goto_1e
    invoke-virtual {p2}, Lnne;->toString()Ljava/lang/String;

    move-result-object v3

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

    :goto_1f
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_20
    check-cast p0, Lmgs;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Lejl;->g:Lejp;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_24
    iget v1, p0, Lndz;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_25
    iget-object p0, p0, Lmgp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_26
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4a

    nop

    nop

    :goto_27
    invoke-virtual {p0, p1}, Lmgs;->setTranslationY(F)V

    goto/32 :goto_3d

    nop

    nop

    :goto_28
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v2, v0, Lejp;->l:Lejp;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, v1}, Lmgs;->f(Z)V

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0, p0, p1, v2}, Lejp;->s(Lejp;Lejo;Z)V

    :goto_2c
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2d
    sget-object p1, Lnne;->a:Lnne;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-wide v0, p0, Lndz;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object p0, Lejo;->b:Lejo;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_30
    const-wide/16 v5, -0x1

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Lmgs;->c()I

    move-result p2

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_32
    iget v0, p0, Lmgp;->b:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_33
    iget-wide v3, p0, Lejl;->a:J

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_34
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->k:Lmjv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v2}, Lejx;->g(I)Lejp;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_36
    iget-object p0, p0, Lejp;->m:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v2, v2, p0, v1}, Lejp;->s(Lejp;Lejo;Z)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_5

    nop

    nop

    :goto_39
    iput-object p1, p0, Lndz;->a:Lnne;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object p0, p0, Lejl;->g:Lejp;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_3b
    invoke-virtual {p1}, Lnne;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3c
    if-ne v0, v1, :cond_6

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0}, Lmgs;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p1, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_41
    iget-object p1, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->k:Lmjv;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_42
    invoke-virtual {p0, v2}, Lndz;->a(Z)V

    goto/32 :goto_a

    nop

    nop

    :goto_43
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v0, Lejx;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_45
    check-cast p0, Lejl;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-eqz p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_47
    iput-object v3, v0, Lejp;->l:Lejp;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_3f

    nop

    nop

    :goto_49
    sget-object p1, Lejo;->b:Lejo;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object p1, p0, Lndz;->a:Lnne;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4b
    iget-object v0, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    cmpg-float p1, p2, p1

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_4d
    invoke-virtual {v0, v5, v6, v3, v4}, Lejp;->x(JJ)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p0}, Lejl;->h()J

    move-result-wide p1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_50
    check-cast p0, Lejl;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const v0, 0x14

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v0, p0, Lejl;->g:Lejp;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-ltz p1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_45

    nop

    nop

    :goto_54
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_55
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h(Lnne;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_57
    iget-object p1, p0, Lejl;->f:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method
