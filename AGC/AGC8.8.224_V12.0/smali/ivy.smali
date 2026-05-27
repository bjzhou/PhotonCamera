.class public final Livy;
.super Lek;


# instance fields
.field final synthetic a:Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;


# direct methods
.method public constructor <init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;)V
    .locals 0

    iput-object p1, p0, Livy;->a:Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;

    invoke-direct {p0}, Lek;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/support/v7/widget/RecyclerView;)Landroid/widget/EdgeEffect;
    .locals 2

    new-instance v0, Liwb;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Livy;->a:Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;

    invoke-direct {v0, p1, v1}, Liwb;-><init>(Landroid/content/Context;Liwa;)V

    return-object v0
.end method
