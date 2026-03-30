.class public final Lrfw;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Z

.field public final synthetic c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lrfw;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x19

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p1, Lqxb;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Lrfw;->d:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p1, p0, v0, v1}, Lqxb;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lrfw;->b:Z

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    if-eqz p1, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean p1, p0, Lrfw;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iget-object v0, p0, Lrfw;->d:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    iget-object p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Ljava/lang/ref/WeakReference;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    goto :goto_1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Lrfw;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lrfw;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    check-cast p1, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    iput p1, p0, Lrfw;->a:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method
