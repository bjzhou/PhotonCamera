.class public final Lixp;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/res/ColorStateList;

.field public b:Landroid/content/res/ColorStateList;

.field final synthetic c:Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;


# direct methods
.method public constructor <init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;)V
    .locals 0

    iput-object p1, p0, Lixp;->c:Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lixp;->a:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lixp;->c:Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;

    invoke-virtual {v1, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setProgressColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v0, p0, Lixp;->c:Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;

    iget-object v1, p0, Lixp;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setTrackColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
