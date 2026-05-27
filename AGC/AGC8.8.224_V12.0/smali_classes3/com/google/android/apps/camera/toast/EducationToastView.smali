.class public Lcom/google/android/apps/camera/toast/EducationToastView;
.super Lcom/google/android/apps/camera/toast/ToastView;


# static fields
.field public static final synthetic c:I


# instance fields
.field public a:Ljava/lang/Runnable;

.field public b:Ljava/lang/Runnable;

.field private o:Landroid/widget/PopupWindow;

.field private p:Liko;

.field private q:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/camera/toast/ToastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lhck;->a:Lhck;

    iput-object p1, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->a:Ljava/lang/Runnable;

    sget-object p1, Lhck;->b:Lhck;

    iput-object p1, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->b:Ljava/lang/Runnable;

    sget-object p1, Liko;->a:Liko;

    iput-object p1, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->p:Liko;

    return-void
.end method

.method public static a(Lhql;)Lcom/google/android/apps/camera/toast/EducationToastView;
    .locals 3

    iget-object v0, p0, Lhql;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0051

    invoke-static {v1, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0b0134

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/toast/EducationToastView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/toast/ToastView;->b(Lhql;)V

    return-object v0
.end method

.method private final i(Landroid/widget/ImageView;)V
    .locals 1

    sget-object v0, Liko;->a:Liko;

    iget-object v0, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->p:Liko;

    invoke-virtual {v0}, Liko;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f080272

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :pswitch_0
    const v0, 0x7f080273

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :pswitch_1
    const v0, 0x7f080274

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b(Lhql;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->q:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/toast/EducationToastView;->i(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->q:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0b0133

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/toast/EducationToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/toast/ToastView;->g(Lhql;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/toast/ToastView;->e()Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->o:Landroid/widget/PopupWindow;

    iget-object v0, p1, Lhql;->c:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->a:Ljava/lang/Runnable;

    iget-object p1, p1, Lhql;->d:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->o:Landroid/widget/PopupWindow;

    new-instance v1, Lclb;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, Lclb;-><init>(Lcom/google/android/apps/camera/toast/EducationToastView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final d(Liko;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->p:Liko;

    iget-object p1, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->q:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/toast/EducationToastView;->i(Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method protected final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/apps/camera/toast/ToastView;->onFinishInflate()V

    const v0, 0x7f0b0132

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/toast/EducationToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->q:Landroid/widget/ImageView;

    return-void
.end method
