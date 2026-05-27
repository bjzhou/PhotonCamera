.class public final Lcom/Developer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/Developer$OnChangeListener;,
        Lcom/Developer$LogListener;
    }
.end annotation


# static fields
.field public static gcaConfig:Ldit;

.field public static layout:I

.field private static switchHidden:I

.field public static ui_mode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddDevSettPref(Ldmh;)V
    .locals 3

    iget-object v0, p0, Ldmh;->preferenceScreen:Ljava/lang/Object;

    check-cast v0, Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Ldmh;->sharedPreferences:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    iget-object v2, p0, Ldmh;->allPreferences:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {p0, v0, v1, v2}, Lcom/Developer;->GetDevSettPref(Ldmh;Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;)V

    return-void
.end method

.method public static CountDevSettPreferences(Ldmh;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Lcom/Developer;->gcaConfig:Ldit;

    invoke-virtual {p1}, Ldit;->getSettingKeys()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " options)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetDevSettPref(Ldmh;Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;)V
    .locals 8

    const-string v0, "pref_dev_switch_hidden"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/Developer;->switchHidden:I

    invoke-static {p0, p1, p2, v0, v1}, Lcom/Developer;->NewSwitchPref(Ldmh;Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/lang/String;I)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    sget-object p0, Lcom/Developer;->gcaConfig:Ldit;

    invoke-virtual {p0}, Ldit;->getSettingKeys()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ldhj;

    iget-object v5, v7, Ldhj;->a:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Lcom/Developer;->GetSpecificPreference(Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static GetEditTextPrefFloat(Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 2

    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p3, p0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    :cond_0
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    const-string v1, "Input float type value"

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    const/16 v1, 0x3002

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setInputType(I)V

    sget p0, Lcom/agc/Res$layout;->preference_with_margin:I

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setLayoutResource(I)V

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/Developer;->preventEmptySummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "auto"

    :goto_0
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/Developer$OnChangeListener;

    const/4 p4, 0x3

    invoke-direct {p0, p1, p3, p4}, Lcom/Developer$OnChangeListener;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {p3, v0}, Lcom/Developer;->namedPreference(Ljava/lang/String;Landroid/preference/Preference;)Ldne;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static GetEditTextPrefInt(Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p3, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :cond_0
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    const-string v1, "Input Integer type value"

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    const/16 v1, 0x1002

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setInputType(I)V

    sget p0, Lcom/agc/Res$layout;->preference_with_margin:I

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setLayoutResource(I)V

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/Developer;->preventEmptySummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "auto"

    :goto_0
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/Developer$OnChangeListener;

    const/4 p4, 0x4

    invoke-direct {p0, p1, p3, p4}, Lcom/Developer$OnChangeListener;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {p3, v0}, Lcom/Developer;->namedPreference(Ljava/lang/String;Landroid/preference/Preference;)Ldne;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static GetEditTextPrefLong(Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3

    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v1, 0x0

    invoke-interface {p1, p3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    :cond_0
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    const-string v1, "Input long type value"

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    const/16 v1, 0x3002

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setInputType(I)V

    sget p0, Lcom/agc/Res$layout;->preference_with_margin:I

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setLayoutResource(I)V

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/Developer;->preventEmptySummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "auto"

    :goto_0
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/Developer$OnChangeListener;

    const/4 p4, 0x6

    invoke-direct {p0, p1, p3, p4}, Lcom/Developer$OnChangeListener;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {p3, v0}, Lcom/Developer;->namedPreference(Ljava/lang/String;Landroid/preference/Preference;)Ldne;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static GetEditTextString(Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p3, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_0
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    const-string v1, "Input string"

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setInputType(I)V

    sget p0, Lcom/agc/Res$layout;->preference_with_margin:I

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setLayoutResource(I)V

    if-eqz p4, :cond_1

    invoke-virtual {v0, p4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/Developer;->preventEmptySummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "auto"

    :goto_0
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/Developer$OnChangeListener;

    const/4 p4, 0x5

    invoke-direct {p0, p1, p3, p4}, Lcom/Developer$OnChangeListener;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {p3, v0}, Lcom/Developer;->namedPreference(Ljava/lang/String;Landroid/preference/Preference;)Ldne;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static GetListPrefInt(Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;)V
    .locals 6

    new-instance v0, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-interface {p5}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/CharSequence;

    invoke-interface {p5}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    move v2, v3

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p6}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    aput-object v4, p0, v2

    :cond_1
    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {p1, p3, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    :cond_3
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string p0, "%s"

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    sget p0, Lcom/agc/Res$layout;->preference_with_margin:I

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setLayoutResource(I)V

    new-instance p0, Lcom/Developer$OnChangeListener;

    const/4 p4, 0x7

    invoke-direct {p0, p1, p3, p4}, Lcom/Developer$OnChangeListener;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {p3, v0}, Lcom/Developer;->namedPreference(Ljava/lang/String;Landroid/preference/Preference;)Ldne;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static GetLogOfPreferences(Ldhj;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ldhj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldhj;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ldhj;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Ldhj;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static GetManagedSwitchPref(Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    sget p0, Lcom/agc/Res$layout;->preference_with_margin:I

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setLayoutResource(I)V

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p3, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    :cond_0
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/Developer$OnChangeListener;

    const/4 v1, 0x2

    invoke-direct {p0, p1, p3, v1}, Lcom/Developer$OnChangeListener;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    sget p0, Lcom/Developer;->switchHidden:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    if-ne p0, v1, :cond_3

    :cond_1
    if-eqz p4, :cond_2

    if-eq p0, p1, :cond_3

    :cond_2
    if-nez p4, :cond_4

    if-ne p0, v1, :cond_4

    :cond_3
    invoke-static {p3, v0}, Lcom/Developer;->namedPreference(Ljava/lang/String;Landroid/preference/Preference;)Ldne;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public static GetSpecificPreference(Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    sget v0, Lcom/Developer;->switchHidden:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    instance-of v2, p4, Ljava/lang/Boolean;

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    instance-of v0, p4, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    check-cast p5, Ldhk;

    iget-object v0, p5, Ldhk;->optionSet:Lmwn;

    iget-object v7, p5, Ldhk;->c:Lmwn;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lmwn;->size()I

    move-result p5

    if-gt p5, v1, :cond_3

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    move-object v8, v7

    goto :goto_0

    :cond_4
    move-object v8, v0

    :goto_0
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v8}, Lcom/Developer;->GetListPrefInt(Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;)V

    goto :goto_3

    :cond_5
    :goto_1
    check-cast p3, Ljava/lang/String;

    check-cast p4, Ljava/lang/Integer;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/Developer;->GetEditTextPrefInt(Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    :cond_6
    instance-of p5, p4, Ljava/lang/Float;

    if-eqz p5, :cond_7

    check-cast p3, Ljava/lang/String;

    check-cast p4, Ljava/lang/Float;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/Developer;->GetEditTextPrefFloat(Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_3

    :cond_7
    instance-of p5, p4, Ljava/lang/String;

    if-eqz p5, :cond_8

    goto :goto_2

    :cond_8
    instance-of p5, p4, Ljava/lang/Boolean;

    if-eqz p5, :cond_a

    sget-object p5, Lcom/Globals;->GcamVersion:Ljava/lang/String;

    const-string v0, "8.4"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    check-cast p3, Ljava/lang/String;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p5, :cond_9

    invoke-static {p0, p1, p2, p3, p4}, Lcom/Developer;->GetSwitchPref(Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_9
    invoke-static {p0, p1, p2, p3, p4}, Lcom/Developer;->GetManagedSwitchPref(Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_a
    instance-of p5, p4, Ljava/lang/Character;

    if-eqz p5, :cond_b

    :goto_2
    check-cast p3, Ljava/lang/String;

    check-cast p4, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/Developer;->GetEditTextString(Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    instance-of p5, p4, Ljava/lang/Long;

    if-eqz p5, :cond_c

    check-cast p3, Ljava/lang/String;

    check-cast p4, Ljava/lang/Long;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/Developer;->GetEditTextPrefLong(Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_c
    :goto_3
    return-void
.end method

.method public static GetSwitchPref(Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    sget p0, Lcom/agc/Res$layout;->preference_with_margin:I

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setLayoutResource(I)V

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p3, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    :cond_0
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/Developer$OnChangeListener;

    const/4 v1, 0x2

    invoke-direct {p0, p1, p3, v1}, Lcom/Developer$OnChangeListener;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    sget p0, Lcom/Developer;->switchHidden:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    if-ne p0, v1, :cond_3

    :cond_1
    if-eqz p4, :cond_2

    if-eq p0, p1, :cond_3

    :cond_2
    if-nez p4, :cond_4

    if-ne p0, v1, :cond_4

    :cond_3
    invoke-static {p3, v0}, Lcom/Developer;->namedPreference(Ljava/lang/String;Landroid/preference/Preference;)Ldne;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public static NewSwitchPref(Ldmh;Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/lang/String;I)Landroid/preference/Preference;
    .locals 2

    new-instance v0, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const-string p1, "pref_dev_filter"

    invoke-static {p1}, Lcom/agc/Res;->getStringID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    invoke-static {p1}, Lcom/agc/Res;->getStringID(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    sget p1, Lcom/agc/Res$layout;->preference_with_margin:I

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setLayoutResource(I)V

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    const-string p1, "%s"

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOrder(I)V

    const-string p1, "pref_dev_filter_entries"

    invoke-static {p1}, Lcom/agc/Res;->getArrayID(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEntries(I)V

    const-string p1, "pref_dev_filter_entryvalues"

    invoke-static {p1}, Lcom/agc/Res;->getArrayID(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    new-instance p1, Lcom/Developer$OnChangeListener;

    const/4 p4, -0x1

    invoke-direct {p1, p2, p3, p4}, Lcom/Developer$OnChangeListener;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object p0, p1, Lcom/Developer$OnChangeListener;->controller:Ldmh;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-object v0
.end method

.method public static synthetic access$000()I
    .locals 1

    sget v0, Lcom/Developer;->switchHidden:I

    return v0
.end method

.method public static synthetic access$002(I)I
    .locals 0

    sput p0, Lcom/Developer;->switchHidden:I

    return p0
.end method

.method public static filter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/Developer;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p2, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    const-string v2, ""

    if-eqz v0, :cond_2

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_4

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_5
    return-object p2
.end method

.method private static getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/Developer;->gcaConfig:Ldit;

    invoke-virtual {v0}, Ldit;->getSettingKeys()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldhj;

    iget-object v2, v2, Ldhj;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/wear/ambient/AmbientDelegate;

    iget-object p0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$logAllConfigurations$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p0, Ldhj;

    iget-object p0, p0, Ldhj;->a:Ljava/lang/String;

    check-cast p1, Ldhj;

    iget-object p1, p1, Ldhj;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static logAllConfigurations(Ldhi;)V
    .locals 0

    check-cast p0, Ldit;

    invoke-static {p0}, Lcom/Developer;->logAllConfigurations(Ldit;)V

    return-void
.end method

.method public static logAllConfigurations(Ldit;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/TreeMap;

    new-instance v2, Lcom/Developer$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/Developer$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ldit;->getSettingKeys()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/wear/ambient/AmbientDelegate;

    iget-object v2, v2, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhj;

    iget-object v1, v1, Ldhj;->a:Ljava/lang/String;

    invoke-static {}, Lcom/Utils/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/Developer;->getValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const-string v2, "null"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_DevSettings_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/agc/LensSettings;->getPixelDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lagc/Agc;->logToFile(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "I"

    const-string v0, "The dev log has been written to the _DevSettings file"

    invoke-static {p0, v0}, Lcom/agc/Toast;->show(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static namedPreference(Ljava/lang/String;Landroid/preference/Preference;)Ldne;
    .locals 2

    sget-object v0, Lcom/Globals;->GcamVersion:Ljava/lang/String;

    const-string v1, "9.4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ldne;

    invoke-direct {v0, p1, p0}, Ldne;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Ldne;

    invoke-direct {v0, p0, p1}, Ldne;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static preventEmptySummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "auto"

    :cond_0
    return-object p0
.end method
