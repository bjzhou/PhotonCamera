.class public Lcom/google/android/clockwork/common/wearable/wearmaterial/preference/WearListPreference;
.super Landroidx/preference/ListPreference;


# instance fields
.field private final F:Ljew;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-static {p1}, Ljcb;->g(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v2, Ljew;

    invoke-direct {v2, p0}, Ljew;-><init>(Landroidx/preference/Preference;)V

    iput-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/preference/WearListPreference;->F:Ljew;

    sget-object v2, Lixn;->a:[I

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-static {p1}, Ljcb;->h(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Laor;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->a(Laor;)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/preference/WearListPreference;->F:Ljew;

    invoke-virtual {v0, p1}, Ljew;->d(Laor;)V

    return-void
.end method
