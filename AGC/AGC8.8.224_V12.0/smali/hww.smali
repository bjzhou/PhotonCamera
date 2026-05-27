.class public final Lhww;
.super Ljava/lang/Object;

# interfaces
.implements Lbzo;


# instance fields
.field public final synthetic a:Lhwy;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lhwy;I)V
    .locals 0

    iput p2, p0, Lhww;->b:I

    iput-object p1, p0, Lhww;->a:Lhwy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final l(Lbsj;)V
    .locals 2

    iget p1, p0, Lhww;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lhww;->a:Lhwy;

    iget-object p1, p1, Lhwy;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a:Landroid/widget/ImageView;

    sget-object v0, Lhwx;->a:Lhwx;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lhww;->a:Lhwy;

    invoke-virtual {p1}, Lhwy;->c()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lhww;->a:Lhwy;

    iget-object p1, p1, Lhwy;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a:Landroid/widget/ImageView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lhww;->a:Lhwy;

    iget-object p1, p1, Lhwy;->b:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a:Landroid/widget/ImageView;

    new-instance v0, Lgdu;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lgdu;-><init>(Lhww;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lhww;->a:Lhwy;

    invoke-virtual {p1}, Lhwy;->c()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic m(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lhww;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lhww;->a:Lhwy;

    invoke-virtual {p1}, Lhwy;->a()V

    return-void

    :pswitch_0
    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lhww;->a:Lhwy;

    invoke-virtual {p1}, Lhwy;->a()V

    return-void

    :pswitch_1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lhww;->a:Lhwy;

    invoke-virtual {p1}, Lhwy;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
