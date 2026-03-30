.class public final Ljnx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;ZII)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Ljnx;->b:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p4, p0, Ljnx;->d:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p2, p0, Ljnx;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p1, p0, Ljnx;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;ZII)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljnx;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput p4, p0, Ljnx;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p2, p0, Ljnx;->a:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p3, p0, Ljnx;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public synthetic constructor <init>(Lfxc;IZI)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Ljnx;->b:I

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-boolean p3, p0, Ljnx;->a:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput p4, p0, Ljnx;->d:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Ljnx;->c:Ljava/lang/Object;

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
    .locals 8

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v6, p0}, Lrgu;->k(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v5, v3, Lfxc;->a:Landroid/app/Activity;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_5
    const p0, 0x7f1404db

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v6, p0, v4}, Lrgu;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/32 :goto_f

    nop

    nop

    :goto_9
    invoke-virtual {v6, v1}, Lrgu;->f(Z)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v3, 0x7f0b0286

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_b
    iput-object v0, p0, Ldm;->l:Landroid/content/DialogInterface$OnDismissListener;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_54

    nop

    nop

    :goto_f
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v2, Lfxc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_14
    invoke-virtual {v6}, Ldq;->c()Ldr;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_15
    const v0, 0x7f140100

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_16
    iget-boolean v3, p0, Ljnx;->a:Z

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Lgqk;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_18
    if-ne p0, v1, :cond_2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1a
    iget-boolean v0, p0, Ljnx;->a:Z

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_1b
    invoke-virtual {v5, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v3}, Lfxc;->a()V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 p0, 0x4

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_20
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v0, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_27
    if-nez v3, :cond_3

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_28
    iget p0, p0, Ljnx;->b:I

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_29
    const v7, 0x7f15047b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1

    nop

    nop

    :goto_2b
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_2c
    iget-object v5, v3, Lfxc;->a:Landroid/app/Activity;

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

    :goto_2d
    iget-object p0, v3, Lfxc;->a:Landroid/app/Activity;

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

    :goto_2e
    const/4 v1, 0x3

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

    nop

    :goto_2f
    iget-object v0, p0, Ljnx;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v6, p0}, Lrgu;->h(Ljava/lang/CharSequence;)V

    goto/32 :goto_9

    nop

    nop

    :goto_31
    const p0, 0x7f1404de

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_32
    new-instance p0, Lfxb;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    :goto_37
    check-cast v3, Lfxc;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_38
    iget-object v3, p0, Ljnx;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_39
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_3a
    iget p0, p0, Ljnx;->b:I

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object p0, v3, Lfxc;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_3c
    invoke-virtual {v6, v5}, Lrgu;->o(Ljava/lang/CharSequence;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3e
    iget-object v5, v3, Lfxc;->a:Landroid/app/Activity;

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_3f
    return-void

    nop

    :goto_40
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v6, p0, v2}, Lrgu;->m(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_42
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_43
    iget-object p0, v6, Ldq;->a:Ldm;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_44
    move-object v2, v3

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_45
    iget-object v2, v2, Lfxc;->f:Landroid/content/DialogInterface$OnClickListener;

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_4e

    nop

    nop

    :goto_47
    if-ne p0, v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_48
    iget-object p0, v3, Lfxc;->a:Landroid/app/Activity;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_49
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_4a
    iget v0, p0, Ljnx;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4b
    iget-boolean v2, p0, Ljnx;->a:Z

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_4c
    return-void

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_37

    nop

    nop

    :goto_4f
    goto :goto_46

    nop

    :goto_50
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_51
    invoke-direct {v6, v5, v7}, Lrgu;-><init>(Landroid/content/Context;I)V

    goto/32 :goto_3

    nop

    nop

    :goto_52
    const v0, 0x7f14018c

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_53
    if-ne v0, v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    :cond_6
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_54
    const p0, 0x7f1404dd

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_56
    iput-object p0, v3, Lfxc;->i:Ldr;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_57
    const v0, 0x3

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    check-cast v1, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_59
    invoke-direct {p0, v4}, Lfxb;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const v7, 0x7f140102

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    sget-object v0, Lnpy;->a:Lj$/time/Duration;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5d
    if-nez v2, :cond_7

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :cond_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5e
    return-void

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    new-instance v6, Lrgu;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-nez v4, :cond_8

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v5, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v1, p0, Ljnx;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_66
    if-ne p0, v2, :cond_9

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_5e

    nop

    nop

    :goto_68
    if-nez p0, :cond_a

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_66

    nop

    nop

    :goto_69
    iget-object v4, v3, Lfxc;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_6a
    const p0, 0x7f1404dc

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_6b
    iget-object v4, v3, Lfxc;->e:Landroid/content/DialogInterface$OnClickListener;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget p0, p0, Ljnx;->b:I

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-direct {v0, v3, v2}, Lgqk;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_70
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_71
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method
