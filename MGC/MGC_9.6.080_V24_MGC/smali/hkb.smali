.class public final Lhkb;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput p2, p0, Lhkb;->a:I

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

    nop

    :goto_1
    iput-object p1, p0, Lhkb;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    iput p3, p0, Lhkb;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2, p1, p0}, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;->a(Lblm;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2, p1, p0}, Lcom/google/android/apps/camera/ui/creativebutton/CreativeButton;->a(Lblm;I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2
    iget-object p2, p0, Lhkb;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Lhkb;->a:I

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_4
    or-int/2addr p0, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p0, Ltyg;->a:Ltyg;

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

    :goto_6
    iget p0, p0, Lhkb;->a:I

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x5

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_8
    iget-object p2, p0, Lhkb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_a
    if-ne v0, v2, :cond_0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5b

    nop

    nop

    :goto_d
    invoke-static {p2, p1, p0}, Lnzk;->ba(Lmxp;Lblm;I)V

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p2, p0, Lhkb;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    or-int/2addr p0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_14
    invoke-static {p2, p1, p0}, Lhst;->R(Lhkm;Lblm;I)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    or-int/2addr p0, v1

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

    :goto_16
    invoke-static {p0}, Lbpd;->a(I)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p1, Lblm;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget p0, p0, Lhkb;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p0}, Lbpd;->a(I)I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast p1, Lblm;

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_1f
    return-object p0

    nop

    :goto_20
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-ne v0, v2, :cond_2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    :goto_22
    iget-object p2, p0, Lhkb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget p0, p0, Lhkb;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-object p0

    nop

    :goto_26
    goto/32 :goto_65

    nop

    nop

    :goto_27
    check-cast p1, Lblm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_28
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2a
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2b
    iget v0, p0, Lhkb;->c:I

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p0}, Lbpd;->a(I)I

    move-result p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2e
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    or-int/2addr p0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_8

    nop

    nop

    :goto_31
    const v0, 0xd

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

    :goto_32
    iget p0, p0, Lhkb;->a:I

    nop

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

    nop

    :goto_33
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_27

    nop

    nop

    :goto_35
    invoke-static {p0}, Lbpd;->a(I)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_36
    invoke-static {p0}, Lbpd;->a(I)I

    move-result p0

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_37
    check-cast p2, Ljava/lang/Number;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_38
    sget-object p0, Ltyg;->a:Ltyg;

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

    nop

    :goto_39
    invoke-virtual {p2, p1, p0}, Lcom/google/android/apps/camera/wear/wearappv2/ui/supermodeswitcher/WearSupermodeSwitcher;->a(Lblm;I)V

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3a
    or-int/2addr p0, v1

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_3b
    iget p0, p0, Lhkb;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-ne v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast p2, Lcom/google/android/apps/camera/wear/wearappv2/ui/supermodeswitcher/WearSupermodeSwitcher;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast p2, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_40
    check-cast p2, Lmxp;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_42
    iget-object p2, p0, Lhkb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast p1, Lblm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget p0, p0, Lhkb;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_45
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_46
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5f

    nop

    :goto_47
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_48
    check-cast p2, Lhkm;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_49
    if-ne v0, v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/4 v2, 0x4

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4b
    check-cast p2, Lcom/google/android/apps/camera/ui/creativebutton/CreativeButton;

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

    nop

    :goto_4c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {p0}, Lbpd;->a(I)I

    move-result p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4e
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast p2, Lcom/google/android/apps/camera/composezoom/ZoomUi;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    check-cast p1, Lblm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    return-object p0

    nop

    :goto_53
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_54
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_55
    check-cast p2, Ljava/lang/Number;

    nop

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

    nop

    :goto_56
    invoke-static {p2, p1, p0}, Lnzk;->aF(Lnia;Lblm;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const/4 v2, 0x3

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_58
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    or-int/2addr p0, v1

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_5b
    check-cast p1, Lblm;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    or-int/2addr p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object p2, p0, Lhkb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_5e
    if-ne v0, v2, :cond_6

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {p2, p1, p0}, Lcom/google/android/apps/camera/composezoom/ZoomUi;->a(Lblm;I)V

    goto/32 :goto_47

    nop

    nop

    :goto_62
    check-cast p1, Lblm;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_63
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_64
    iget-object p2, p0, Lhkb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_66
    invoke-static {p0}, Lbpd;->a(I)I

    move-result p0

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
