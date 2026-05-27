.class public Lcom/android/settingslib/widget/TopIntroPreference;
.super Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0e0108

    iput p1, p0, Landroidx/preference/Preference;->A:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->af()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0e0108

    iput p1, p0, Landroidx/preference/Preference;->A:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->af()V

    return-void
.end method


# virtual methods
.method public final a(Laor;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->a(Laor;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Laor;->u:Z

    iput-boolean v0, p1, Laor;->v:Z

    return-void
.end method
