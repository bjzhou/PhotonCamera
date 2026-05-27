.class public final Ldmh;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final allPreferences:Ljava/lang/Object;

.field public final b:Landroid/content/SharedPreferences;

.field public c:Landroid/preference/PreferenceScreen;

.field public final d:Ljava/util/List;

.field private final e:Ldhi;

.field public final preferenceScreen:Ljava/lang/Object;

.field public final sharedPreferences:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldhi;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldmh;->d:Ljava/util/List;

    iput-object v0, p0, Ldmh;->allPreferences:Ljava/lang/Object;

    new-instance v0, Lqi;

    const v1, 0x7f1503e6

    invoke-direct {v0, p1, v1}, Lqi;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Ldmh;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ldmh;->b:Landroid/content/SharedPreferences;

    iput-object p1, p0, Ldmh;->sharedPreferences:Ljava/lang/Object;

    iput-object p2, p0, Ldmh;->e:Ldhi;

    return-void
.end method


# virtual methods
.method public final a(Landroid/preference/PreferenceScreen;)V
    .locals 9

    iput-object p1, p0, Ldmh;->c:Landroid/preference/PreferenceScreen;

    iput-object p1, p0, Ldmh;->preferenceScreen:Ljava/lang/Object;

    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Ldmh;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v1, "Reset to default values"

    invoke-static {p0, v1}, Lcom/Developer;->CountDevSettPreferences(Ldmh;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Ldmg;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ldmg;-><init>(Ldmh;I)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Ldmh;->c:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Ldmh;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v1, "Primes Log"

    const-string v1, "Save Log"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Ldmg;

    new-instance v1, Lcom/Developer$LogListener;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/Developer$LogListener;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Ldmh;->c:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Ldmh;->b:Landroid/content/SharedPreferences;

    const-string v1, "dev_setting_filter_key"

    const-string v4, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ldmm;

    iget-object v6, p0, Ldmh;->c:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Ldmm;-><init>(Landroid/content/Context;)V

    iput-object v0, v5, Ldmm;->c:Ljava/lang/CharSequence;

    iget-object v6, v5, Ldmm;->a:Landroid/widget/SearchView;

    if-eqz v6, :cond_0

    invoke-virtual {v6, v0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    new-instance v0, Ldmk;

    invoke-direct {v0, p0, v2}, Ldmk;-><init>(Ldmh;I)V

    iput-object v0, v5, Ldmm;->b:Landroid/widget/SearchView$OnQueryTextListener;

    iget-object v0, p0, Ldmh;->c:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Ldmh;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Landroid/preference/EditTextPreference;

    iget-object v5, p0, Ldmh;->c:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    const-string v5, "camera.onscreen_logcat_filter"

    invoke-virtual {v0, v5}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    const v6, 0x7f0e00d2

    invoke-virtual {v0, v6}, Landroid/preference/EditTextPreference;->setLayoutResource(I)V

    iget-object v6, p0, Ldmh;->d:Ljava/util/List;

    new-instance v7, Ldne;

    invoke-direct {v7, v0}, Ldne;-><init>(Landroid/preference/Preference;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/Developer;->AddDevSettPref(Ldmh;)V

    iget-object v6, p0, Ldmh;->b:Landroid/content/SharedPreferences;

    invoke-interface {v6, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "Gca"

    if-eqz v6, :cond_1

    iget-object v6, p0, Ldmh;->b:Landroid/content/SharedPreferences;

    invoke-interface {v6, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    :goto_0
    invoke-virtual {v0, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v6, Levv;

    invoke-direct {v6, p0, v2}, Levv;-><init>(Ldmh;I)V

    invoke-virtual {v0, v6}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v0, Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Ldmh;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Ldmh;->e:Ldhi;

    sget-object v6, Ldho;->a:Ldhk;

    invoke-interface {v2}, Ldhi;->c()V

    const v2, 0x7f0e00bc

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setLayoutResource(I)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Ldmh;->d:Ljava/util/List;

    sget-object v2, Lamx;->d:Lamx;

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Ldmh;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(,|\\s)+"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Ldmh;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldne;

    array-length v4, p1

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_2

    aget-object v7, p1, v6

    iget-object v8, v2, Ldne;->a:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/Developer;->filter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v2, v2, Ldne;->b:Ljava/lang/Object;

    check-cast v2, Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Ldmh;->c:Landroid/preference/PreferenceScreen;

    sget-object v0, Ldho;->aR:Ldhj;

    iget-object v0, v0, Ldhj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iget-object v0, p0, Ldmh;->c:Landroid/preference/PreferenceScreen;

    sget-object v1, Ldho;->aQ:Ldhj;

    iget-object v1, v1, Ldhj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    sget-object p1, Ldho;->aR:Ldhj;

    iget-object p1, p1, Ldhj;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Ldmh;->c:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    sget-object v0, Ldho;->aQ:Ldhj;

    iget-object v0, v0, Ldhj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ldmh;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dev_setting_filter_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Ldmh;->c:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object p1, p0, Ldmh;->c:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Ldmh;->a(Landroid/preference/PreferenceScreen;)V

    return-void
.end method
