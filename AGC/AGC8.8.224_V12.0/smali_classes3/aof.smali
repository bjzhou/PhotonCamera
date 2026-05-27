.class public Laof;
.super Lbw;

# interfaces
.implements Laon;
.implements Laol;
.implements Laom;
.implements Lang;


# instance fields
.field public a:Laoo;

.field public final ad:Landroid/os/Handler;

.field private final ae:Laob;

.field private af:I

.field private final ag:Ljava/lang/Runnable;

.field public b:Landroid/support/v7/widget/RecyclerView;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lbw;-><init>()V

    new-instance v0, Laob;

    invoke-direct {v0, p0}, Laob;-><init>(Laof;)V

    iput-object v0, p0, Laof;->ae:Laob;

    const v0, 0x7f0e00c5

    iput v0, p0, Laof;->af:I

    new-instance v0, Laoa;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Laoa;-><init>(Laof;Landroid/os/Looper;)V

    iput-object v0, p0, Laof;->ad:Landroid/os/Handler;

    new-instance v0, Lnk;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lnk;-><init>(Laof;I)V

    iput-object v0, p0, Laof;->ag:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final A(Landroidx/preference/Preference;)Z
    .locals 6

    iget-object v0, p1, Landroidx/preference/Preference;->t:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move-object v2, p0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    instance-of v3, v2, Laod;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Laod;

    invoke-interface {v0}, Laod;->a()Z

    move-result v0

    :cond_0
    iget-object v2, v2, Lbw;->B:Lbw;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lbw;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Laod;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lbw;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Laod;

    invoke-interface {v0}, Laod;->a()Z

    move-result v0

    :cond_2
    const/4 v2, 0x1

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lbw;->getActivity()Lbz;

    move-result-object v0

    instance-of v0, v0, Laod;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lbw;->getActivity()Lbz;

    move-result-object v0

    check-cast v0, Laod;

    invoke-interface {v0}, Laod;->a()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    const-string v0, "PreferenceFragment"

    const-string v3, "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->t()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0}, Lcq;->h()Lcd;

    move-result-object v4

    invoke-virtual {p0}, Lbw;->requireActivity()Lbz;

    move-result-object v5

    invoke-virtual {v5}, Lbz;->getClassLoader()Ljava/lang/ClassLoader;

    iget-object p1, p1, Landroidx/preference/Preference;->t:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcd;->b(Ljava/lang/String;)Lbw;

    move-result-object p1

    invoke-virtual {p1, v3}, Lbw;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p1, p0, v1}, Lbw;->setTargetFragment(Lbw;I)V

    invoke-virtual {v0}, Lcq;->i()Lcx;

    move-result-object v0

    invoke-virtual {p0}, Lbw;->requireView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcx;->r(ILbw;)V

    iget-boolean p1, v0, Lcx;->k:Z

    if-eqz p1, :cond_4

    iput-boolean v2, v0, Lcx;->j:Z

    const/4 p1, 0x0

    iput-object p1, v0, Lcx;->l:Ljava/lang/String;

    invoke-virtual {v0}, Lcx;->h()V

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return v2

    :cond_6
    return v1
.end method

