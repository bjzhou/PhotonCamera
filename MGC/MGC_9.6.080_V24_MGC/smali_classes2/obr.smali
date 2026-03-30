.class public final Lobr;
.super Landroid/database/ContentObserver;
.source "PG"


# instance fields
.field final synthetic a:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroidx/wear/ambient/AmbientMode$AmbientController;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lobr;->a:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lobr;->a:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    check-cast p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->a()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
