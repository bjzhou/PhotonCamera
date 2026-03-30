.class public Lcom/google/android/apps/camera/toast/ToastView;
.super Landroid/widget/FrameLayout;
.source "PG"


# static fields
.field public static final d:Lj$/time/Duration;

.field public static final e:Lj$/time/Duration;

.field public static final f:Lsdb;


# instance fields
.field private a:Landroid/view/View;

.field public g:F

.field public h:J

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Landroid/widget/PopupWindow;

.field public n:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    :goto_1
    goto/32 :goto_4

    nop

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

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    const-wide/16 v0, 0x12c

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    sput-object v0, Lcom/google/android/apps/camera/toast/ToastView;->f:Lsdb;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v0, Lcom/google/android/apps/camera/toast/ToastView;->e:Lj$/time/Duration;

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

    nop

    :goto_a
    const-string v0, "com.google.android.apps.camera.toast.ToastView"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    sput-object v2, Lcom/google/android/apps/camera/toast/ToastView;->d:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Ljic;

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

    :goto_1
    invoke-direct {p1, p2}, Ljic;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    new-instance p1, Ljic;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput-object p1, p0, Lcom/google/android/apps/camera/toast/ToastView;->i:Ljava/lang/Runnable;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lcom/google/android/apps/camera/toast/ToastView;->k:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1, p2}, Ljic;-><init>(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 p2, 0xc

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    invoke-direct {p1, p2}, Ljic;-><init>(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lcom/google/android/apps/camera/toast/ToastView;->j:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 p2, 0xe

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    invoke-direct {p1, p2}, Ljic;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/16 p2, 0xd

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lcom/google/android/apps/camera/toast/ToastView;->l:Ljava/lang/Runnable;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p1, Ljic;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    new-instance p1, Ljic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    const/16 p2, 0xf

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method


# virtual methods
.method public a(Lmqj;)V
    .locals 4

    goto/32 :goto_25

    nop

    nop

    :goto_0
    const v1, 0x13

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/toast/ToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3
    int-to-float p1, p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x7f0b04b3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/toast/ToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    const v0, 0x7f0b04b2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p1, Lmqj;->d:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lcom/google/android/apps/camera/toast/ToastView;->j:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_36

    nop

    nop

    :goto_d
    iput-object p1, p0, Lcom/google/android/apps/camera/toast/ToastView;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lcom/google/android/apps/camera/toast/ToastView;->k:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-wide v0, p0, Lcom/google/android/apps/camera/toast/ToastView;->h:J

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/toast/ToastView;->f(Lmqj;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/apps/camera/toast/ToastView;->d()Landroid/widget/PopupWindow;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v1, 0x13

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_17
    iget-object p1, p1, Lmqj;->c:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_18
    iput-object p1, p0, Lcom/google/android/apps/camera/toast/ToastView;->l:Ljava/lang/Runnable;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_19
    check-cast v0, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v2, Lcom/google/android/apps/camera/toast/ToastView;->d:Lj$/time/Duration;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1c
    iput p1, p0, Lcom/google/android/apps/camera/toast/ToastView;->g:F

    nop

    nop

    :goto_1d
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1e
    sub-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/2addr p1, p1

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

    nop

    :goto_20
    iget-object v0, p1, Lmqj;->b:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_21
    if-lez v0, :cond_2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_34

    nop

    :goto_22
    sub-long/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_23
    const p1, 0x7f0b04b1

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_24
    iput-object v0, p0, Lcom/google/android/apps/camera/toast/ToastView;->i:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_25
    const v0, 0xc

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Lmqj;->b()I

    move-result v0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_28
    sget-object v2, Lcom/google/android/apps/camera/toast/ToastView;->e:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_29
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/toast/ToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v1, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v2}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2e
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_30
    new-instance v0, Lmom;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {v0, p0, v1}, Lmom;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_24

    nop

    nop

    :goto_32
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/toast/ToastView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_33
    int-to-long v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_10

    nop

    :goto_35
    goto/32 :goto_4

    nop

    nop

    :goto_36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_37
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v2}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop
.end method

.method public b()V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xa

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v2, 0x14

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-direct {v1, p0, v2}, Lkjw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v1, Lkjw;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/android/apps/camera/toast/ToastView;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    const v1, 0xd

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public c(Lnbh;)V
    .locals 0

    goto/32 :goto_0

    nop

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

    nop
.end method

.method public final d()Landroid/widget/PopupWindow;
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v1, p0, Lcom/google/android/apps/camera/toast/ToastView;->m:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_5
    new-instance v0, Landroid/view/View;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    const v0, 0x8

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/toast/ToastView;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    goto/32 :goto_3

    nop

    nop

    :goto_c
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    new-instance v1, Landroid/widget/PopupWindow;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lcom/google/android/apps/camera/toast/ToastView;->m:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lcom/google/android/apps/camera/toast/ToastView;->m:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/toast/ToastView;->i:Ljava/lang/Runnable;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/toast/ToastView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

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

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/toast/ToastView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_4
    goto/32 :goto_b

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/android/apps/camera/toast/ToastView;->m:Landroid/widget/PopupWindow;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/toast/ToastView;->removeAllViews()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/toast/ToastView;->setAlpha(F)V

    goto/32 :goto_6

    nop

    nop

    :goto_9
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Lmqj;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p1, Lmqj;->a:Landroid/view/ViewGroup;

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

    :goto_1
    iput-object p1, p0, Lcom/google/android/apps/camera/toast/ToastView;->n:Landroid/view/View;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final g()V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v1, Lmom;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v1, p0, v2}, Lmom;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    const/high16 v1, 0x3f800000    # 1.0f

    nop

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

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_c
    const/16 v2, 0x12

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

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/toast/ToastView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    iget p0, p0, Lcom/google/android/apps/camera/toast/ToastView;->g:F

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    sget-object v1, Lcom/google/android/apps/camera/toast/ToastView;->d:Lj$/time/Duration;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    neg-float p0, p0

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

    :goto_16
    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x1c

    nop

    goto/32 :goto_a

    nop

    nop
.end method
