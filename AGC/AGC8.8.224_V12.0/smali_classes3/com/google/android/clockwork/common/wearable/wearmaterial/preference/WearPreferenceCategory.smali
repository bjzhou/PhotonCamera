.class public Lcom/google/android/clockwork/common/wearable/wearmaterial/preference/WearPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;


# instance fields
.field private final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    const v0, 0x7f07085a

    invoke-static {p1, v0}, Lacj;->a(Landroid/content/res/Resources;I)F

    move-result p1

    int-to-float p2, p2

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/preference/WearPreferenceCategory;->e:I

    return-void
.end method


# virtual methods
.method public final a(Laor;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/PreferenceCategory;->a(Laor;)V

    iget-object v0, p0, Landroidx/preference/Preference;->q:Ljava/lang/CharSequence;

    iget-object p1, p1, Laor;->a:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Llz;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Llz;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Landroidx/preference/Preference;->x:Z

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    const v1, 0x7fffffff

    goto :goto_0

    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/preference/WearPreferenceCategory;->e:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/preference/WearPreferenceCategory;->e:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method
