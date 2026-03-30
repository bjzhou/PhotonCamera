.class public final Loaw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lko;


# instance fields
.field final synthetic a:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Loaw;->a:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final h(Landroid/view/MotionEvent;)Z
    .locals 4

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput-boolean v2, p0, Loaw;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Loaw;->a:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3
    if-ne v0, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x4

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v1, p0, Loaw;->b:Z

    nop

    nop

    :goto_6
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->b:Lpic;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eq v0, p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_3
    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-boolean v1, p0, Loaw;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_14

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->callOnClick()Z

    :goto_12
    goto/32 :goto_3

    nop

    nop

    :goto_13
    move v0, v1

    nop

    :goto_14
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_16
    iget-object v0, p0, Loaw;->a:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Loaw;->a:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    :goto_19
    iget-boolean v3, p0, Loaw;->b:Z

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_23

    nop

    nop

    :goto_1c
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Lpic;->C()Z

    move-result v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1e
    iget-object v3, v3, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->a:Landroid/view/GestureDetector;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1f
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->isActivated()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_22

    nop

    :goto_22
    goto/32 :goto_26

    nop

    nop

    :goto_23
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_25
    return v1

    nop

    :goto_26
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v3, p0, Loaw;->a:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_29
    const/4 p1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final j(Landroid/view/MotionEvent;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method
