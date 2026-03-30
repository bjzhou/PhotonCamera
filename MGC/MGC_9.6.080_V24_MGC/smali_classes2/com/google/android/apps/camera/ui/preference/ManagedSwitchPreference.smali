.class public Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "PG"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lney;


# static fields
.field public static final synthetic q:I


# instance fields
.field public a:Llyx;

.field public b:Landroid/preference/Preference$OnPreferenceChangeListener;

.field public c:Z

.field public d:Landroid/content/res/ColorStateList;

.field public e:Landroid/content/res/ColorStateList;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Landroid/view/View;

.field public n:Ljava/util/function/Function;

.field public o:Landroid/view/View$OnClickListener;

.field public p:Llyv;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/Switch;

.field private u:Landroid/widget/TextView;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_16

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->p:Llyv;

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

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setPersistent(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    :goto_5
    goto/32 :goto_14

    nop

    nop

    :goto_6
    check-cast p1, Lnfd;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Llyp;->a(Ljava/lang/String;)Llyp;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p1}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->a:Llyx;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-class v0, Lnfd;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p1, p0}, Lnfd;->p(Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v0}, Llyx;->k(Ljava/lang/String;)Z

    move-result p1

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

    :goto_f
    invoke-interface {p1, v0}, Liye;->c(Ljava/lang/Class;)Liyg;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    check-cast p1, Liye;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :goto_14
    invoke-super {p0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    const/4 p1, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->c:Z

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

    :goto_1
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1a

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lnfc;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->33f5b80483094659737b73d90f80a8a4m(Landroid/content/Context;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, v1}, Lnfc;-><init>(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

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

    :goto_2
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p2, v0}, Lnfc;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->33f5b80483094659737b73d90f80a8a4m(Landroid/content/Context;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p2, Lnfc;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput-boolean p3, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->c:Z

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

    :goto_1
    const/4 p3, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

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
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->33f5b80483094659737b73d90f80a8a4m(Landroid/content/Context;)V

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    new-instance p2, Lnfc;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p2, p3}, Lnfc;-><init>(I)V

    goto/32 :goto_5

    nop

    nop
.end method

.method public static final b(Landroid/widget/FrameLayout;)I
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const p0, 0x7f0803e8

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
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    const p0, 0x7f0803e9

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

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
.method public final a(Ljava/util/function/Function;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->n:Ljava/util/function/Function;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

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

    nop
.end method

.method public final getPersistedBoolean(Z)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->a:Llyx;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p0}, Llyx;->k(Ljava/lang/String;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop
.end method

.method protected final onBindView(Landroid/view/View;)V
    .locals 7

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->g:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/high16 v0, 0x1020000

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v3}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->b(Landroid/widget/FrameLayout;)I

    move-result v4

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->h:Ljava/lang/Integer;

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->t:Landroid/widget/Switch;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    new-instance v4, Ljsy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v2, 0x7f0b01a8

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_9
    check-cast v0, Landroid/widget/Button;

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_a
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->l:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->t:Landroid/widget/Switch;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v0, Landroid/widget/Button;

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->t:Landroid/widget/Switch;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x7f0b0473

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v0, Landroid/widget/Switch;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v0, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->o:Landroid/view/View$OnClickListener;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_1
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->k:Ljava/lang/String;

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

    :goto_18
    return-void

    nop

    nop

    :goto_19
    goto/32 :goto_e

    nop

    nop

    :goto_1a
    if-nez v1, :cond_2

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1b
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->k:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->d:Landroid/content/res/ColorStateList;

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

    nop

    :goto_1e
    const/16 v2, 0xe

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1f
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->e:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_20
    const v0, 0x1020040

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_21
    invoke-direct {v1, p0, v2}, Lmqp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_27
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->m:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v2, Landroid/widget/LinearLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_5

    nop

    goto/32 :goto_63

    nop

    :cond_5
    goto/32 :goto_1

    nop

    nop

    :goto_2d
    const v1, 0x15

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v1, 0x7f1402c9

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2f
    check-cast v0, Landroid/widget/LinearLayout;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->t:Landroid/widget/Switch;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v2, :cond_6

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->u:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_34
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_7
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_8
    goto/32 :goto_28

    nop

    nop

    :goto_36
    invoke-direct {v4, v3, v1, v5, v6}, Ljsy;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v0, :cond_9

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast v1, Landroid/widget/Switch;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3b
    check-cast v3, Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_c
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_41
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_42
    const/16 v4, 0xf

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :goto_44
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_46
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_47
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->t:Landroid/widget/Switch;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->t:Landroid/widget/Switch;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v0, :cond_d

    nop

    goto/32 :goto_7d

    nop

    nop

    :cond_d
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast v0, Landroid/widget/TextView;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_4e
    if-nez v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    :cond_e
    goto/32 :goto_0

    nop

    nop

    :goto_4f
    const v0, 0x7f0b01a7

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-nez v3, :cond_f

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->g:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_54
    if-nez v1, :cond_11

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

    :cond_11
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_55
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_56
    const v0, 0x7f0b0040

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_57
    new-instance v1, Lmqp;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->k:Ljava/lang/String;

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_59
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->s:Landroid/widget/LinearLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_5a
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->f:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setClickable(Z)V

    goto/32 :goto_4

    nop

    nop

    :goto_5c
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->o:Landroid/view/View$OnClickListener;

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_5d
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_5e
    goto/16 :goto_27

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_26

    nop

    nop

    :goto_60
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->f:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->r:Landroid/widget/Button;

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_62
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_63
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_67
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_68
    if-nez v1, :cond_12

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_12
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_6a
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-nez v0, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_6d
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_6e
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    nop

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

    :goto_6f
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    if-nez v0, :cond_14

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_73
    const v0, 0x1020016

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_74
    invoke-direct {v1, v0, v4}, Lmqp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

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

    :goto_76
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->d:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_77
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_78
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

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

    :goto_7a
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->i:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_7b
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    :goto_7d
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_7e
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->l:Ljava/lang/String;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    const v0, 0x7f0b0211

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_80
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->r:Landroid/widget/Button;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    const/4 v6, 0x0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->t:Landroid/widget/Switch;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_83
    check-cast v1, Landroid/widget/Switch;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->m:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const/16 v5, 0xc

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_87
    if-lez v0, :cond_15

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_b

    nop

    :goto_88
    const v3, 0x7f0b0114

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_89
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->e:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_8a
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->t:Landroid/widget/Switch;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8c
    new-instance v1, Lmqp;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_8e
    if-nez v2, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :cond_16
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_4d

    nop

    nop

    :goto_90
    iget-boolean v2, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->j:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :goto_94
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    check-cast v1, Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_97
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

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

    :goto_98
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_99
    if-nez v3, :cond_17

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_1b

    nop

    nop

    :goto_9a
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9c
    const v1, 0x7f0b01ab

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop
.end method

.method protected final onClick()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->n:Ljava/util/function/Function;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V

    goto/32 :goto_9

    nop

    nop

    :goto_4
    goto :goto_b

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    move-object v2, p2

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

    nop

    nop

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

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

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->a:Llyx;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0, p1, p2}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

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

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1, v2}, Llyx;->j(Ljava/lang/String;Z)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v2, Ljava/lang/Boolean;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

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
.end method
