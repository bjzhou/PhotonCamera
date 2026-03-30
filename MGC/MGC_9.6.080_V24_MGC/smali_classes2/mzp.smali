.class public final synthetic Lmzp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lmzp;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lmzp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final onTouchExplorationStateChanged(Z)V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p1, p0, Lmzp;->b:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_5
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->p()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v2, 0x3c9

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_8
    iget-object p0, p0, Lmzp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lmzp;->a:Ljava/lang/Object;

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

    :goto_a
    check-cast p0, Lhkm;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

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

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->n()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v2, p0, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_b

    nop

    nop
.end method
