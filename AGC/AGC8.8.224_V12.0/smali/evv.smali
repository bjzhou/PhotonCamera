.class public final synthetic Levv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ldmh;I)V
    .locals 0

    iput p2, p0, Levv;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levv;->b:Ljava/lang/Object;

    const-string p1, "camera.onscreen_logcat_filter"

    iput-object p1, p0, Levv;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Levz;Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;I)V
    .locals 0

    iput p3, p0, Levv;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levv;->b:Ljava/lang/Object;

    iput-object p2, p0, Levv;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfbz;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Levv;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levv;->b:Ljava/lang/Object;

    iput-object p2, p0, Levv;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhgc;Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;I)V
    .locals 0

    iput p3, p0, Levv;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levv;->b:Ljava/lang/Object;

    iput-object p2, p0, Levv;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    iget v0, p0, Levv;->c:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Levv;->b:Ljava/lang/Object;

    iget-object v2, p0, Levv;->a:Ljava/lang/Object;

    check-cast v0, Lhgc;

    iget-object v3, v0, Lhgc;->g:Lfbz;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    check-cast v2, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, p1, v2, p2}, Lfbz;->s(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lhgc;->g(Z)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget-object p1, v0, Lhgc;->j:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v2, Lfjd;->n:Lfjd;

    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lhgc;->h:Lmvq;

    invoke-virtual {p1}, Lmvq;->f()Lmvv;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lmyu;

    iget v2, v2, Lmyu;->c:I

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Levv;->b:Ljava/lang/Object;

    iget-object v2, p0, Levv;->a:Ljava/lang/Object;

    check-cast v0, Levz;

    iget-object v0, v0, Levz;->b:Lgue;

    iget-object v0, v0, Lgue;->l:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    check-cast v2, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p1, v2, p2}, Lfbz;->s(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :pswitch_1
    iget-object v0, p0, Levv;->b:Ljava/lang/Object;

    iget-object v2, p0, Levv;->a:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    check-cast v0, Ldmh;

    iget-object p1, v0, Ldmh;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v1

    :pswitch_2
    iget-object v0, p0, Levv;->b:Ljava/lang/Object;

    iget-object v2, p0, Levv;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v2, p2}, Lfbz;->s(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :goto_0
    if-ge p2, v2, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    iget-object v4, v0, Lhgc;->j:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lhgc;->f(Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lhgc;->j:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    goto/16 :goto_4

    :cond_1
    iget-object p1, v0, Lhgc;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v2, Lfjd;->n:Lfjd;

    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Lhgc;->h:Lmvq;

    invoke-virtual {p1}, Lmvq;->f()Lmvv;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lmyu;

    iget v2, v2, Lmyu;->c:I

    :goto_1
    if-ge p2, v2, :cond_4

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    iget-object v4, v0, Lhgc;->i:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lhgc;->f(Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, v0, Lhgc;->f:Lhgd;

    iget-object v2, v0, Lhgc;->l:Lmvv;

    invoke-interface {p1, v2}, Lhgd;->g(Ljava/util/List;)V

    iget-object p1, v0, Lhgc;->h:Lmvq;

    invoke-virtual {p1}, Lmvq;->f()Lmvv;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lmyu;

    iget v2, v2, Lmyu;->c:I

    :goto_2
    if-ge p2, v2, :cond_4

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    iget-object v4, v0, Lhgc;->c:Lgzi;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgzi;->m(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lhgc;->f(Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lhgc;->h:Lmvq;

    invoke-virtual {p1}, Lmvq;->f()Lmvv;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lmyu;

    iget v2, v2, Lmyu;->c:I

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    iget-object v5, v0, Lhgc;->j:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lhgc;->c:Lgzi;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgzi;->m(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4, p2}, Lhgc;->f(Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    invoke-virtual {v0}, Lhgc;->h()V

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
