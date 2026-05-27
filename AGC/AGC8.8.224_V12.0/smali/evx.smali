.class public final synthetic Levx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ldja;I[B[B)V
    .locals 0

    iput p2, p0, Levx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levx;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Levz;I)V
    .locals 0

    iput p2, p0, Levx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levx;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhgc;I)V
    .locals 0

    iput p2, p0, Levx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levx;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    iget v0, p0, Levx;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Levx;->a:Ljava/lang/Object;

    check-cast v0, Lhgc;

    invoke-virtual {v0}, Lhgc;->a()I

    move-result v3

    iget-object v4, v0, Lhgc;->e:Lgzn;

    sget-object v5, Lgzd;->T:Lgzr;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v4, v0, Lhgc;->d:Lgzm;

    sget-object v5, Lgzd;->P:Lgzr;

    invoke-interface {v4, v5}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x3

    if-le v3, v5, :cond_3

    iget-object v3, v0, Lhgc;->n:Landroid/widget/Toast;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Levx;->a:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, p2

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    check-cast v0, Levz;

    iget-object v0, v0, Levz;->b:Lgue;

    iget-object v0, v0, Lgue;->l:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v3, v4, v3

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-interface {v0, p1, v3, p2}, Lfbz;->s(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :pswitch_1
    iget-object p1, p0, Levx;->a:Ljava/lang/Object;

    check-cast p1, Levz;

    iget-object p1, p1, Levz;->b:Lgue;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p1, p1, Lgue;->e:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ljwb;->bn(Ljava/lang/Object;)V

    return v2

    :pswitch_2
    iget-object p1, p0, Levx;->a:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    move-object v0, p1

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Ldja;->f(Landroid/content/Context;)V

    :cond_0
    check-cast p1, Ldja;

    iget-object p1, p1, Ldja;->c:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lfbz;->h(Z)V

    return v2

    :pswitch_3
    iget-object v0, p0, Levx;->a:Ljava/lang/Object;

    check-cast v0, Levz;

    iget-object v3, v0, Levz;->b:Lgue;

    iget-object v3, v3, Lgue;->l:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v4, v0, Levz;->a:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, p1, v4, p2}, Lfbz;->s(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Levz;->b()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Levz;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v0, p2, v1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v0, p2, v2

    invoke-virtual {p1, p2, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    return v2

    :cond_2
    :goto_0
    iget-object v3, v0, Lhgc;->a:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    const v4, 0x7f120008

    invoke-static {v4, v5, v2}, Ljpw;->i(II[Ljava/lang/Object;)Ligf;

    move-result-object v2

    iget-object v4, v0, Lhgc;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-interface {v2, v4}, Ligf;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, v0, Lhgc;->n:Landroid/widget/Toast;

    iget-object v2, v0, Lhgc;->n:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move-object v2, p1

    check-cast v2, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    invoke-virtual {v0, v2, v1}, Lhgc;->f(Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    if-gtz v3, :cond_4

    invoke-virtual {v0, v1}, Lhgc;->g(Z)V

    goto :goto_1

    :cond_4
    goto :goto_1

    :cond_5
    invoke-virtual {v0, v2}, Lhgc;->g(Z)V

    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    iget-object v2, v0, Lhgc;->c:Lgzi;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgzi;->m(Ljava/lang/String;)Z

    invoke-virtual {v0}, Lhgc;->h()V

    iget-object v2, v0, Lhgc;->g:Lfbz;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lhgc;->c:Lgzi;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgzi;->m(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v2, v3, p1, p2}, Lfbz;->s(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
