.class public Lcom/google/android/apps/camera/toast/EducationToastView;
.super Lcom/google/android/apps/camera/toast/ToastView;
.source "PG"


# static fields
.field public static final synthetic c:I


# instance fields
.field public a:Ljava/lang/Runnable;

.field public b:Ljava/lang/Runnable;

.field private o:Landroid/widget/PopupWindow;

.field private p:Lnbh;

.field private q:Landroid/widget/ImageView;


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m(Landroid/widget/ImageView;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    const p0, 0x7f080306

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ne p0, v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    const p0, 0x7f080304

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    const/4 v0, 0x1

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

    :goto_5
    iget-object p0, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->p:Lnbh;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const p0, 0x7f080305

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lnbh;->ordinal()I

    move-result p0

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

    :goto_8
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-ne p0, v0, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->a:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    new-instance p1, Ljic;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/camera/toast/ToastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1, p2}, Ljic;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    const/16 p2, 0x9

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->b:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    const/16 p2, 0x8

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p1, p2}, Ljic;-><init>(I)V

    goto/32 :goto_6

    nop

    nop

    :goto_a
    iput-object p1, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->p:Lnbh;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p1, Lnbh;->a:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method


# virtual methods
.method public final a(Lmqj;)V
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    check-cast v0, Landroid/widget/Space;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const/16 v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_13

    nop

    nop

    :goto_7
    iput-object v0, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->o:Landroid/widget/PopupWindow;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/toast/EducationToastView;->19e596a3e324281407eb5c11093c0152m(Landroid/widget/ImageView;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/toast/ToastView;->f(Lmqj;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_b
    iput-object v0, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->a:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->q:Landroid/widget/ImageView;

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
    iget-object v0, p1, Lmqj;->c:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->q:Landroid/widget/ImageView;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    iget-object p1, p1, Lmqj;->d:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/toast/EducationToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/android/apps/camera/toast/ToastView;->d()Landroid/widget/PopupWindow;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    const v0, 0x7f0b018e

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_18
    const v0, 0x18

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

    nop

    nop

    :goto_19
    const v1, 0x9

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

    :goto_1a
    iput-object p1, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->b:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v1, Lgko;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x0

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

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x8

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1, p0, v2, v3}, Lgko;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :goto_c
    const/16 v2, 0x10

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x3

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

    :goto_e
    iget-object v0, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->o:Landroid/widget/PopupWindow;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Lnbh;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->p:Lnbh;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/toast/EducationToastView;->19e596a3e324281407eb5c11093c0152m(Landroid/widget/ImageView;)V

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->q:Landroid/widget/ImageView;

    nop

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

.method protected final onFinishInflate()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Lcom/google/android/apps/camera/toast/ToastView;->onFinishInflate()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    check-cast v0, Landroid/widget/ImageView;

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

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/toast/EducationToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->q:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x7f0b018d

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
