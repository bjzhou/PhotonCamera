.class public final synthetic Lqzf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p2, p0, Lqzf;->b:I

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
    iput-object p1, p0, Lqzf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Lqzg;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput p2, p0, Lqzf;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p1, p0, Lqzf;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lqzf;->a:Ljava/lang/Object;

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

    :goto_1
    check-cast p0, Lrmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljb;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Lqzf;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lqzf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p1, Lrmo;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_6
    move-object p2, p1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_7
    move v4, p3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v1, Lrmo;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_3a

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p2, Lju;->e:Ljb;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xa

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
    invoke-virtual {p0}, Lju;->k()V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, p1, Lju;->e:Ljb;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_f
    iget-object p1, p1, Lib;->d:Lie;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_10
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_0
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p4, p1, Lib;->b:Landroid/widget/ListAdapter;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_12
    invoke-direct {p3, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lqzg;->b:Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_14
    iget-object p2, p2, Lrmo;->a:Lju;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_15
    check-cast p1, Lrmo;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Lju;->u()Z

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_17
    if-ltz p3, :cond_1

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_19
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string p2, "license"

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p0, Lju;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p4, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p4

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :goto_20
    goto/32 :goto_4

    nop

    nop

    :goto_21
    invoke-static {v1, v0}, Lrmo;->a(Lrmo;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v0, Lrmo;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Ljb;->getSelectedItemId()J

    move-result-wide p4

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x19

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p1, p0, Lqzf;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_72

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_29
    move-wide v5, p4

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_2a
    if-eqz p4, :cond_2

    nop

    goto/32 :goto_42

    nop

    :cond_2
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-ltz p3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_3
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Lrmo;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    :cond_4
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Lie;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Lqzf;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    :goto_32
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Lrmo;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_36
    iget-object p1, p0, Lqzf;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz p3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1}, Lju;->o()I

    move-result p3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_39
    invoke-virtual {p1}, Ljb;->getSelectedView()Landroid/view/View;

    move-result-object p1

    nop

    nop

    :goto_3a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3b
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_3c
    goto/16 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast v0, Lrmo;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_3f
    const-wide/high16 p4, -0x8000000000000000L

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_40
    iget-object p1, p1, Lrmo;->a:Lju;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_5e

    nop

    nop

    :goto_42
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0}, Lju;->u()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-nez p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v0, p0, Lqzf;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p1, p3}, Lie;->setSelection(I)V

    goto/32 :goto_4b

    nop

    nop

    :goto_47
    check-cast v0, Lrmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v0, v0, Lrmo;->a:Lju;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object p1, p1, Lib;->d:Lie;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast p1, Lqze;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_4b
    iget-object p1, p0, Lqzf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast p1, Lib;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4d
    iget-object p0, p0, Lrmo;->a:Lju;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4e
    iget-object v0, p0, Lqzf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4f
    iget-object v0, v0, Lju;->e:Ljb;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_50
    invoke-virtual {p2}, Lju;->u()Z

    move-result p3

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
    iget-object p0, p0, Lqzf;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_70

    nop

    nop

    :goto_53
    return-void

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_55
    check-cast p0, Lqzg;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_56
    iget-object v1, p0, Lqzf;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const-class p2, Lcom/google/android/libraries/social/licenses/LicenseActivity;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_58
    goto/16 :goto_34

    nop

    nop

    :goto_59
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object p1, p0, Lqzf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    check-cast p1, Lib;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto :goto_59

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p0}, Lju;->k()V

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_60
    if-nez p2, :cond_8

    nop

    goto/32 :goto_59

    nop

    nop

    :cond_8
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_61
    move-object v0, p1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-lez v0, :cond_9

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_65

    nop

    :goto_63
    invoke-virtual {p0, p3}, Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;->startActivity(Landroid/content/Intent;)V

    :goto_64
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p1, p2, p3, p4, p5}, Lie;->performItemClick(Landroid/view/View;IJ)Z

    :goto_68
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-ne v0, p1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    check-cast p1, Lib;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6b
    check-cast p2, Lrmo;

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

    nop

    :goto_6c
    invoke-virtual {v1, v0, v2}, Lrmo;->setText(Ljava/lang/CharSequence;Z)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_6d
    new-instance p3, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object p2, p0, Lqzf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_6f
    if-eqz v1, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_70
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_56

    nop

    nop

    :goto_73
    iget-object p1, p1, Lib;->d:Lie;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    return-void

    nop

    :goto_75
    goto/32 :goto_5c

    nop

    nop

    :goto_76
    iget-object p0, p0, Lqzf;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget-object p1, p1, Lrmo;->a:Lju;

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

    :goto_78
    iget-object p1, p1, Lju;->e:Ljb;

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
.end method
