.class public Lcom/google/android/clockwork/common/wearable/wearmaterial/preference/WearPreference;
.super Landroidx/preference/Preference;


# instance fields
.field private final a:Ljew;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljew;

    invoke-direct {p1, p0}, Ljew;-><init>(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/preference/WearPreference;->a:Ljew;

    return-void
.end method


# virtual methods
.method public final a(Laor;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->a(Laor;)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/preference/WearPreference;->a:Ljew;

    invoke-virtual {v0, p1}, Ljew;->d(Laor;)V

    return-void
.end method
