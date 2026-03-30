.class public final Lhbq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final a:Landroid/net/Uri;


# instance fields
.field public final b:Lmse;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Lcom/google/android/apps/camera/util/ui/GcaTextView;

.field public i:Landroid/view/View;

.field public j:Lcom/google/android/apps/camera/util/ui/GcaTextView;

.field public k:Landroid/view/ViewGroup;

.field public l:Landroid/view/ViewGroup;

.field public m:Z

.field public n:I

.field public o:I

.field public p:Lgzs;

.field public final q:Lnar;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lhbq;->a:Landroid/net/Uri;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    const-string v0, "https://www.gstatic.com/aiux/gca/useredu/p11/nightsight_02.mp4"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lmse;Landroid/content/Context;Lnar;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    goto/32 :goto_3

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
    iput-object p4, p0, Lhbq;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput-object p2, p0, Lhbq;->c:Landroid/content/Context;

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

    :goto_5
    iput-object p3, p0, Lhbq;->q:Lnar;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    iput-object p5, p0, Lhbq;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lhbq;->b:Lmse;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean v0, p0, Lhbq;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    iput-boolean v0, p0, Lhbq;->r:Z

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/google/android/apps/camera/util/ui/GcaTextView;Landroid/view/View;Lcom/google/android/apps/camera/util/ui/GcaTextView;)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lhbq;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x7f0803a2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p4, p0}, Lcom/google/android/apps/camera/util/ui/GcaTextView;->setTextColor(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p0, Lhbq;->c:Landroid/content/Context;

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

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    iget p1, p0, Lhbq;->o:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_f
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget p0, p0, Lhbq;->n:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    :goto_13
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/util/ui/GcaTextView;->setTextColor(I)V

    goto/32 :goto_9

    nop

    nop

    :goto_15
    const p2, 0x7f0803a1

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
.end method

.method public final b()Z
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    iget-boolean p0, p0, Lhbq;->m:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lhbq;->r:Z

    nop

    nop

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

    :goto_1
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1
    iget-object v0, p0, Lhbq;->j:Lcom/google/android/apps/camera/util/ui/GcaTextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    iget-object p1, p0, Lhbq;->l:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    :goto_9
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean p1, p0, Lhbq;->r:Z

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    if-nez p1, :cond_0

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    :goto_c
    iget-object v0, p0, Lhbq;->k:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    invoke-static {p1, v0}, Lnzk;->bd(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1, v0, v1, v2}, Lhbq;->a(Landroid/view/View;Lcom/google/android/apps/camera/util/ui/GcaTextView;Landroid/view/View;Lcom/google/android/apps/camera/util/ui/GcaTextView;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_12
    iget-boolean p1, p0, Lhbq;->r:Z

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lhbq;->b()Z

    move-result p1

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

    :goto_14
    iget-object p1, p0, Lhbq;->i:Landroid/view/View;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    :goto_16
    const v1, 0x19

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Lhbq;->g:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_18
    iput-boolean p1, p0, Lhbq;->m:Z

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v2, p0, Lhbq;->h:Lcom/google/android/apps/camera/util/ui/GcaTextView;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method
