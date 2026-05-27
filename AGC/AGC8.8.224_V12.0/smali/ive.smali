.class final Live;
.super Landroid/util/IntProperty;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "alpha"

    invoke-direct {p0, v0}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;

    invoke-virtual {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->getAlpha()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;

    invoke-virtual {p1, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->setAlpha(I)V

    return-void
.end method
