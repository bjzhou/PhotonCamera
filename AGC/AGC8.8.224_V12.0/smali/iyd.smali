.class public final Liyd;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroidx/wear/ambient/AmbientMode$AmbientController;[B[B[B[B[B)V
    .locals 0

    iput-object p2, p0, Liyd;->a:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Liyd;->a:Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object p1, p1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;

    invoke-virtual {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->a()V

    return-void
.end method
