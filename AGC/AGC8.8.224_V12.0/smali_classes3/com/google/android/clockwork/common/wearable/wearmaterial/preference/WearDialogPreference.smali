.class public Lcom/google/android/clockwork/common/wearable/wearmaterial/preference/WearDialogPreference;
.super Landroidx/preference/DialogPreference;


# instance fields
.field private final g:Ljew;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-static {p1}, Ljcb;->g(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v2, Ljew;

    invoke-direct {v2, p0}, Ljew;-><init>(Landroidx/preference/Preference;)V

    iput-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/preference/WearDialogPreference;->g:Ljew;

    sget-object v2, Lixn;->a:[I

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Ljcb;->h(Landroid/content/res/TypedArray;)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v2, Lixn;->b:[I

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Laor;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/DialogPreference;->a(Laor;)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/preference/WearDialogPreference;->g:Ljew;

    invoke-virtual {v0, p1}, Ljew;->d(Laor;)V

    return-void
.end method
