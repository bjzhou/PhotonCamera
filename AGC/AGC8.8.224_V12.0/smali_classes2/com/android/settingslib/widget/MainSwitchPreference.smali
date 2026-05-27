.class public Lcom/android/settingslib/widget/MainSwitchPreference;
.super Landroidx/preference/TwoStatePreference;

# interfaces
.implements Lboj;


# instance fields
.field private final c:Ljava/util/List;

.field private d:Lcom/android/settingslib/widget/MainSwitchBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->c:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/widget/MainSwitchPreference;->aj(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->c:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/MainSwitchPreference;->aj(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->c:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/MainSwitchPreference;->aj(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->c:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/MainSwitchPreference;->aj(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final aj(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0e00eb

    iput v0, p0, Landroidx/preference/Preference;->A:I

    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    sget-object v0, Laos;->g:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->T(Ljava/lang/CharSequence;)V

    const/16 p2, 0xf

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/settingslib/widget/MainSwitchPreference;->ai(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final T(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->T(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->d:Lcom/android/settingslib/widget/MainSwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->c(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a(Laor;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->a(Laor;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Laor;->u:Z

    iput-boolean v0, p1, Laor;->v:Z

    const v1, 0x7f0b0309

    invoke-virtual {p1, v1}, Laor;->B(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/MainSwitchBar;

    iput-object p1, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->d:Lcom/android/settingslib/widget/MainSwitchBar;

    new-instance v1, Lhu;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lhu;-><init>(Lcom/android/settingslib/widget/MainSwitchPreference;I)V

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/MainSwitchBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p0, Landroidx/preference/Preference;->y:Z

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchPreference;->ai(Z)V

    iget-boolean p1, p0, Landroidx/preference/TwoStatePreference;->a:Z

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->k(Z)V

    iget-object p1, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->d:Lcom/android/settingslib/widget/MainSwitchBar;

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/preference/Preference;->q:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/MainSwitchBar;->c(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->d:Lcom/android/settingslib/widget/MainSwitchBar;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/MainSwitchBar;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/settingslib/widget/MainSwitchBar;->b:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lboj;

    iget-object v1, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->d:Lcom/android/settingslib/widget/MainSwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/widget/MainSwitchBar;->a(Lboj;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ai(Z)V
    .locals 4

    iget-boolean v0, p0, Landroidx/preference/Preference;->y:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/preference/Preference;->y:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->d()V

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->d:Lcom/android/settingslib/widget/MainSwitchBar;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/settingslib/widget/MainSwitchBar;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-static {}, Lbze;->H()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/settingslib/widget/MainSwitchBar;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/MainSwitchBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070626

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v3, p1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object p1, v0, Lcom/android/settingslib/widget/MainSwitchBar;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public final bf(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->k(Z)V

    return-void
.end method

.method public final k(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->k(Z)V

    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->d:Lcom/android/settingslib/widget/MainSwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/widget/MainSwitchBar;->d()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->d:Lcom/android/settingslib/widget/MainSwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->b(Z)V

    :cond_0
    return-void
.end method