.method public final B()V
    .locals 3

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    instance-of v2, v1, Laoe;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Laoe;

    invoke-interface {v0}, Laoe;->a()Z

    move-result v0

    :cond_0
    iget-object v1, v1, Lbw;->B:Lbw;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lbw;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Laoe;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lbw;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Laoe;

    invoke-interface {v0}, Laoe;->a()Z

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lbw;->getActivity()Lbz;

    move-result-object v0

    instance-of v0, v0, Laoe;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lbw;->getActivity()Lbz;

    move-result-object v0

    check-cast v0, Laoe;

    invoke-interface {v0}, Laoe;->a()Z

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1

    iget-object v0, p0, Laof;->a:Laoo;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Laoo;->e(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public c()Landroidx/preference/PreferenceScreen;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method final d()V
    .locals 3

    invoke-virtual {p0}, Laof;->c()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Laof;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Laoj;

    invoke-direct {v2, v0}, Laoj;-><init>(Landroidx/preference/PreferenceGroup;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->Y(Lls;)V

    invoke-virtual {v0}, Landroidx/preference/Preference;->D()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lbw;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lbw;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f04052a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    if-nez p1, :cond_0

    const p1, 0x7f150217

    :cond_0
    invoke-virtual {p0}, Lbw;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance p1, Laoo;

    invoke-virtual {p0}, Lbw;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Laoo;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Laof;->a:Laoo;

    iput-object p0, p1, Laoo;->e:Laom;

    iget-object p1, p0, Lbw;->l:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    const-string v0, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lbw;->requireContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Laos;->h:[I

    const/4 v1, 0x0

    const v2, 0x7f04051f

    const/4 v3, 0x0

    invoke-virtual {p3, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    iget v0, p0, Laof;->af:I

    invoke-virtual {p3, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Laof;->af:I

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v4, -0x1

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/4 v5, 0x3

    invoke-virtual {p3, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lbw;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget p3, p0, Laof;->af:I

    invoke-virtual {p1, p3, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x102003f

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    instance-of v5, p3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_5

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lbw;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.type.automotive"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f0b02ba

    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const v5, 0x7f0e00c7

    invoke-virtual {p1, v5, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/support/v7/widget/RecyclerView;

    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lbw;->requireContext()Landroid/content/Context;

    invoke-direct {p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {v5, p1}, Landroid/support/v7/widget/RecyclerView;->aa(Lly;)V

    new-instance p1, Laoq;

    invoke-direct {p1, v5}, Laoq;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v5, p1}, Landroid/support/v7/widget/RecyclerView;->X(Lmq;)V

    :goto_0
    if-eqz v5, :cond_4

    iput-object v5, p0, Laof;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p0, Laof;->ae:Laob;

    invoke-virtual {v5, p1}, Landroid/support/v7/widget/RecyclerView;->av(Ler;)V

    iget-object p1, p0, Laof;->ae:Laob;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p1, Laob;->b:I

    goto :goto_1

    :cond_1
    iput v3, p1, Laob;->b:I

    :goto_1
    iput-object v1, p1, Laob;->a:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Laob;->d:Laof;

    iget-object p1, p1, Laof;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->H()V

    if-eq v2, v4, :cond_2

    iget-object p1, p0, Laof;->ae:Laob;

    iput v2, p1, Laob;->b:I

    iget-object p1, p1, Laob;->d:Laof;

    iget-object p1, p1, Laof;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->H()V

    :cond_2
    iget-object p1, p0, Laof;->ae:Laob;

    iput-boolean v0, p1, Laob;->c:Z

    iget-object p1, p0, Laof;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Laof;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    iget-object p1, p0, Laof;->ad:Landroid/os/Handler;

    iget-object p3, p0, Laof;->ag:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p2

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not create RecyclerView"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onDestroyView()V
    .locals 2

    iget-object v0, p0, Laof;->ad:Landroid/os/Handler;

    iget-object v1, p0, Laof;->ag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Laof;->ad:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Laof;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laof;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->Y(Lls;)V

    invoke-virtual {p0}, Laof;->c()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/Preference;->F()V

    :cond_0
    iput-object v1, p0, Laof;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-super {p0}, Lbw;->onDestroyView()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Laof;->c()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->A(Landroid/os/Bundle;)V

    const-string v0, "android:preferences"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lbw;->onStart()V

    iget-object v0, p0, Laof;->a:Laoo;

    iput-object p0, v0, Laoo;->c:Laon;

    iput-object p0, v0, Laoo;->d:Laol;

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Lbw;->onStop()V

    iget-object v0, p0, Laof;->a:Laoo;

    const/4 v1, 0x0

    iput-object v1, v0, Laoo;->c:Laon;

    iput-object v1, v0, Laoo;->d:Laol;

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p1, "android:preferences"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Laof;->c()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->z(Landroid/os/Bundle;)V

    :cond_0
    iget-boolean p1, p0, Laof;->c:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Laof;->d()V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Laof;->d:Z

    return-void
.end method

.method public final z(Landroidx/preference/Preference;)V
    .locals 6

    const/4 v0, 0x0

    move-object v2, p0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    instance-of v3, v2, Laoc;

    if-eqz v3, :cond_0

    move-object v1, v2

    check-cast v1, Laoc;

    invoke-interface {v1}, Laoc;->a()Z

    move-result v1

    :cond_0
    iget-object v2, v2, Lbw;->B:Lbw;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lbw;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Laoc;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lbw;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Laoc;

    invoke-interface {v1}, Laoc;->a()Z

    move-result v1

    :cond_2
    if-nez v1, :cond_8

    invoke-virtual {p0}, Lbw;->getActivity()Lbz;

    move-result-object v1

    instance-of v1, v1, Laoc;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lbw;->getActivity()Lbz;

    move-result-object v1

    check-cast v1, Laoc;

    invoke-interface {v1}, Laoc;->a()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_3
    invoke-virtual {p0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v1

    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v1, v2}, Lcq;->e(Ljava/lang/String;)Lbw;

    move-result-object v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    instance-of v1, p1, Landroidx/preference/EditTextPreference;

    const-string v3, "key"

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    iget-object p1, p1, Landroidx/preference/Preference;->r:Ljava/lang/String;

    new-instance v1, Lanj;

    invoke-direct {v1}, Lanj;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v4}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v5, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lbw;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    instance-of v1, p1, Landroidx/preference/ListPreference;

    if-eqz v1, :cond_6

    iget-object p1, p1, Landroidx/preference/Preference;->r:Ljava/lang/String;

    new-instance v1, Lann;

    invoke-direct {v1}, Lann;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v4}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v5, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lbw;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_6
    instance-of v1, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v1, :cond_7

    iget-object p1, p1, Landroidx/preference/Preference;->r:Ljava/lang/String;

    new-instance v1, Lanq;

    invoke-direct {v1}, Lanq;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v4}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v5, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lbw;->setArguments(Landroid/os/Bundle;)V

    :goto_1
    invoke-virtual {v1, p0, v0}, Lbw;->setTargetFragment(Lbw;I)V

    invoke-virtual {p0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Lbm;->c(Lcq;Ljava/lang/String;)V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot display dialog for an unknown Preference type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void
.end method
