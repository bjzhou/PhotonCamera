.class final Lepl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final a:Lepm;

.field private final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lepm;Landroid/app/Activity;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput-object p1, p0, Lepl;->a:Lepm;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    new-instance p1, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lepl;->b:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lepl;->b:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lepl;->a:Lepm;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0, p1}, Lepm;->b(Landroid/os/IBinder;Landroid/app/Activity;)V

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p1, Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1}, Landroidx/wear/ambient/AmbientMode$AmbientCallback;->h(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_5

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

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

    nop

    nop
.end method
